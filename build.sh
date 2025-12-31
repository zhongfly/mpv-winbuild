#!/bin/bash
set -x

main() {
    gitdir=$(pwd)
    clang_root=$(pwd)/clang_root
    buildroot=$(pwd)
    srcdir=$(pwd)/src_packages
    local target=$1
    compiler=$2
    simple_package=$3

    prepare
    if [ "$target" == "32" ]; then
        package "32" 
    elif [ "$target" == "64" ]; then
        package "64"
    elif [ "$target" == "64-v3" ]; then
        package "64-v3"
    elif [ "$target" == "aarch64" ]; then
        package "aarch64"
    elif [ "$target" == "all-64" ]; then
        package "64"
        package "64-v3"
        package "aarch64"
    else [ "$target" == "all" ];
        package "32"
        package "64"
        package "64-v3"
        package "aarch64"
    fi
    rm -rf ./release/mpv-packaging-master
}

package() {
    local bit=$1
    if [ $bit == "32" ]; then
        local arch="i686"
    elif [ $bit == "64" ]; then
        local arch="x86_64"
    elif [ $bit == "64-v3" ]; then
        local arch="x86_64"
        local gcc_arch="-DGCC_ARCH=x86-64-v3"
        local x86_64_level="-v3"
    elif [ $bit == "aarch64" ]; then
        local arch="aarch64"
    fi

    build $bit $arch $gcc_arch
    zip $bit $arch $x86_64_level
    sudo rm -rf $buildroot/build$bit/mpv-*
    sudo chmod -R a+rwx $buildroot/build$bit
}

build() {
    local bit=$1
    local arch=$2
    local gcc_arch=$3
    
    if [ "$compiler" == "clang" ]; then
        clang_option=(-DCMAKE_INSTALL_PREFIX=$clang_root -DMINGW_INSTALL_PREFIX=$buildroot/build$bit/install/$arch-w64-mingw32 -DCLANG_PACKAGES_LTO=ON)
    fi
    cmake -Wno-dev --fresh -DTARGET_ARCH=$arch-w64-mingw32 $gcc_arch -DCOMPILER_TOOLCHAIN=$compiler "${clang_option[@]}" $extra_option -DENABLE_CCACHE=ON -DSINGLE_SOURCE_LOCATION=$srcdir -DRUSTUP_LOCATION=$buildroot/install_rustup -G Ninja -H$gitdir -B$buildroot/build$bit

    ninja -C $buildroot/build$bit download || true

    if [ "$compiler" == "gcc" ] && [ ! -f "$buildroot/build$bit/install/bin/cross-gcc" ]; then
        ninja -C $buildroot/build$bit gcc && rm -rf $buildroot/build$bit/toolchain
    elif [ "$compiler" == "clang" ] && [ ! "$(ls -A $clang_root/bin/clang)" ]; then
        ninja -C $buildroot/build$bit llvm && ninja -C $buildroot/build$bit llvm-clang
    fi

    if [[ ! "$(ls -A $buildroot/install_rustup/.cargo/bin)" ]]; then
        ninja -C $buildroot/build$bit rustup-fullclean
        ninja -C $buildroot/build$bit rustup
    fi
    ninja -C $buildroot/build$bit update
    ninja -C $buildroot/build$bit mpv-fullclean
    
    ninja -C $buildroot/build$bit mpv

    if [ -n "$(find $buildroot/build$bit -maxdepth 1 -type d -name "mpv*$arch*" -print -quit)" ] ; then
        echo "Successfully compiled $bit-bit. Continue"
    else
        echo "Failed compiled $bit-bit. Stop"
        exit 1
    fi
    
    ninja -C $buildroot/build$bit cargo-clean
}

zip() {
    local bit=$1
    local arch=$2
    local x86_64_level=$3

    mv $buildroot/build$bit/mpv-* $gitdir/release
    if [ "$simple_package" != "true" ]; then
        cd $gitdir/release/mpv-packaging-master
        cp -r ./mpv-root/* ../mpv-$arch$x86_64_level*
    fi
    cd $gitdir/release
    for dir in ./mpv*$arch$x86_64_level*; do
        if [ -d $dir ]; then
            7z a -m0=lzma2 -mx=9 -ms=on $dir.7z $dir/* -x!*.7z
            rm -rf $dir
        fi
    done
    cd ..
}

download_mpv_package() {
    local package_url="https://codeload.github.com/zhongfly/mpv-packaging/zip/master"
    if [ -e mpv-packaging.zip ]; then
        echo "Package exists. Check if it is newer.."
        remote_commit=$(git ls-remote https://github.com/zhongfly/mpv-packaging.git master | awk '{print $1;}')
        local_commit=$(unzip -z mpv-packaging.zip | tail +2)
        if [ "$remote_commit" != "$local_commit" ]; then
            wget -qO mpv-packaging.zip $package_url
        fi
    else
        wget -qO mpv-packaging.zip $package_url
    fi
    unzip -o mpv-packaging.zip
}

prepare() {
    mkdir -p ./release
    if [ "$simple_package" != "true" ]; then
        cd ./release
        download_mpv_package
        cd ./mpv-packaging-master
        cd ../..
    fi
}

while getopts t:c:s:e: flag
do
    case "${flag}" in
        t) target=${OPTARG};;
        c) compiler=${OPTARG};;
        s) simple_package=${OPTARG};;
        e) extra_option=${OPTARG};;
    esac
done

main "${target:-all-64}" "${compiler:-gcc}" "${simple_package:-false}"

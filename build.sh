#!/bin/bash
set -x

main() {
    gitdir=$(pwd)
    buildroot=$(pwd)
    srcdir=$(pwd)/src_packages

    prepare
    if [ "$1" == "32" ]; then
        package "32" "i686"
    elif [ "$1" == "64" ]; then
        package "64" "x86_64"
    else [ "$1" == "all" ];
        package "32" "i686"
        package "64" "x86_64"
    fi
    rm -rf ./release/mpv-packaging-master
}

package() {
    local bit=$1
    local arch=$2

    build $bit $arch
    zip $bit $arch
    sudo rm -rf $buildroot/build$bit/mpv-$arch*
    sudo chmod -R a+rwx $buildroot/build$bit
}

build() {
    local bit=$1
    local arch=$2
    
    cmake -DTARGET_ARCH=$arch-w64-mingw32 -DALWAYS_REMOVE_BUILDFILES=ON -DSINGLE_SOURCE_LOCATION=$srcdir -G Ninja -H$gitdir -B$buildroot/build$bit
    ninja -C $buildroot/build$bit download || true
    if [[ ! "$(ls -A $buildroot/build$bit/install/bin)" ]]; then
        ninja -C $buildroot/build$bit gcc
    fi
    ninja -C $buildroot/build$bit update
    ninja -C $buildroot/build$bit mpv-fullclean
    ninja -C $buildroot/build$bit mpv

    if [ -d $buildroot/build$bit/mpv-$arch* ] ; then
        echo "Successfully compiled $bit-bit. Continue"
    else
        echo "Failed compiled $bit-bit. Stop"
        exit 1
    fi
}

zip() {
    local bit=$1
    local arch=$2

    mv $buildroot/build$bit/mpv-* $gitdir/release
    cd ./release/mpv-packaging-master
    cp -r ./mpv-root/* ./$arch/d3dcompiler_43.dll ../mpv-$arch*
    cd ..
    for dir in ./mpv*$arch*; do
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
    cd ./release
    download_mpv_package
    cd ./mpv-packaging-master
    7z x -y ./d3dcompiler*.7z
    cd ../..
}

main "$1"

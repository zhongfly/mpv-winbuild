#!/bin/bash
set -x

main() {
    dependency
    git config --global user.name "github-actions[bot]"
    git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"
    local branch="master"
    if [ -d mpv-winbuild-cmake ] ; then
        git  clone https://github.com/shinchiro/mpv-winbuild-cmake.git temp
        shopt -s dotglob
        mv -f temp/* mpv-winbuild-cmake/
        shopt -u dotglob
        sudo rm -rf temp
    else
        git clone https://github.com/shinchiro/mpv-winbuild-cmake.git
    fi
    cd mpv-winbuild-cmake
    git checkout $branch
    gitdir=$(pwd)
    buildroot=$(pwd)
    needClean="$2"
    userCommand='$3'

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

dependency() {
    sudo echo -e "[multilib]\nInclude = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm git gyp mercurial subversion ninja cmake meson ragel yasm nasm asciidoc enca gperf unzip p7zip gcc-multilib clang python-pip curl lib32-glib2 wget
    pip3 install rst2pdf mako meson >/dev/null 2>&1
}

package() {
    local bit=$1
    local arch=$2

    if [ "$needClean" == "true" ]; then
        echo "Clean $bit-bit build files"
        sudo rm -rf $buildroot/build$bit
    fi
	if [ -n "$userCommand" ]; then
		eval "$userCommand"
	fi
    build $bit $arch
    zip $bit $arch
    sudo rm -rf $buildroot/build$bit/mpv-$arch*
    sudo chmod -R a+rwx $buildroot/build$bit
}

build() {
    local bit=$1
    local arch=$2
    if [ -d $buildroot/build$bit ]; then
        cmake -DTARGET_ARCH=$arch-w64-mingw32 -G Ninja -H$gitdir -B$buildroot/build$bit
        ninja -C $buildroot/build$bit mpv-removebuild
        ninja -C $buildroot/build$bit update
    else
        mkdir -p $buildroot/build$bit
        cmake -DTARGET_ARCH=$arch-w64-mingw32 -G Ninja -H$gitdir -B$buildroot/build$bit
        ninja -C $buildroot/build$bit gcc
    fi
    ninja -C $buildroot/build$bit mpv || ninja -C $buildroot/build$bit mpv

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
        remote_commit=$(git ls-remote https://github.com/shinchiro/mpv-packaging.git master | awk '{print $1;}')
        local_commit=$(unzip -z mpv-packaging.zip | tail +2)
        if [ "$remote_commit" != "$local_commit" ]; then
            wget -O mpv-packaging.zip $package_url
        fi
    else
        wget -O mpv-packaging.zip $package_url
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

main "$1" "$2" '$3'

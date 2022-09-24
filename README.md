# mpv-winbuild

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/zhongfly/mpv-winbuild/MPV)](https://github.com/zhongfly/mpv-winbuild/actions)
[![releases](https://img.shields.io/github/v/release/zhongfly/mpv-winbuild)](https://github.com/zhongfly/mpv-winbuild/releases/latest)
[![downloads](https://img.shields.io/github/downloads/zhongfly/mpv-winbuild/total)](https://github.com/zhongfly/mpv-winbuild/releases)

Use Github Action to build mpv for Windows with latest commit.

Based on <https://github.com/shinchiro/mpv-winbuild-cmake>.

## Auto-Builds

Builds run daily at 12:00 UTC (trigger by [pipedream](https://pipedream.com/)) and are automatically released on success.

This repo only provides 64-bit version. If you need a 32-bit version, you can fork this repo and edit mpv.yml.

> `mpv-dev-x86_64-xxxx.7z` is 64-bit libmpv version, including the `mpv-2.dll` file.
> 
> Some media players based on libmpv use `mpv-2.dll`.You can upgrade their libmpv version by overwriting mpv-2.dll.

### Release Retention Policy

-   The last build of each month is kept for one year.
-   The last 14 daily builds are kept.

### CI Builds

Every hour, check whether there is a new commit in mpv repo, if there is a new commit, builds will run automatically but will not be released.

You can go to the the **[Action](https://github.com/zhongfly/mpv-winbuild/actions)** tab in this repo,and download artifact from any successful action.

## Information about packages

same as [shinchiro](https://github.com/shinchiro/mpv-winbuild-cmake/blob/master/README.md#information-about-packages) [![](https://flat.badgen.net/github/last-commit/shinchiro/mpv-winbuild-cmake?cache=1800)](https://github.com/shinchiro/mpv-winbuild-cmake)

-   Git/Hg
    -   ANGLE [![ANGLE](https://flat.badgen.net/gitlab/last-commit/shinchiro/angle?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/angle)
    -   FFmpeg [![FFmpeg](https://flat.badgen.net/github/last-commit/FFmpeg/FFmpeg?scale=0.8&cache=1800)](https://github.com/FFmpeg/FFmpeg)
    -   xz [![xz](https://flat.badgen.net/gitlab/last-commit/shinchiro/xz?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/xz)
    -   x264 [![x264](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/x264?scale=0.8&cache=1800)](https://code.videolan.org/videolan/x264)
    -   x265 (multilib) [![x265](https://flat.badgen.net/https/bitbucket-ft1l4pi7n5hp.runkit.sh/multicoreware/x265_git?scale=0.8&cache=1800)](https://bitbucket.org/multicoreware/x265_git)
    -   uchardet [![uchardet](https://flat.badgen.net/github/last-commit/freedesktop/uchardet?scale=0.8&cache=1800)](https://github.com/freedesktop/uchardet)
    -   rubberband [![rubberband](https://flat.badgen.net/github/last-commit/breakfastquay/rubberband/default?scale=0.8&cache=1800)](https://github.com/breakfastquay/rubberband)
    -   opus [![opus](https://flat.badgen.net/github/last-commit/xiph/opus?scale=0.8&cache=1800)](https://github.com/xiph/opus)
    -   openal-soft [![openal-soft](https://flat.badgen.net/github/last-commit/kcat/openal-soft?scale=0.8&cache=1800)](https://github.com/kcat/openal-soft)
    -   mpv [![mpv](https://flat.badgen.net/github/last-commit/mpv-player/mpv?scale=0.8&cache=1800)](https://github.com/mpv-player/mpv)
    -   luajit [![luajit](https://flat.badgen.net/github/last-commit/openresty/luajit2/v2.1-agentzh?scale=0.8&cache=1800)](https://github.com/openresty/luajit2)
    -   libvpx [![libvpx](https://flat.badgen.net/github/last-commit/webmproject/libvpx?scale=0.8&cache=1800)](https://chromium.googlesource.com/webm/libvpx)
    -   libwebp [![libwebp](https://flat.badgen.net/github/last-commit/webmproject/libwebp/main?scale=0.8&cache=1800)](https://chromium.googlesource.com/webm/libwebp)
    -   libpng [![libpng](https://flat.badgen.net/github/last-commit/glennrp/libpng?scale=0.8&cache=1800)](https://github.com/glennrp/libpng)
    -   libsoxr [![libsoxr](https://flat.badgen.net/gitlab/last-commit/shinchiro/soxr?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/soxr)
    -   libzimg (with [graphengine](https://github.com/sekrit-twc/graphengine)) [![libzimg](https://flat.badgen.net/github/last-commit/sekrit-twc/zimg?scale=0.8&cache=1800)](https://github.com/sekrit-twc/zimg)
    -   libdvdread [![libdvdread](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/libdvdread?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdread)
    -   libdvdnav [![libdvdnav](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/libdvdnav?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdnav)
    -   libdvdcss [![libdvdcss](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/libdvdcss?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdcss)
    -   libudfread [![libdvdcss](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/libudfread?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libudfread)
    -   libbluray [![libbluray](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/libbluray?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libbluray)
    -   libunibreak [![libunibreak](https://flat.badgen.net/github/last-commit/adah1972/libunibreak?scale=0.8&cache=1800)](https://github.com/adah1972/libunibreak)
    -   libass [![libass](https://flat.badgen.net/github/last-commit/libass/libass?scale=0.8&cache=1800)](https://github.com/libass/libass)
    -   libmysofa [![libmysofa](https://flat.badgen.net/github/last-commit/hoene/libmysofa/main?scale=0.8&cache=1800)](https://github.com/hoene/libmysofa)
    -   lcms2 [![lcms2](https://flat.badgen.net/github/last-commit/mm2/Little-CMS?scale=0.8&cache=1800)](https://github.com/mm2/Little-CMS)
    -   lame [![lame](https://flat.badgen.net/gitlab/last-commit/shinchiro//lame?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/lame)
    -   harfbuzz [![harfbuzz](https://flat.badgen.net/github/last-commit/harfbuzz/harfbuzz/main?scale=0.8&cache=1800)](https://github.com/harfbuzz/harfbuzz)
    -   game-music-emu [![game-music-emu](https://flat.badgen.net/https/bitbucket-ft1l4pi7n5hp.runkit.sh/mpyne/game-music-emu?scale=0.8&cache=1800)](https://bitbucket.org/mpyne/game-music-emu)
    -   freetype2 [![freetype2](https://flat.badgen.net/gitlab/last-commit/shinchiro/freetype2?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/freetype2)
    -   mujs [![mujs](https://flat.badgen.net/github/last-commit/ccxvii/mujs?scale=0.8&cache=1800)](https://github.com/ccxvii/mujs)
    -   libarchive [![libarchive](https://flat.badgen.net/github/last-commit/libarchive/libarchive?scale=0.8&cache=1800)](https://github.com/libarchive/libarchive)
    -   libjpeg [![libjpeg](https://flat.badgen.net/github/last-commit/libjpeg-turbo/libjpeg-turbo/main?scale=0.8&cache=1800)](https://github.com/libjpeg-turbo/libjpeg-turbo)
    -   shaderc (with [spirv-headers](https://github.com/KhronosGroup/SPIRV-Headers), [spirv-tools](https://github.com/KhronosGroup/SPIRV-Tools), [glslang](https://github.com/KhronosGroup/glslang)) [![shaderc](https://flat.badgen.net/github/last-commit/google/shaderc/main?scale=0.8&cache=1800)](https://github.com/google/shaderc)
    -   vulkan-header [![Vulkan-Headers](https://flat.badgen.net/github/last-commit/KhronosGroup/Vulkan-Headers/main?scale=0.8&cache=1800)](https://github.com/KhronosGroup/Vulkan-Headers)
    -   vulkan [![Vulkan](https://flat.badgen.net/github/last-commit/KhronosGroup/Vulkan-Loader?scale=0.8&cache=1800)](https://github.com/KhronosGroup/Vulkan-Loader) 
    -   spirv-cross [![spirv-cross](https://flat.badgen.net/github/last-commit/KhronosGroup/SPIRV-Cross?scale=0.8&cache=1800)](https://github.com/KhronosGroup/SPIRV-Cross)
    -   fribidi [![fribidi](https://flat.badgen.net/github/last-commit/fribidi/fribidi?scale=0.8&cache=1800)](https://github.com/fribidi/fribidi)
    -   nettle [![nettle](https://flat.badgen.net/gitlab/last-commit/shinchiro/nettle?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/nettle)
    -   libxml2 [![libxml2](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/gitlab.gnome.org/GNOME/libxml2?scale=0.8&cache=1800)](https://gitlab.gnome.org/GNOME/libxml2)
    -   amf-headers [![amf-headers](https://flat.badgen.net/github/last-commit/GPUOpen-LibrariesAndSDKs/AMF?scale=0.8&cache=1800)](https://github.com/GPUOpen-LibrariesAndSDKs/AMF/tree/master/amf/public/include)
    -   avisynth-headers [![avisynth-headers](https://flat.badgen.net/github/last-commit/AviSynth/AviSynthPlus?scale=0.8&cache=1800)](https://github.com/AviSynth/AviSynthPlus)
    -   nvcodec-headers [![nvcodec-headers](https://flat.badgen.net/github/last-commit/FFmpeg/nv-codec-headers?scale=0.8&cache=1800)](https://git.videolan.org/?p=ffmpeg/nv-codec-headers.git)
    -   libmfx [![libmfx](https://flat.badgen.net/github/last-commit/lu-zero/mfx_dispatch?scale=0.8&cache=1800)](https://github.com/lu-zero/mfx_dispatch)
    -   [aom](https://aomedia.googlesource.com/aom/)
    -   dav1d [![dav1d](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/dav1d?scale=0.8&cache=1800)](https://code.videolan.org/videolan/dav1d/)
    -   libplacebo (with [glad](https://github.com/Dav1dde/glad)) [![libplacebo](https://flat.badgen.net/github/last-commit/haasn/libplacebo?scale=0.8&cache=1800)](https://github.com/haasn/libplacebo)
    -   fontconfig [![uchardet](https://flat.badgen.net/github/last-commit/freedesktop/fontconfig?scale=0.8&cache=1800)](https://github.com/freedesktop/fontconfig)
    -   libbs2b [![libbs2b](https://flat.badgen.net/github/last-commit/alexmarsev/libbs2b?scale=0.8&cache=1800)](https://github.com/alexmarsev/libbs2b)
    -   [libssh](https://git.libssh.org/projects/libssh.git)
    -   libsrt [![libsrt](https://flat.badgen.net/github/last-commit/Haivision/srt?scale=0.8&cache=1800)](https://github.com/Haivision/srt)
    -   libmodplug [![libmodplug](https://flat.badgen.net/github/last-commit/Konstanty/libmodplug?scale=0.8&cache=1800)](https://github.com/Konstanty/libmodplug)
    -   libjxl (with [brotli](https://github.com/google/brotli), [highway](https://github.com/google/highway)) [![libjxl](https://flat.badgen.net/github/last-commit/libjxl/libjxl/main?scale=0.8&cache=1800)](https://github.com/libjxl/libjxl)

-   Zip
    -   [expat](https://github.com/libexpat/libexpat) (2.4.9)
    -   [bzip](https://sourceware.org/pub/bzip2/) (1.0.8)
    -   [zlib](https://github.com/madler/zlib/) (1.2.12)
    -   [xvidcore](https://labs.xvid.com/source/) (1.3.7)
    -   [vorbis](https://xiph.org/downloads/) (1.3.7)
    -   [speex](https://ftp.osuosl.org/pub/xiph/releases/speex/) (1.2.1)
    -   [ogg](https://ftp.osuosl.org/pub/xiph/releases/ogg/) (1.3.5)
    -   [lzo](https://fossies.org/linux/misc/) (2.10)
    -   [libopenmpt](https://lib.openmpt.org/libopenmpt/download/) (0.6.5)
    -   [libiconv](https://ftp.gnu.org/pub/gnu/libiconv/) (1.17)
    -   [gmp](https://gmplib.org/download/gmp/) (6.2.1)
    -   [vapoursynth](https://github.com/vapoursynth/vapoursynth) (R60)
    -   [libsdl2](https://www.libsdl.org/release/) (2.24.0)
    -   [mbedtls](https://github.com/Mbed-TLS/mbedtls) (3.2.1)
    -   ~~[libressl](https://cdn.openbsd.org/pub/OpenBSD/LibreSSL/) (3.1.5)~~

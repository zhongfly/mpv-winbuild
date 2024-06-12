# mpv-winbuild

[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/zhongfly/mpv-winbuild/mpv.yml?branch=main)](https://github.com/zhongfly/mpv-winbuild/actions)
[![releases](https://img.shields.io/github/v/release/zhongfly/mpv-winbuild)](https://github.com/zhongfly/mpv-winbuild/releases/latest)
[![downloads](https://img.shields.io/github/downloads/zhongfly/mpv-winbuild/total)](https://github.com/zhongfly/mpv-winbuild/releases)

Use Github Action to build mpv for Windows with latest commit.

Based on <https://github.com/shinchiro/mpv-winbuild-cmake>.

## Auto-Builds

Checks the mpv repository every hour for updates. If there is an update and it is relevant to the windows build, it will automatically run the compilation and **release it on success**.

This repo only provides 64-bit version. If you need a 32-bit version, you can fork this repo and run `MPV` workflow by yourself.

> [!NOTE]
> `mpv-dev-xxxx.7z` is libmpv, including the `libmpv-2.dll` file.
>
> Some media players based on libmpv use `libmpv-2.dll` or `mpv-2.dll`.You can upgrade their libmpv by overwriting this dll.
>
> `mpv-dev-lgpl-xxxx.7z` is libmpv under LGPLv2.1+ license, which disables LGPLv2.1+ incompatible packages and statically links to ffmpeg under LGPLv3.
> 
> I'm not a lawyer and can't guarantee that I've disabled all LGPL-incompatible packages, use at your own risk.

### Release Retention Policy

-   The last 30 days of builds will be retained.

## Information about packages

same as [shinchiro](https://github.com/shinchiro/mpv-winbuild-cmake/blob/master/README.md#information-about-packages) [![](https://flat.badgen.net/github/last-commit/shinchiro/mpv-winbuild-cmake?cache=1800)](https://github.com/shinchiro/mpv-winbuild-cmake)

-   Git/Hg
    -   amf-headers [![amf-headers](https://flat.badgen.net/github/last-commit/GPUOpen-LibrariesAndSDKs/AMF?scale=0.8&cache=1800)](https://github.com/GPUOpen-LibrariesAndSDKs/AMF/tree/master/amf/public/include)
    -   ANGLE [![ANGLE](https://flat.badgen.net/github/last-commit/google/angle/main?scale=0.8&cache=1800)](https://github.com/google/angle)
    -   aom [![aom](https://flat.badgen.net/github/last-commit/m-ab-s/aom?scale=0.8&cache=1800)](https://aomedia.googlesource.com/aom)
    -   avisynth-headers [![avisynth-headers](https://flat.badgen.net/github/last-commit/AviSynth/AviSynthPlus?scale=0.8&cache=1800)](https://github.com/AviSynth/AviSynthPlus)
    -   bzip2 [![bzip2](https://flat.badgen.net/gitlab/last-commit/bzip2/bzip2?scale=0.8&cache=1800)](https://gitlab.com/bzip2/bzip2)
    -   dav1d [![dav1d](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/dav1d?scale=0.8&cache=1800)](https://code.videolan.org/videolan/dav1d/)
    -   davs2 [![davs2](https://flat.badgen.net/github/last-commit/pkuvcl/davs2?scale=0.8&cache=1800)](https://github.com/pkuvcl/davs2)
    -   expat [![expat](https://flat.badgen.net/github/last-commit/libexpat/libexpat?scale=0.8&cache=1800)](https://github.com/libexpat/libexpat)
    -   FFmpeg [![FFmpeg](https://flat.badgen.net/github/last-commit/FFmpeg/FFmpeg?scale=0.8&cache=1800)](https://github.com/FFmpeg/FFmpeg)
    -   fontconfig [![fontconfig](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/gitlab.freedesktop.org/fontconfig/fontconfig?scale=0.8&cache=1800)](https://gitlab.freedesktop.org/fontconfig/fontconfig)
    -   freetype2 [![freetype2](https://flat.badgen.net/github/last-commit/freetype/freetype?scale=0.8&cache=1800)](https://github.com/freetype/freetype)
    -   fribidi [![fribidi](https://flat.badgen.net/github/last-commit/fribidi/fribidi?scale=0.8&cache=1800)](https://github.com/fribidi/fribidi)
    -   harfbuzz [![harfbuzz](https://flat.badgen.net/github/last-commit/harfbuzz/harfbuzz/main?scale=0.8&cache=1800)](https://github.com/harfbuzz/harfbuzz)
    -   lame [![lame](https://flat.badgen.net/gitlab/last-commit/shinchiro//lame?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/lame)
    -   lcms2 [![lcms2](https://flat.badgen.net/github/last-commit/mm2/Little-CMS?scale=0.8&cache=1800)](https://github.com/mm2/Little-CMS)
    -   libarchive [![libarchive](https://flat.badgen.net/github/last-commit/libarchive/libarchive?scale=0.8&cache=1800)](https://github.com/libarchive/libarchive)
    -   libaribcaption [![libaribcaption](https://flat.badgen.net/github/last-commit/xqq/libaribcaption?scale=0.8&cache=1800)](https://github.com/xqq/libaribcaption)
    -   libass [![libass](https://flat.badgen.net/github/last-commit/libass/libass?scale=0.8&cache=1800)](https://github.com/libass/libass)
    -   libbluray [![libbluray](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/libbluray?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libbluray)
    -   libbs2b [![libbs2b](https://flat.badgen.net/github/last-commit/alexmarsev/libbs2b?scale=0.8&cache=1800)](https://github.com/alexmarsev/libbs2b)
    -   libdovi [![libdovi](https://flat.badgen.net/github/last-commit/quietvoid/dovi_tool/main?style=flat-square&scale=0.8&cache=1800)](https://github.com/quietvoid/dovi_tool) 
    -   libdvdcss [![libdvdcss](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/libdvdcss?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdcss)
    -   libdvdnav [![libdvdnav](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/libdvdnav?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdnav)
    -   libdvdread [![libdvdread](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/libdvdread?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdread)
    -   libjpeg [![libjpeg](https://flat.badgen.net/github/last-commit/libjpeg-turbo/libjpeg-turbo/main?scale=0.8&cache=1800)](https://github.com/libjpeg-turbo/libjpeg-turbo)
    -   libjxl (with [brotli](https://github.com/google/brotli), [highway](https://github.com/google/highway)) [![libjxl](https://flat.badgen.net/github/last-commit/libjxl/libjxl/main?scale=0.8&cache=1800)](https://github.com/libjxl/libjxl)
    -   libmodplug [![libmodplug](https://flat.badgen.net/github/last-commit/Konstanty/libmodplug?scale=0.8&cache=1800)](https://github.com/Konstanty/libmodplug)
    -   libmysofa [![libmysofa](https://flat.badgen.net/github/last-commit/hoene/libmysofa/main?scale=0.8&cache=1800)](https://github.com/hoene/libmysofa)
    -   libplacebo (with [glad](https://github.com/Dav1dde/glad), [fast_float](https://github.com/fastfloat/fast_float), [xxhash](https://github.com/Cyan4973/xxHash)) [![libplacebo](https://flat.badgen.net/github/last-commit/haasn/libplacebo?scale=0.8&cache=1800)](https://github.com/haasn/libplacebo)
    -   libpng [![libpng](https://flat.badgen.net/github/last-commit/glennrp/libpng?scale=0.8&cache=1800)](https://github.com/glennrp/libpng)
    -   libsdl2 [![libpng](https://flat.badgen.net/github/last-commit/libsdl-org/SDL/SDL2?style=flat-square&scale=0.8&cache=1800)](https://github.com/libsdl-org/SDL)
    -   libsoxr [![libsoxr](https://flat.badgen.net/gitlab/last-commit/shinchiro/soxr?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/soxr)
    -   libsrt [![libsrt](https://flat.badgen.net/github/last-commit/Haivision/srt?scale=0.8&cache=1800)](https://github.com/Haivision/srt)
    -   libssh [![libssh](https://flat.badgen.net/gitlab/last-commit/libssh/libssh-mirror?scale=0.8&cache=1800)](https://git.libssh.org/projects/libssh.git)
    -   libudfread [![libdvdcss](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/libudfread?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libudfread)
    -   libunibreak [![libunibreak](https://flat.badgen.net/github/last-commit/adah1972/libunibreak?scale=0.8&cache=1800)](https://github.com/adah1972/libunibreak)
    -   libva [![libva](https://flat.badgen.net/github/last-commit/intel/libva?scale=0.8&cache=1800)](https://github.com/intel/libva)
    -   libvpl [![libvpl](https://flat.badgen.net/github/last-commit/intel/libvpl?scale=0.8&cache=1800)](https://github.com/intel/libvpl)
    -   libvpx [![libvpx](https://flat.badgen.net/github/last-commit/webmproject/libvpx/main?scale=0.8&cache=1800)](https://chromium.googlesource.com/webm/libvpx)
    -   libwebp [![libwebp](https://flat.badgen.net/github/last-commit/webmproject/libwebp/main?scale=0.8&cache=1800)](https://chromium.googlesource.com/webm/libwebp)
    -   libxml2 [![libxml2](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/gitlab.gnome.org/GNOME/libxml2?scale=0.8&cache=1800)](https://gitlab.gnome.org/GNOME/libxml2)
    -   libzimg (with [graphengine](https://github.com/sekrit-twc/graphengine)) [![libzimg](https://flat.badgen.net/github/last-commit/sekrit-twc/zimg?scale=0.8&cache=1800)](https://github.com/sekrit-twc/zimg)
    -   libzvbi [![libzvbi](https://flat.badgen.net/github/last-commit/zapping-vbi/zvbi/main?scale=0.8&cache=1800)](https://github.com/zapping-vbi/zvbi)
    -   luajit [![luajit](https://flat.badgen.net/github/last-commit/openresty/luajit2/v2.1-agentzh?scale=0.8&cache=1800)](https://github.com/openresty/luajit2)
    -   mpv [![mpv](https://flat.badgen.net/github/last-commit/mpv-player/mpv?scale=0.8&cache=1800)](https://github.com/mpv-player/mpv)
    -   mujs [![mujs](https://flat.badgen.net/github/last-commit/ccxvii/mujs?scale=0.8&cache=1800)](https://github.com/ccxvii/mujs)
    -   nvcodec-headers [![nvcodec-headers](https://flat.badgen.net/github/last-commit/FFmpeg/nv-codec-headers?scale=0.8&cache=1800)](https://git.videolan.org/?p=ffmpeg/nv-codec-headers.git)
    -   ogg [![ogg](https://flat.badgen.net/github/last-commit/xiph/ogg?scale=0.8&cache=1800)](https://github.com/xiph/ogg)
    -   openal-soft [![openal-soft](https://flat.badgen.net/github/last-commit/kcat/openal-soft?scale=0.8&cache=1800)](https://github.com/kcat/openal-soft)
    -   openssl [![openssl](https://flat.badgen.net/github/last-commit/openssl/openssl?scale=0.8&cache=1800)](https://github.com/openssl/openssl)
    -   opus [![opus](https://flat.badgen.net/github/last-commit/xiph/opus?scale=0.8&cache=1800)](https://github.com/xiph/opus)
    -   rav1e [![rav1e](https://flat.badgen.net/github/last-commit/xiph/rav1e?scale=0.8&cache=1800)](https://github.com/xiph/rav1e)
    -   rubberband (with [libsamplerate](https://github.com/libsndfile/libsamplerate.git)) [![rubberband](https://flat.badgen.net/github/last-commit/breakfastquay/rubberband/default?scale=0.8&cache=1800)](https://github.com/breakfastquay/rubberband)
    -   shaderc (with [spirv-headers](https://github.com/KhronosGroup/SPIRV-Headers), [spirv-tools](https://github.com/KhronosGroup/SPIRV-Tools), [glslang](https://github.com/KhronosGroup/glslang)) [![shaderc](https://flat.badgen.net/github/last-commit/google/shaderc/main?scale=0.8&cache=1800)](https://github.com/google/shaderc)
    -   speex [![speex](https://flat.badgen.net/github/last-commit/xiph/speex?scale=0.8&cache=1800)](https://github.com/xiph/speex)
    -   spirv-cross [![spirv-cross](https://flat.badgen.net/github/last-commit/KhronosGroup/SPIRV-Cross/main?scale=0.8&cache=1800)](https://github.com/KhronosGroup/SPIRV-Cross)
    -   uavs3d [![uavs3d](https://flat.badgen.net/github/last-commit/uavs3/uavs3d?scale=0.8&cache=1800)](https://github.com/uavs3/uavs3d)
    -   uchardet [![uchardet](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/gitlab.freedesktop.org/uchardet/uchardet?scale=0.8&cache=1800)](https://gitlab.freedesktop.org/uchardet/uchardet)
    -   vorbis [![vorbis](https://flat.badgen.net/github/last-commit/xiph/vorbis?scale=0.8&cache=1800)](https://github.com/xiph/vorbis) 
    -   vulkan [![Vulkan](https://flat.badgen.net/github/last-commit/KhronosGroup/Vulkan-Loader/main?scale=0.8&cache=1800)](https://github.com/KhronosGroup/Vulkan-Loader) 
    -   vulkan-header [![Vulkan-Headers](https://flat.badgen.net/github/last-commit/KhronosGroup/Vulkan-Headers/main?scale=0.8&cache=1800)](https://github.com/KhronosGroup/Vulkan-Headers)
    -   x264 [![x264](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/x264?scale=0.8&cache=1800)](https://code.videolan.org/videolan/x264)
    -   x265 (multilib) [![x265](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/bitbucket/multicoreware/x265_git?scale=0.8&cache=1800)](https://bitbucket.org/multicoreware/x265_git)
    -   xz [![xz](https://flat.badgen.net/github/last-commit/tukaani-project/xz?scale=0.8&cache=1800)](https://github.com/tukaani-project/xz)
    -   zlib [![zlib](https://flat.badgen.net/github/last-commit/zlib-ng/zlib-ng?scale=0.8&cache=1800)](https://github.com/zlib-ng/zlib-ng)
    -   zstd [![zstd](https://flat.badgen.net/github/last-commit/facebook/zstd/dev?scale=0.8&cache=1800)](https://github.com/facebook/zstd)

-   Zip
    -   [xvidcore](https://labs.xvid.com/source/) (1.3.7) 
    -   [lzo](https://fossies.org/linux/misc/) (2.10)
    -   [libopenmpt](https://lib.openmpt.org/libopenmpt/download/) (0.7.8)
    -   [libiconv](https://ftp.gnu.org/pub/gnu/libiconv/) (1.17)
    -   [vapoursynth](https://github.com/vapoursynth/vapoursynth)  ![](https://img.shields.io/github/v/release/vapoursynth/vapoursynth?style=flat-square)


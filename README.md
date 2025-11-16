# mpv-winbuild

[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/zhongfly/mpv-winbuild/mpv.yml?branch=main&cacheSeconds=1800)](https://github.com/zhongfly/mpv-winbuild/actions)
[![releases](https://img.shields.io/github/v/release/zhongfly/mpv-winbuild?cacheSeconds=1800)](https://github.com/zhongfly/mpv-winbuild/releases/latest)
[![downloads](https://img.shields.io/github/downloads/zhongfly/mpv-winbuild/total?cacheSeconds=1800)](https://github.com/zhongfly/mpv-winbuild/releases)

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

same as [shinchiro](https://github.com/shinchiro/mpv-winbuild-cmake/blob/master/README.md#information-about-packages) [![](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fshinchiro%2Fmpv-winbuild-cmake&cacheSeconds=1800)](https://github.com/shinchiro/mpv-winbuild-cmake)

-   Git/Hg
    -   amf-headers [![amf-headers](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FGPUOpen-LibrariesAndSDKs%2FAMF&cacheSeconds=1800)](https://github.com/GPUOpen-LibrariesAndSDKs/AMF/tree/master/amf/public/include)
    -   ANGLE [![ANGLE](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fgoogle%2Fangle%2Fmain&cacheSeconds=1800)](https://github.com/google/angle)
    -   aom [![aom](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fm-ab-s%2Faom&cacheSeconds=1800)](https://aomedia.googlesource.com/aom)
    -   avisynth-headers [![avisynth-headers](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FAviSynth%2FAviSynthPlus&cacheSeconds=1800)](https://github.com/AviSynth/AviSynthPlus)
    -   bzip2 [![bzip2](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.com%2Fbzip2%2Fbzip2&cacheSeconds=1800)](https://gitlab.com/bzip2/bzip2)
    -   dav1d [![dav1d](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fcode.videolan.org%2Fvideolan%2Fdav1d&cacheSeconds=1800)](https://code.videolan.org/videolan/dav1d/)
    -   davs2 [![davs2](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fpkuvcl%2Fdavs2&cacheSeconds=1800)](https://github.com/pkuvcl/davs2)
    -   expat [![expat](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Flibexpat%2Flibexpat&cacheSeconds=1800)](https://github.com/libexpat/libexpat)
    -   FFmpeg [![FFmpeg](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FFFmpeg%2FFFmpeg&cacheSeconds=1800)](https://github.com/FFmpeg/FFmpeg)
    -   fontconfig [![fontconfig](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.freedesktop.org%2Ffontconfig%2Ffontconfig&cacheSeconds=1800)](https://gitlab.freedesktop.org/fontconfig/fontconfig)
    -   freetype2 [![freetype2](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Ffreetype%2Ffreetype&cacheSeconds=1800)](https://github.com/freetype/freetype)
    -   fribidi [![fribidi](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Ffribidi%2Ffribidi&cacheSeconds=1800)](https://github.com/fribidi/fribidi)
    -   harfbuzz [![harfbuzz](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fharfbuzz%2Fharfbuzz%2Fmain&cacheSeconds=1800)](https://github.com/harfbuzz/harfbuzz)
    -   lame [![lame](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.com%2Fshinchiro%2F%2Flame&cacheSeconds=1800)](https://gitlab.com/shinchiro/lame)
    -   lcms2 [![lcms2](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fmm2%2FLittle-CMS&cacheSeconds=1800)](https://github.com/mm2/Little-CMS)
    -   libarchive [![libarchive](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Flibarchive%2Flibarchive&cacheSeconds=1800)](https://github.com/libarchive/libarchive)
    -   libaribcaption [![libaribcaption](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fxqq%2Flibaribcaption&cacheSeconds=1800)](https://github.com/xqq/libaribcaption)
    -   libass [![libass](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Flibass%2Flibass&cacheSeconds=1800)](https://github.com/libass/libass)
    -   libbluray [![libbluray](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fcode.videolan.org%2Fvideolan%2Flibbluray&cacheSeconds=1800)](https://code.videolan.org/videolan/libbluray)
    -   libbs2b [![libbs2b](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Falexmarsev%2Flibbs2b&cacheSeconds=1800)](https://github.com/alexmarsev/libbs2b)
    -   libdvdcss [![libdvdcss](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fcode.videolan.org%2Fvideolan%2Flibdvdcss&cacheSeconds=1800)](https://code.videolan.org/videolan/libdvdcss)
    -   libdvdnav [![libdvdnav](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fcode.videolan.org%2Fvideolan%2Flibdvdnav&cacheSeconds=1800)](https://code.videolan.org/videolan/libdvdnav)
    -   libdvdread [![libdvdread](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fcode.videolan.org%2Fvideolan%2Flibdvdread&cacheSeconds=1800)](https://code.videolan.org/videolan/libdvdread)
    -   libjpeg [![libjpeg](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Flibjpeg-turbo%2Flibjpeg-turbo%2Fmain&cacheSeconds=1800)](https://github.com/libjpeg-turbo/libjpeg-turbo)
    -   libjxl (with [brotli](https://github.com/google/brotli), [highway](https://github.com/google/highway)) [![libjxl](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Flibjxl%2Flibjxl%2Fmain&cacheSeconds=1800)](https://github.com/libjxl/libjxl)
    -   libmodplug [![libmodplug](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FKonstanty%2Flibmodplug&cacheSeconds=1800)](https://github.com/Konstanty/libmodplug)
    -   libmysofa [![libmysofa](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fhoene%2Flibmysofa%2Fmain&cacheSeconds=1800)](https://github.com/hoene/libmysofa)
    -   libplacebo (with [glad](https://github.com/Dav1dde/glad), [fast_float](https://github.com/fastfloat/fast_float), [xxhash](https://github.com/Cyan4973/xxHash)) [![libplacebo](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fhaasn%2Flibplacebo&cacheSeconds=1800)](https://github.com/haasn/libplacebo)
    -   libpng [![libpng](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fglennrp%2Flibpng&cacheSeconds=1800)](https://github.com/glennrp/libpng)
    -   libsdl2 [![libpng](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Flibsdl-org%2FSDL%2FSDL2&style=flat-square&cacheSeconds=1800)](https://github.com/libsdl-org/SDL)
    -   libsoxr [![libsoxr](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.com%2Fshinchiro%2Fsoxr&cacheSeconds=1800)](https://gitlab.com/shinchiro/soxr)
    -   libsrt [![libsrt](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FHaivision%2Fsrt&cacheSeconds=1800)](https://github.com/Haivision/srt)
    -   libssh [![libssh](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.com%2Flibssh%2Flibssh-mirror&cacheSeconds=1800)](https://git.libssh.org/projects/libssh.git)
    -   libudfread [![libdvdcss](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fcode.videolan.org%2Fvideolan%2Flibudfread&cacheSeconds=1800)](https://code.videolan.org/videolan/libudfread)
    -   libunibreak [![libunibreak](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fadah1972%2Flibunibreak&cacheSeconds=1800)](https://github.com/adah1972/libunibreak)
    -   libva [![libva](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fintel%2Flibva&cacheSeconds=1800)](https://github.com/intel/libva)
    -   libvpl [![libvpl](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fintel%2Flibvpl&cacheSeconds=1800)](https://github.com/intel/libvpl)
    -   libvpx [![libvpx](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fwebmproject%2Flibvpx%2Fmain&cacheSeconds=1800)](https://chromium.googlesource.com/webm/libvpx)
    -   libwebp [![libwebp](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fwebmproject%2Flibwebp%2Fmain&cacheSeconds=1800)](https://chromium.googlesource.com/webm/libwebp)
    -   libxml2 [![libxml2](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.gnome.org%2FGNOME%2Flibxml2&cacheSeconds=1800)](https://gitlab.gnome.org/GNOME/libxml2)
    -   libzimg (with [graphengine](https://github.com/sekrit-twc/graphengine)) [![libzimg](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fsekrit-twc%2Fzimg&cacheSeconds=1800)](https://github.com/sekrit-twc/zimg)
    -   libzvbi [![libzvbi](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fzapping-vbi%2Fzvbi%2Fmain&cacheSeconds=1800)](https://github.com/zapping-vbi/zvbi)
    -   luajit [![luajit](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fopenresty%2Fluajit2%2Fv2.1-agentzh&cacheSeconds=1800)](https://github.com/openresty/luajit2)
    -   mpv [![mpv](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fmpv-player%2Fmpv&cacheSeconds=1800)](https://github.com/mpv-player/mpv)
    -   mujs [![mujs](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fcodeberg%2Fccxvii%2Fmujs&cacheSeconds=1800)](https://codeberg.org/ccxvii/mujs)
    -   nvcodec-headers [![nvcodec-headers](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FFFmpeg%2Fnv-codec-headers&cacheSeconds=1800)](https://git.videolan.org/?p=ffmpeg/nv-codec-headers.git)
    -   ogg [![ogg](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fxiph%2Fogg&cacheSeconds=1800)](https://github.com/xiph/ogg)
    -   openal-soft [![openal-soft](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fkcat%2Fopenal-soft&cacheSeconds=1800)](https://github.com/kcat/openal-soft)
    -   openssl [![openssl](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fopenssl%2Fopenssl&cacheSeconds=1800)](https://github.com/openssl/openssl)
    -   opus [![opus](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fxiph%2Fopus&cacheSeconds=1800)](https://github.com/xiph/opus)
    -   rubberband (with [libsamplerate](https://github.com/libsndfile/libsamplerate.git)) [![rubberband](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fbreakfastquay%2Frubberband%2Fdefault&cacheSeconds=1800)](https://github.com/breakfastquay/rubberband)
    -   shaderc (with [spirv-headers](https://github.com/KhronosGroup/SPIRV-Headers), [spirv-tools](https://github.com/KhronosGroup/SPIRV-Tools), [glslang](https://github.com/KhronosGroup/glslang)) [![shaderc](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fgoogle%2Fshaderc%2Fmain&cacheSeconds=1800)](https://github.com/google/shaderc)
    -   speex [![speex](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fxiph%2Fspeex&cacheSeconds=1800)](https://github.com/xiph/speex)
    -   spirv-cross [![spirv-cross](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FKhronosGroup%2FSPIRV-Cross%2Fmain&cacheSeconds=1800)](https://github.com/KhronosGroup/SPIRV-Cross)
    -   svtav1 [![svtav1](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.com%2FAOMediaCodec%2FSVT-AV1&cacheSeconds=1800)](https://gitlab.com/AOMediaCodec/SVT-AV1)
    -   uavs3d [![uavs3d](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fuavs3%2Fuavs3d&cacheSeconds=1800)](https://github.com/uavs3/uavs3d)
    -   uchardet [![uchardet](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.freedesktop.org%2Fuchardet%2Fuchardet&cacheSeconds=1800)](https://gitlab.freedesktop.org/uchardet/uchardet)
    -   vorbis [![vorbis](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fxiph%2Fvorbis&cacheSeconds=1800)](https://github.com/xiph/vorbis) 
    -   vulkan [![Vulkan](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FKhronosGroup%2FVulkan-Loader%2Fmain&cacheSeconds=1800)](https://github.com/KhronosGroup/Vulkan-Loader) 
    -   vulkan-header [![Vulkan-Headers](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FKhronosGroup%2FVulkan-Headers%2Fmain&cacheSeconds=1800)](https://github.com/KhronosGroup/Vulkan-Headers)
    -   x264 [![x264](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fcode.videolan.org%2Fvideolan%2Fx264&cacheSeconds=1800)](https://code.videolan.org/videolan/x264)
    -   x265 (multilib) [![x265](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fbitbucket%2Fmulticoreware%2Fx265_git&cacheSeconds=1800)](https://bitbucket.org/multicoreware/x265_git)
    -   xz [![xz](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Ftukaani-project%2Fxz&cacheSeconds=1800)](https://github.com/tukaani-project/xz)
    -   zlib [![zlib](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fzlib-ng%2Fzlib-ng&cacheSeconds=1800)](https://github.com/zlib-ng/zlib-ng)
    -   zstd [![zstd](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Ffacebook%2Fzstd%2Fdev&cacheSeconds=1800)](https://github.com/facebook/zstd)

-   Zip
    -   [xvidcore](https://labs.xvid.com/source/) (1.3.7) 
    -   [lzo](https://fossies.org/linux/misc/) (2.10)
    -   [libopenmpt](https://lib.openmpt.org/libopenmpt/download/) (0.7.12)
    -   [libiconv](https://ftp.gnu.org/pub/gnu/libiconv/) (1.18)
    -   [vapoursynth](https://github.com/vapoursynth/vapoursynth)  ![](https://img.shields.io/github/v/release/vapoursynth/vapoursynth?style=flat-square&cacheSeconds=1800)





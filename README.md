# mpv-build

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/zhongfly/mpv-build/MPV)
[![releases](https://img.shields.io/github/v/release/zhongfly/mpv-build)](https://github.com/zhongfly/mpv-build/releases/latest)
[![downloads](https://img.shields.io/github/downloads/zhongfly/mpv-build/total)](https://github.com/zhongfly/mpv-build/releases)

Use Github Action to build mpv-win with latest commit.

Based on <https://github.com/shinchiro/mpv-winbuild-cmake>.

## Auto-Builds

Builds run daily at 12:00 UTC (trigger by [pipedream](https://pipedream.com/)) and are automatically released on success.

This repo only provides 64-bit version. If you need a 32-bit version, you can fork this repo and edit mpv.yml.

> `mpv-dev-x86_64-xxxx.7z` is 64-bit libmpv version, including the `mpv-1.dll` file.
> 
> Some media players based on libmpv will need `mpv-1.dll`.You can upgrade their built-in libmpv version by overwriting mpv-1.dll.

### Release Retention Policy

-   The last build of each month is kept for one years.
-   The last 14 daily builds are kept.

### CI Builds

Every hour, check whether there is a new commit in mpv repo, if there is a new commit, builds will run automatically but will not be released.

You can go to the the **[Action](https://github.com/zhongfly/mpv-build/actions)** tab in this repo,and download artifact from any successful action.

## Information about packages

same as [shinchiro](https://github.com/shinchiro/mpv-winbuild-cmake/blob/master/README.md#information-about-packages) [![](https://flat.badgen.net/github/last-commit/shinchiro/mpv-winbuild-cmake?cache=1800)](https://github.com/shinchiro/mpv-winbuild-cmake)

-   Git/Hg
    -   ANGLE [![ANGLE](https://flat.badgen.net/gitlab/last-commit/shinchiro/angle?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/angle)
    -   FFmpeg [![FFmpeg](https://flat.badgen.net/github/last-commit/FFmpeg/FFmpeg?scale=0.8&cache=1800)](https://github.com/FFmpeg/FFmpeg)
    -   xz [![xz](https://flat.badgen.net/gitlab/last-commit/shinchiro/xz?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/xz)
    -   x264 [![x264](https://flat.badgen.net/github/last-commit/mirror/x264?scale=0.8&cache=1800)](https://code.videolan.org/videolan/x264)
    -   [x265 (multilib)](https://bitbucket.org/multicoreware/x265_git)
    -   [uchardet](https://gitlab.freedesktop.org/uchardet/uchardet)
    -   rubberband [![rubberband](https://flat.badgen.net/github/last-commit/lachs0r/rubberband?scale=0.8&cache=1800)](https://github.com/lachs0r/rubberband)
    -   opus [![opus](https://flat.badgen.net/github/last-commit/xiph/opus?scale=0.8&cache=1800)](https://github.com/xiph/opus)
    -   openal-soft [![openal-soft](https://flat.badgen.net/github/last-commit/kcat/openal-soft?scale=0.8&cache=1800)](https://github.com/kcat/openal-soft)
    -   mpv [![mpv](https://flat.badgen.net/github/last-commit/mpv-player/mpv?scale=0.8&cache=1800)](https://github.com/mpv-player/mpv)
    -   luajit [![luajit](https://flat.badgen.net/github/last-commit/LuaJIT/LuaJIT?scale=0.8&cache=1800)](https://github.com/LuaJIT/LuaJIT)
    -   libvpx [![libvpx](https://flat.badgen.net/github/last-commit/webmproject/libvpx?scale=0.8&cache=1800)](https://chromium.googlesource.com/webm/libvpx)
    -   libwebp [![libwebp](https://flat.badgen.net/github/last-commit/webmproject/libwebp?scale=0.8&cache=1800)](https://chromium.googlesource.com/webm/libwebp)
    -   libpng [![libpng](https://flat.badgen.net/github/last-commit/glennrp/libpng?scale=0.8&cache=1800)](https://github.com/glennrp/libpng)
    -   libsoxr [![libsoxr](https://flat.badgen.net/gitlab/last-commit/shinchiro/soxr?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/soxr)
    -   libzimg [![libzimg](https://flat.badgen.net/github/last-commit/sekrit-twc/zimg?scale=0.8&cache=1800)](https://github.com/sekrit-twc/zimg)
    -   [libdvdread](https://code.videolan.org/videolan/libdvdread)
    -   [libdvdnav](https://code.videolan.org/videolan/libdvdnav)
    -   [libdvdcss](https://code.videolan.org/videolan/libdvdcss)
    -   [libbluray](https://code.videolan.org/videolan/libbluray)
    -   libass [![libass](https://flat.badgen.net/github/last-commit/libass/libass?scale=0.8&cache=1800)](https://github.com/libass/libass)
    -   libmysofa [![libmysofa](https://flat.badgen.net/github/last-commit/hoene/libmysofa?scale=0.8&cache=1800)](https://github.com/hoene/libmysofa)
    -   lcms2 [![lcms2](https://flat.badgen.net/github/last-commit/mm2/Little-CMS?scale=0.8&cache=1800)](https://github.com/mm2/Little-CMS)
    -   [lame](https://salsa.debian.org/multimedia-team/lame)
    -   harfbuzz [![harfbuzz](https://flat.badgen.net/github/last-commit/harfbuzz/harfbuzz/main?scale=0.8&cache=1800)](https://github.com/harfbuzz/harfbuzz)
    -   [game-music-emu](https://bitbucket.org/mpyne/game-music-emu)
    -   freetype2 [![freetype2](https://flat.badgen.net/gitlab/last-commit/shinchiro/freetype2?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/freetype2)
    -   flac [![flac](https://flat.badgen.net/github/last-commit/xiph/flac?scale=0.8&cache=1800)](https://github.com/xiph/flac)
    -   opus-tools [![opus-tools](https://flat.badgen.net/github/last-commit/xiph/opus-tools?scale=0.8&cache=1800)](https://github.com/xiph/opus-tools)
    -   mujs [![mujs](https://flat.badgen.net/github/last-commit/ccxvii/mujs?scale=0.8&cache=1800)](https://github.com/ccxvii/mujs)
    -   libarchive [![libarchive](https://flat.badgen.net/github/last-commit/libarchive/libarchive?scale=0.8&cache=1800)](https://github.com/libarchive/libarchive)
    -   libjpeg [![libjpeg](https://flat.badgen.net/github/last-commit/libjpeg-turbo/libjpeg-turbo/main?scale=0.8&cache=1800)](https://github.com/libjpeg-turbo/libjpeg-turbo)
    -   shaderc (with spirv-headers, spirv-tools, glslang) [![shaderc](https://flat.badgen.net/github/last-commit/google/shaderc/main?scale=0.8&cache=1800)](https://github.com/google/shaderc)
    -   vulkan [![Vulkan-Loader](https://flat.badgen.net/github/last-commit/KhronosGroup/Vulkan-Loader?scale=0.8&cache=1800)](https://github.com/KhronosGroup/Vulkan-Loader) [![Vulkan-Headers](https://flat.badgen.net/github/last-commit/KhronosGroup/Vulkan-Headers/main?scale=0.8&cache=1800)](https://github.com/KhronosGroup/Vulkan-Headers)
    -   spirv-cross [![spirv-cross](https://flat.badgen.net/github/last-commit/KhronosGroup/SPIRV-Cross?scale=0.8&cache=1800)](https://github.com/KhronosGroup/SPIRV-Cross)
    -   fribidi [![fribidi](https://flat.badgen.net/github/last-commit/fribidi/fribidi?scale=0.8&cache=1800)](https://github.com/fribidi/fribidi)
    -   nettle [![nettle](https://flat.badgen.net/gitlab/last-commit/shinchiro/nettle?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/nettle)
    -   curl [![curl](https://flat.badgen.net/github/last-commit/curl/curl?scale=0.8&cache=1800)](https://github.com/curl/curl)
    -   libxml2 [![libxml2](https://flat.badgen.net/github/last-commit/GNOME/libxml2?scale=0.8&cache=1800)](https://gitlab.gnome.org/GNOME/libxml2)
    -   amf-headers [![amf-headers](https://flat.badgen.net/github/last-commit/GPUOpen-LibrariesAndSDKs/AMF?scale=0.8&cache=1800)](https://github.com/GPUOpen-LibrariesAndSDKs/AMF/tree/master/amf/public/include)
    -   avisynth-headers [![avisynth-headers](https://flat.badgen.net/github/last-commit/AviSynth/AviSynthPlus?scale=0.8&cache=1800)](https://github.com/AviSynth/AviSynthPlus)
    -   nvcodec-headers [![nvcodec-headers](https://flat.badgen.net/github/last-commit/FFmpeg/nv-codec-headers?scale=0.8&cache=1800)](https://git.videolan.org/?p=ffmpeg/nv-codec-headers.git)
    -   libmfx [![libmfx](https://flat.badgen.net/github/last-commit/lu-zero/mfx_dispatch?scale=0.8&cache=1800)](https://github.com/lu-zero/mfx_dispatch)
    -   megasdk (with termcap, readline, cryptopp, sqlite, libuv, libsodium) [![megasdk](https://flat.badgen.net/github/last-commit/meganz/sdk?scale=0.8&cache=1800)](https://github.com/meganz/sdk)
    -   [aom](https://aomedia.googlesource.com/aom/)
    -   dav1d [![dav1d](https://flat.badgen.net/github/last-commit/videolan/dav1d?scale=0.8&cache=1800)](https://code.videolan.org/videolan/dav1d/)
    -   libplacebo [![libplacebo](https://flat.badgen.net/github/last-commit/haasn/libplacebo?scale=0.8&cache=1800)](https://github.com/haasn/libplacebo)
    -   [fontconfig](https://gitlab.freedesktop.org/fontconfig/fontconfig)
    -   libbs2b [![libbs2b](https://flat.badgen.net/github/last-commit/alexmarsev/libbs2b?scale=0.8&cache=1800)](https://github.com/alexmarsev/libbs2b)
    -   [libssh](https://git.libssh.org/projects/libssh.git)
    -   libsrt [![libsrt](https://flat.badgen.net/github/last-commit/Haivision/srt?scale=0.8&cache=1800)](https://github.com/Haivision/srt)

-   Zip
    -   expat (2.4.1)
    -   bzip (1.0.8)
    -   zlib (1.2.11)
    -   xvidcore (1.3.7)
    -   vorbis (1.3.7)
    -   speex (1.2.0)
    -   ogg (1.3.5)
    -   lzo (2.10)
    -   libmodplug (0.8.9.0)
    -   libopenmpt (0.5.10)
    -   libiconv (1.16)
    -   gmp (6.2.1)
    -   vapoursynth (R57)
    -   libsdl2 (2.0.16)
    -   libressl (3.1.5)

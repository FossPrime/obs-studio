{ pkgs }: { deps = with pkgs; [
  clang_12
  ccls
  gdb
  gnumake
  
  # obs-studio # Prolly unnecesary
  ninja

  # From https://github.com/NixOS/nixpkgs/blob/nixos-22.11/pkgs/applications/video/obs-studio/default.nix
  # config
  # lib
  llvmPackages.libcxxStdenv # stdenv
  addOpenGLRunpath # cudaPackages.autoAddOpenGLRunpathHook
  cmake
  fdk_aac
  ffmpeg_4
  jansson
  libjack2
  libxkbcommon
  xorg.libpthreadstubs # libpthreadstubs
  xorg.libXdmcp # libXdmcp
  libsForQt5.qt5.qtbase # qtbase
  libsForQt5.qt5.qtsvg # qtsvg
  speex
  libv4l
  x264
  curl
  wayland
  # xorg # Todo: error: Dependency is not of a valid type: element 21 of buildInputs for nix-shell
  pkg-config
  libvlc
  mbedtls
  wrapGAppsHook
  luajit
  swig
  python3
  alsa-lib
  pulseaudio
  libpulseaudio
  libcef
  pciutils
  pipewire
  libdrm
  libajantv2
  librist
  srt
  libsForQt5.qt5.qtwayland
  libsForQt5.qt5.wrapQtAppsHook

  libuuid
]; }
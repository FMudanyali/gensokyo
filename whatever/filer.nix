{ stdenv, fetchFromGitHub, pkgs, ... }:

stdenv.mkDerivation {
  name = "filer";
  src = fetchFromGitHub {
    owner = "helloSystem";
    repo = "Filer";
    rev = "aadba341e2827d22831a9f6bb6c590b0986b9bec";
    sha256 = "04sklpylg8y8gyli30fgq0k16gd6xs5g3xql8svrwh3cfm2gygp9";
  };

  buildInputs = with pkgs; [
    qt5.full
    qtcreator
    libfm
    glib
    cmake
    pkg-config
    xorg.libX11
    xorg.libxcb
    pcre
    mount
    menu-cache
  ];

  configurePhase = ''
    mkdir build
    cd build
    cmake ..
  '';

  buildPhase = ''
    make -j8
  '';

  installPhase = ''
    mkdir -p $out/bin
    mkdir -p $out/share/applications
    mkdir $out/share/pixmap
    mv src/Filer $out/bin/filer-qt
    mv src/filer-qt.desktop $out/share/applications
    mv ../src/icons/filer-1024.png $out/share/pixmap/filer.png
  '';
}
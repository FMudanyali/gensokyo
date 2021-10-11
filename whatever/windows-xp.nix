{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "raleigh-reloaded";
  src = fetchFromGitHub {
    owner = "B00merang-Project";
    repo = "Windows-XP";
    rev = "9e14435850305573ce14375151ef1460f601d51e";
    sha256 = "1jkf8d0fwkidjadgn690k4fx26nk2p8wkgmzychzcf5pq2azn2ws";
  };

  installPhase = ''
    rm *.md
    mkdir -p $out/share/themes/
    mv * $out/share/themes/.
  '';
}
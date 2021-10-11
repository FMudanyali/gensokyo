{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "raleigh-reloaded";
  src = fetchFromGitHub {
    owner = "vlastavesely";
    repo = "raleigh-reloaded";
    rev = "1106b43eeaa0e8c02b5bd0ca5775e542cea85b6b";
    sha256 = "1z2naa8ilm1n5p9mwgkddkgw16k18zps8c2zkwlrx862bxlj68bl";
  };
  
  buildPhase = "rm Makefile";

  installPhase = ''
    mkdir -p $out/share/themes/raleigh-reloaded
    mv src/* $out/share/themes/raleigh-reloaded/.
  '';
}
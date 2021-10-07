{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
	name = "win95-gtk-theme";
	src = fetchFromGitHub {
		owner = "B00merang-Project";
		repo = "Windows-95";
		rev = "f486ac6ad22c385a93a5cd92df79e9187195da0b";
		sha256 = "1yqj9v3za5kz3yk5gyjlr400n86q775wqkhrl014bp5x72cqrp5p";
	};
	
	installPhase = ''
		mkdir -p $out/share/themes/win95-gtk-theme
		mv * $out/share/themes/win95-gtk-theme/.
	'';
}

#stolen from usagi lmao
{ pkgs, ... }:

{
  fonts.fontconfig.defaultFonts.monospace = [ "Fantasque Sans Mono" ];
  fonts.fontconfig.defaultFonts.sansSerif = [ "IBM Plex Sans" ];
  fonts.fontconfig.defaultFonts.serif = [ "IBM Plex Serif" ];

  fonts.fonts = with pkgs; [
    fantasque-sans-mono
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    terminus_font_ttf
    proggyfonts
    libertine
    ibm-plex
  ];
}

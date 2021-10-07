{ config, pkgs, ... }:
let
    home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-21.05.tar.gz";
in
{
    imports = [
        (import "${home-manager}/nixos")
    ];

    home-manager.users.furkan = {
        programs = {
            git = {
                enable = true;
                userName = "FMudanyali";
                userEmail = "fmudanyali@icloud.com";
            };
            zsh = {
                enable = true;
                shellAliases = {
                    ydl = "noglob youtube-dl";
                };
                history = {
                    size = 10000;
                    path = ".config/zsh/history";
                };
                plugins = [
                {
                    name = "fast-syntax-highlighting";
                    src = pkgs.fetchFromGitHub {
                        owner = "zdharma";
                        repo = "fast-syntax-highlighting";
                        rev = "817916dfa907d179f0d46d8de355e883cf67bd97";
                        sha256 = "1yqj9v3za5kz3yk5gyjlr400n86q775wqkhrl014bp5x72cqrp5p";
                    };
                }
                ];
                initExtra = ''
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd
stty stop undef
setopt interactive_comments
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
echo -ne '\e[5 q'
preexec() { echo -ne '\e[5 q' ;}
                '';
            };
        };
    };
}

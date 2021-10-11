{ config, pkgs, ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-21.05.tar.gz";
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];

  home-manager.users.furkan = {
    gtk = {
      enable = true;
      font = { 
        name = "IBM Plex Sans 10";
        package = pkgs.ibm-plex;
      };
      iconTheme = {
        name = "Rodent";
        package = pkgs.xfce.xfce4-icon-theme;
      };
      theme = {
        name = "raleigh-reloaded";
        package = pkgs.raleigh-reloaded;
      };
    };
    programs = {
      neovim = {
        enable = true;
        viAlias = true;
        vimAlias = true;
        withPython3 = true;
        withRuby = true;
        extraConfig = ''
          set number
          set tabstop=4
          set softtabstop=4
          set shiftwidth=4
          set expandtab
          set autoindent
          set copyindent
          set showmatch
          set wildmenu
          set cursorline
          set showcmd
          set termguicolors
          let g:context_nvim_no_redraw = 1
        '';
        plugins = with pkgs.vimPlugins;
        let
          context-vim = pkgs.vimUtils.buildVimPlugin {
          name = "context-vim";
          src = pkgs.fetchFromGitHub {
            owner = "wellle";
            repo = "context.vim";
            rev = "e38496f1eb5bb52b1022e5c1f694e9be61c3714c";
            sha256 = "1iy614py9qz4rwk9p4pr1ci0m1lvxil0xiv3ymqzhqrw5l55n346";
          };
        };
        in [
          context-vim
          editorconfig-vim
          vim-airline
          vim-elixir
          vim-nix
        ];
      };
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

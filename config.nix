{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "dev-tools";
      paths = [
        bat
        fd
        fzf
        lazygit
        neovim
        ripgrep
        stow
        starship
        zsh
        zsh-syntax-highlighting
        zsh-vi-mode
      ];
    };
  };
}

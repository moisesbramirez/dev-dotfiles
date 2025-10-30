{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "dev-tools";
      paths = [
        bat
        diff-so-fancy
        difftastic
        fd
        fzf
        lazygit
        gh
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

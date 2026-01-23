{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "dev-tools";
      paths = [
        ast-grep
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
        tree-sitter
        zsh
        zsh-syntax-highlighting
        zsh-vi-mode
      ];
    };
  };
}

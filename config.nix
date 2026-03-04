{
  allowUnfree = true;
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "dev-tools";
      paths = [
        ast-grep
        bat
        claude-code
        claude-code-acp
        delve
        diff-so-fancy
        difftastic
        fd
        fzf
        gh
        golint
        jq
        lazygit
        neovim
        opencode
        pre-commit
        ripgrep
        starship
        stow
        tree-sitter
        zsh
        zsh-syntax-highlighting
        zsh-vi-mode
      ];
    };
  };
}

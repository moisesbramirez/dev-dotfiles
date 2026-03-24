## Bare Nix config and setup for dev-containers

This is configuration for my favorite tools. This can be added to the host machine or within Dev Containers. The only prerequisite for the Dev Containers approach is to have `@devcontainers/cli`[1](https://github.com/devcontainers/cli) and Docker on the host machine. Tools can be installed into the Dev Container via [homebrew feature](https://containers.dev/features?search=homebrew) and defined in a Brewfile.

### Build container:
```sh
devcontainer up --workspace-folder . --remove-existing-container --override-config <CUSTOM_DEVCONTAINER.json> --dotfiles-repository https://github.com/moisesbramirez/dev-dotfiles.git
```

### Run neovim within container:
```sh
devcontainer exec --workspace-folder . nvim
```

### Run shell within container:
```sh
devcontainer exec --workspace-folder . zsh
```

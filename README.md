## Bare Nix config and setup for dev-containers

This will allow installing my favorite tools within Dev Containers that offers the [Nix feature](https://containers.dev/features?search=nix). The only prerequisite for this approach is to have `@devcontainers/cli`[[1](https://www.youtube.com/watch?v=FzINeQ92g3w)][[2](https://github.com/devcontainers/cli)] and Docker on the host machine.

### Build container:
```sh
devcontainer up --workspace-folder . --remove-existing-container --dotfiles-repository https://github.com/moisesbramirez/dev-dotfiles.git
```

### Run neovim within container:
```sh
devcontainer exec --workspace-folder . nvim
```

### Run shell within container:
```sh
devcontainer exec --workspace-folder . zsh
```

Inspired by:
https://www.youtube.com/watch?v=kpBXrsVg83Y

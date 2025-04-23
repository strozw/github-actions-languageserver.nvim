# github-actions-languageserver.nvim

> [!WARNING]
> This repository has been archived because support using [gh-actions-language-server with nvim-lspconfig](https://github.com/neovim/nvim-lspconfig/blob/master/lsp/gh_actions_ls.lua) has been implemented.

`github-actions-languageserver.nvim` is add github-actions-languageserver setup config into lspconfig.

## Requirements

- Node.js >= 16.x
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

## Installing

### with lazy.nvim

```lua
    { "strozw/github-actions-languageserver.nvim" }
```

## Usages

```lua
require("github-actions-languageserver").setup()

local lspconfig = require("lspconfig")

lspconfig.github_actions.setup({
  --@see https://github.com/actions/languageservices/blob/main/languageserver/src/initializationOptions.ts#L4-L31
  init_params = {}
})
```

> [!CAUTION]
> At this time, we have not investigated how to obtain the `settionToken` and `repos` to be passed to `init_params`, so if you use the default values, auto-completion will not work for global `env` and `vars`, and for custom action `args` etc.

## Credits

- [@actions/languageserver](https://github.com/actions/languageservices/tree/main/languageserver)
- [GitHub Actions for VS Code](https://github.com/github/vscode-github-actions)

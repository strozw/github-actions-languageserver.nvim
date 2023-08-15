# github-actions-languageserver.nvim

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
  init_params = {
    sessionToken = "Your GitHub PAT (needed scopes is repo & workflow)"
    logLevel = 3 -- Debug: 0, Info: 1, Warn: 2, Error: 3
  }
})
```

## Credits

- [@actions/languageserver](https://github.com/actions/languageservices/tree/main/languageserver)
- [GitHub Actions for VS Code](https://github.com/github/vscode-github-actions)

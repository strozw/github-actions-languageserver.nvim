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

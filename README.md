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
  init_params = {
    sessionToken = "Your GitHub PAT"
  }
})
```

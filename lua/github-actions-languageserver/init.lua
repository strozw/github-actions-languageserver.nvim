local M = {}

local lspconfig_util = require("lspconfig.util")

local default_config = {
  cmd = {
    "npx",
    "@strozw/github-actions-languageserver@latest",
    "--stdio",
  },
  init_options = {},
  filetypes = { "yaml", "yml" },
  root_dir = function(fname)
    if not (string.find(fname, ".github/workflows")) then
      return nil
    end

    return lspconfig_util.path.dirname(fname)
  end,
}

function M.setup()
  require("lspconfig.configs").github_actions = {
    default_config = default_config,
  }
end

return M

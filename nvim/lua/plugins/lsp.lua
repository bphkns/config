return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ensure_installed = {
        "nxls",
        "angularls",
      },
      servers = {
        angularls = {
          root_dir = require("lspconfig").util.root_pattern("angular.json", "project.json"),
          filetypes = { "angular", "html", "typescript", "typescriptreact" },
        },
        tsserver = {
          settings = {
            completions = {
              completeFunctionCalls = false,
            },
          },
        },
      },
    },
  },
}

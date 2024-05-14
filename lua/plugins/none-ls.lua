return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,

        -- Go
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.golines,
        null_ls.builtins.formatting.goimports_reviser,

        -- Javascript
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint_d"),
      },
    })

    require("keymaps.none-ls")
  end,
  dependencies = { "nvimtools/none-ls-extras.nvim" },
}

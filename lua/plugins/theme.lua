return {
  -- "navarasu/onedark.nvim",
  -- "olimorris/onedarkpro.nvim",
  "catppuccin/nvim",
  -- "rebelot/kanagawa.nvim",
  -- "marko-cerovac/material.nvim",
  -- "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local guifg = "#aed5fc"
    -- vim.cmd("colorscheme onedark")
    vim.cmd("colorscheme catppuccin-mocha")
    -- vim.cmd("colorscheme kanagawa")
    -- vim.cmd("colorscheme material-darker")
    -- vim.cmd("colorscheme tokyonight-storm")
    vim.cmd("highlight TabLineSel guifg=" .. guifg)
  end,
}

local mason_packages = {
  -- Python
  "ruff-lsp",

  -- Go
  "gopls",
  "golines",
  "gofumpt",
  "goimports-reviser",

  -- Rust
  "rust-analyzer",

  -- Javascript
  "prettier",
  "eslint_d",
}

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ensure_installed = mason_packages,
      })

      -- Create MasonInstallAll command
      vim.api.nvim_create_user_command("MasonInstallAll", function()
        vim.cmd("MasonInstall " .. table.concat(mason_packages, " "))
      end, {})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- Lua
          "lua_ls",

          -- Web
          "tsserver",
          "html",
          "cssls",
          "emmet_ls",
          "tailwindcss",

          -- Backend
          "ruff_lsp",
          "gopls",
          "phpactor",

          -- Low level
          "rust_analyzer",
          -- "clangd",

          -- SQL
          -- "sqlls",

          -- Make
          "autotools_ls",

          -- Docker
          "dockerls",
          "docker_compose_language_service",

          -- Java
          -- "kotlin_language_server",

          -- Others
          "jsonls",
          "yamlls",
          -- "powershell_es",
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.tsserver.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
      lspconfig.emmet_ls.setup({})
      -- lspconfig.tailwindcss.setup({})
      lspconfig.ruff_lsp.setup({
        capabilities = capabilities,
        filetypes = { "python" },
      })
      lspconfig.gopls.setup({ capabilities = capabilities })
      -- lspconfig.phpactor.setup({})
      lspconfig.rust_analyzer.setup({ capabilities = capabilities })
      -- lspconfig.clangd.setup({})
      -- lspconfig.sqlls.setup({})
      -- lspconfig.autotools_ls.setup({})
      lspconfig.dockerls.setup({ capabilities = capabilities })
      lspconfig.docker_compose_language_service.setup({ capabilities = capabilities })
      -- lspconfig.kotlin_language_server.setup({})
      lspconfig.jsonls.setup({ capabilities = capabilities })
      -- lspconfig.yamlls.setup({})
      -- lspconfig.powershell_es.setup({})

      -- Keymaps
      require("keymaps.lspconfig")
    end,
  },
}

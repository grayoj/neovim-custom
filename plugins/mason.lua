-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "cssls",
        "gopls",
        "html",
        "intelephense",
        "marksman",
        "jsonls",
        "pyright",
        "lua_ls",
        "tsserver",
        "yamlls",
        "astro",
        "bashls",
        "emmet_ls",
        "cssmodules_ls",
        "sqlls",
        "tailwindcss",
        "rust_analyzer",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "shellcheck",
        "stylua",
        "black",
        "prettierd",
        "shfmt",
        "shellcheck",
        "goimports",
        "goimports",
        "gomodifytags",
        "gotests",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "bash",
        "cppdbg",
        "delve",
        "js",
        "php",
        "python",
      })
    end,
  },
}

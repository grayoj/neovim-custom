return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      integrations = {
        alpha = true,
        aerial = true,
        dap = { enabled = true, enable_ui = true },
        mason = true,
        neotree = true,
        notify = true,
        nvimtree = true,
        semantic_tokens = true,
        symbols_outline = true,
        telescope = true,
        ts_rainbow = true,
        which_key = true,
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {
          "italic",
        },
        keywords = {},
        strings = {},
        variables = {},
        numbers = { "italic" },
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      -- color_overrides = {
      --   mocha = {
      --     base = "#050505",
      --     mantle = "#1D2021",
      --     crust = "#1D2021",
      --   },
      -- },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
}

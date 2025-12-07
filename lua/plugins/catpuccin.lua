return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup({
      flavour = "frappe",

      transparent_background = true,  -- FULL transparency

      term_colors = true,

      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        mason = true,
        lualine = true,

        -- Also make floats/windows transparent
        native_lsp = {
          enabled = true,
          underlines = { errors = {}, hints = {}, warnings = {}, information = {} },
        },
      },

      custom_highlights = function(colors)
        return {
          NormalFloat = { bg = "none" },
          Normal = { bg = "none" },
          SignColumn = { bg = "none" },
          ColorColumn = { bg = "none" },
          StatusLine = { bg = "none" },
          StatusLineNC = { bg = "none" },
          LineNr = { bg = "none" },
          CursorLineNr = { bg = "none" },
          WinBar = { bg = "none" },
          WinBarNC = { bg = "none" },
          FloatBorder = { bg = "none" },
          Pmenu = { bg = "none" },
          PmenuSel = { bg = colors.surface1 },
        }
      end,
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}

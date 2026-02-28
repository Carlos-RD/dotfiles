return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Contrast / background
      vim.g.gruvbox_material_background = "medium" -- replaces contrast = "" (medium is default)
      vim.g.gruvbox_material_foreground = "material" -- 'material', 'mix', 'original'

      -- Typography
      vim.g.gruvbox_material_enable_bold = 1 -- replaces bold = true
      vim.g.gruvbox_material_enable_italic = 1 -- replaces italic.comments/emphasis = true

      -- UI behavior
      vim.g.gruvbox_material_visual = "grey background" -- replaces invert_selection = false
      vim.g.gruvbox_material_dim_inactive_windows = 0 -- replaces dim_inactive = false
      vim.g.gruvbox_material_sign_column_background = "none"

      -- Transparency (replaces transparent_mode = true)
      vim.g.gruvbox_material_transparent_background = 2

      -- Performance
      vim.g.gruvbox_material_better_performance = 1
      --Highlights
      vim.g.gruvbox_material_highlights = { Normal = { fg = "#123123", bg = "NONE", style = "underline" } }

      -- Enable telescope theme
      vim.g.gruvbox_material_telescope_theme = 1

      local function make_transparent()
        local groups = {
          "Normal",
          "NormalNC",
          "NormalFloat",
          "SignColumn",
          "LineNr",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "VertSplit",
          "WinSeparator",
          "TelescopeNormal",
          "TelescopeBorder",
          "NeoTreeNormal",
          "NeoTreeNormalNC",
        }
        for _, group in ipairs(groups) do
          vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
        end
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "gruvbox-material",
        callback = make_transparent,
      })

      vim.cmd.colorscheme("gruvbox-material")
      make_transparent()
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}

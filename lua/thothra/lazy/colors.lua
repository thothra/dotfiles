function ColorMyPencils(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

  {
    "erikbackman/brightburn.vim",
  },

  {
    "scottmckendry/cyberdream.nvim",
    name = "cyberdream",
    lazy = false,
    priority = 1000,
    config = function()
      ColorMyPencils()
    end
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    config = function()
      vim.opt.background = "dark"
      vim.cmd("colorscheme oxocarbon")
    end
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {},
    config = function()
      ColorMyPencils()
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = false,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    config = function()
      require('tokyonight').setup({
        style = "moon",
        light_style = "day",
        transparent = true,
        terminal_colors = true,
        day_brightness = 0.3,
        dim_inactive = false,
        lualine_bold = false,
        cache = true,

        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          sidebars = "dark",
          floats = "dark",
        },

        on_colors = function(colors) end,
        on_highlights = function(highlights, colors) end,

        plugins = {
          all = package.loaded.lazy == nil,
          auto = true,
        },
      })
    end
 },

}

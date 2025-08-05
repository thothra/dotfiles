return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter', -- or 'VimEnter', 'VeryLazy', etc.
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip', -- if using LuaSnip for snippets
    -- other cmp sources
  },
  config = function()
    require('cmp').setup {
      -- your nvim-cmp configuration
    }
  end,
}

return {
  'Hoffs/omnisharp-extended-lsp.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  ft = { 'cs' }, -- Only load for C# files
  config = function()
    require('omnisharp_extended').setup()
  end,
}

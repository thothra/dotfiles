return {
  "mason-org/mason.nvim",
  dependencies = {},
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
    ensure_installed = {
      "black",
      "isort",
      "lua-laugnage-server",
      "powershell-editor-services",
      "prettier",
      "prettierd",
      "pyright",
      "stylua",
    },
  },
}

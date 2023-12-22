local on_attach = require("plugins.lsp.utils").on_attach
local capabilities = require("plugins.lsp.utils").capabilities

require("flutter-tools").setup {
  widget_guides = {
    enabled = true,
  },
  dev_log = {
    enabled = true,
    notify_errors = true,
  },
  dev_tools = {
    autostart = false,
    auto_open_browser = false,
  },
  lsp = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
}

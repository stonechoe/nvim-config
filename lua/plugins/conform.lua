return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { { "prettier", "eslint_d" } },
        typescript = { { "prettier", "eslint_d" } },
        python = { "isort", "black" },
        json = { "jq" },
        yaml = { "yq" },
        dart = { "dartfmt" },
      },
    }
  end,
}

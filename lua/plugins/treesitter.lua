return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if not ok then
      vim.schedule(function()
        vim.notify("nvim-treesitter.configs could not be loaded", vim.log.levels.WARN)
      end)
      return
    end

    configs.setup {
      ensure_installed = {
        "c",
        "lua",
        "gitignore",
        "gitcommit",
        "html",
        "css",
        "rust",
        "go",
        "javascript",
        "typescript",
        "markdown",
      },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}

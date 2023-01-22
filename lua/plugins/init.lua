require("lazy").setup({
  "L3MON4D3/LuaSnip",
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.lsp")
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    -- load cmp on InsertEnter
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip"
    },
    config = function()
      require("plugins.cmp")
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("plugins.mason")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("plugins.treesitter")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("plugins.telescope")
    end,
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("plugins.harpoon")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    },
    config = function()
      require("plugins.nvim-tree")
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("plugins.copilot")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("plugins.theme")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup {
        show_current_context = true,
        show_current_context_start = true,
      }
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = true,
  },
  {
    "numToStr/Comment.nvim",
    config = true
  }
})

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "configs.null-ls"
        end,
      },
    },
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   config = function()
  --     require "configs.null-ls"
  --   end,
  -- },

  {
    "karb94/neoscroll.nvim",
    lazy = false,
    config = function()
      require "configs.neoscroll"
    end,
  },

  {
    "pocco81/auto-save.nvim",
    lazy = false,
  },

  {
    "Civitasv/cmake-tools.nvim",
    event = "LspAttach",
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}

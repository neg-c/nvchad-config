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
    opts = {},
    event = "LspAttach",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {},
    auto_install = true,
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}

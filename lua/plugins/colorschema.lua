return {
  -- add sonokai
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = true
    --   vim.g.sonokai_style = 'atlantis'
      vim.g.sonokai_transparent_background = 1
      vim.g.sonokai_better_performance = 1
    --   vim.opt.termguicolors = true
    --   vim.cmd.colorscheme('sonokai')
    end
  },
  
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    opts = {
      transparent_background = true,
      term_colors = true,
      integrations = {
          treesitter = true,
          telescope = true,
          nvimtree = {
              enabled = true,
              show_root = false,
              transparent_panel = true,
          },
      }
    }
  },

  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
}

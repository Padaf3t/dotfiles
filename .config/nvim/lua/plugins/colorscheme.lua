local colorscheme = require "lazyvim.plugins.colorscheme"
return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox"
    }
  }
}

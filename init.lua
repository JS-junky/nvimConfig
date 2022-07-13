require("user.lsp")
require("user.diagnostic")
require("user.completion.cmp")
require("user.indent-blankline")
require("user.nvim-tree")
require("user.tabline")
require("user.telescope")
require("user.treesitter")

vim.cmd [[
  source $HOME/.config/nvim/vim/vim-plug.vim
  source $HOME/.config/nvim/vim/general.vim
  source $HOME/.config/nvim/vim/mapping.vim
  source $HOME/.config/nvim/vim/neoformat.vim
  source $HOME/.config/nvim/vim/closetag.vim
  source $HOME/.config/nvim/vim/lsp-config.vim
  source $HOME/.config/nvim/vim/vcooler.vim
  source $HOME/.config/nvim/vim/maximizer.vim
]]

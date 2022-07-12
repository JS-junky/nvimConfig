require("lsp")
require("diagnostic")
require("completion.cmp")
require("indent-blankline")
require("nvim-tree")
require("tabline")
require("telescope")
require("treesitter")

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

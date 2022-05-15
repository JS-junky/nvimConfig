    " set runtimepath^=~/.vim runtimepath+=~/.vim/after
    " let &packpath = &runtimepath
    " source ~/.vimrc
 
source $HOME/.config/nvim/configVim/vim-plug.vim
source $HOME/.config/nvim/configVim/general.vim
source $HOME/.config/nvim/configVim/mapping.vim
source $HOME/.config/nvim/configVim/neoformat.vim
source $HOME/.config/nvim/configVim/closetag.vim
source $HOME/.config/nvim/configVim/lsp-config.vim
source $HOME/.config/nvim/configVim/vcooler.vim
" source $HOME/.config/nvim/configVim/coc.vim
luafile $HOME/.config/nvim/configLua/lsp.lua
luafile $HOME/.config/nvim/configLua/cmp.lua
luafile $HOME/.config/nvim/configLua/nvim-tree.lua
luafile $HOME/.config/nvim/configLua/treesitter.lua
luafile $HOME/.config/nvim/configLua/telescope.lua
luafile $HOME/.config/nvim/configLua/lualine.lua
luafile $HOME/.config/nvim/configLua/references-qflist.lua
luafile $HOME/.config/nvim/configLua/tabline.lua
luafile $HOME/.config/nvim/configLua/indent-blankline.lua

    " set runtimepath^=~/.vim runtimepath+=~/.vim/after
    " let &packpath = &runtimepath
    " source ~/.vimrc

source $HOME/.config/nvim/configVim/vim-plug.vim
source $HOME/.config/nvim/configVim/general.vim
source $HOME/.config/nvim/configVim/mapping.vim
" source $HOME/.config/nvim/configVim/prettier.vim
source $HOME/.config/nvim/configVim/closetag.vim
source $HOME/.config/nvim/configVim/vim-indent-guides.vim
source $HOME/.config/nvim/configVim/lsp-config.vim
source $HOME/.config/nvim/configVim/nvim-tree.vim
source $HOME/.config/nvim/configVim/nvim-compe.vim
" source $HOME/.config/nvim/configVim/coc.vim
" luafile $HOME/.config/nvim/configLua/lsp-config.lua
luafile $HOME/.config/nvim/configLua/treesitter.lua
luafile $HOME/.config/nvim/configLua/nvim-compe.lua
luafile $HOME/.config/nvim/configLua/telescope.lua
luafile $HOME/.config/nvim/configLua/lsp-signature.lua
" luafile $HOME/.config/nvim/configLua/typescirpt-language-server.lua
luafile $HOME/.config/nvim/configLua/lualine.lua
luafile $HOME/.config/nvim/configLua/lspsaga.lua
luafile $HOME/.config/nvim/configLua/virtual-text-toggle.lua

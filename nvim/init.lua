vim.opt.runtimepath:append('~/.config/nvim/lua')

-- Base config, should work with any vim setup
vim.cmd('source ~/.vimrc')

-- Source the lua file if needed
vim.keymap.set('n', "<leader>.l", ":luafile ~/.config/nvim/init.lua<CR>")

-- I don't know why this has to be a lua module, but if it's not then it doesn't seem to actually
-- load the plugins properly
require("plug-setup")

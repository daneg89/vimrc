-- Because sometimes you're too lazy to make a file for every single plugin

-- Lightline theme
vim.g.lightline = { colorscheme = 'onedark' }

-- Airline theme
vim.g.airline_theme='onedark'

-- Ultisnips settings
vim.g.UltiSnipsExpandTrigger="<tab>"
vim.g.UltiSnipsJumpForwardTrigger="<c-k>"
vim.g.UltiSnipsJumpBackwardTrigger="<c-b>"

-- NERDTree
vim.keymap.set('n', "<leader>e", ":NERDTreeToggle<CR>")

vim.g.indentLine_char_list = {'|', '¦', '┆', '┊'}
vim.g.indentLine_fileTypeExclude = {'markdown', 'json'}


vim.g.rainbow_active = 1

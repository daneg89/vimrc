local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find project files' })
vim.keymap.set('n', '<leader>tt', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>tg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>th', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>tq:', builtin.command_history, { desc = 'Telescope command history search + execute' })
vim.keymap.set('n', '<leader>t/', builtin.search_history, { desc = 'Telescope search history' })

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
}

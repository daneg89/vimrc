vim.keymap.set('n', "<leader>f", ':CtrlSF<space>')
vim.keymap.set('v', "<S-f>", "<Plug>CtrlSFVwordPath")

vim.g.ctrlsf_ackprg='rg'
-- Just go to the window to browse search results
vim.g.ctrlsf_auto_focus = { at = "start" }
-- Results go to quickfix so we can use cnext
vim.g.ctrlsf_populate_qflist = 1
-- Was seeing errors from this, just disable it
vim.g.ctrlsf_fold_result = 0

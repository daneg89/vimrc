vim.g.ale_linters = {
   javascript = {'eslint'},
}

vim.g.ale_fixers = {
   ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
   javascript = {'eslint'},
}

vim.g.ale_sign_error = '✘'
vim.g.ale_sign_warning = '⚠'

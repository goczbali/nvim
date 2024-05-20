return {
  'lervag/vimtex',
  ft = { 'tex' },
  init = function()
    -- VimTeX configuration goes here
    vim.g.vimtex_view_method = 'skim'
    -- vim.g.vimtex_view_skim_sync = 1
    -- vim.g.vimtex_view_skim_activate = 1
    vim.g.tex_flavor = 'latex'
  end,
}

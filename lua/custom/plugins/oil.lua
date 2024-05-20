return {
  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup {
        columns = { 'icon' },
      }

      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
      vim.keymap.set('n', '<leader>-', require('oil').toggle_float, { desc = 'Open parent directory in floating window' })
    end,
  },
}

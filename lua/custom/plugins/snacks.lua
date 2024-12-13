return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    lazygit = { configure = true },
    dashboard = { example = 'advanced' },
    terminal = {},
  },
  config = function(_, opts)
    require('snacks').setup(opts)

    vim.keymap.set('n', '<leader>gl', function()
      require('snacks').lazygit()
    end, { desc = 'Lazygit' })

    vim.keymap.set('n', '<leader>m', function()
      require('snacks').terminal.toggle()
    end, { desc = 'Terminal' })

    vim.keymap.set('t', '<C-space>', function()
      require('snacks').terminal.toggle()
    end, { desc = 'Terminal' })
  end,
}

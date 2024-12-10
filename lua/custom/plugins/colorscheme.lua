return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    -- 'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- require('catppuccin').setup {
      --   flavour = 'latte',
      -- }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'tokyonight-night'
      vim.cmd.colorscheme 'tokyonight-night'

      -- Disable undercurl and replace it with an underline
      vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { undercurl = false, underline = true, sp = '#db4b4b' }) -- Red for errors
      vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { undercurl = false, underline = true, sp = '#e0af68' }) -- Yellow for warnings
      vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { undercurl = false, underline = true, sp = '#0db9d7' }) -- Blue for info
      vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { undercurl = false, underline = true, sp = '#10b981' }) -- Green for hints

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}

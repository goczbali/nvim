return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Autoclose
      require('mini.pairs').setup()

      -- Files
      -- require('mini.files').setup()
      -- vim.keymap.set('n', '-', function()
      --   MiniFiles.open()
      -- end, { desc = 'Mini Files' })

      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup {
        -- Module mappings. Use `''` (empty string) to disable one.
        -- mappings = {
        --   add = 'msa', -- Add surrounding in Normal and Visual modes
        --   delete = 'msd', -- Delete surrounding
        --   find = 'msf', -- Find surrounding (to the right)
        --   find_left = 'msF', -- Find surrounding (to the left)
        --   highlight = 'msh', -- Highlight surrounding
        --   replace = 'msr', -- Replace surrounding
        --   update_n_lines = 'msn', -- Update `n_lines`
        --
        --   suffix_last = 'l', -- Suffix to search with "prev" method
        --   suffix_next = 'n', -- Suffix to search with "next" method
        -- },
      }

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- Sessions
      require('mini.sessions').setup()

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
}

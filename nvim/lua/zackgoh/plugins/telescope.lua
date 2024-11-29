return {
  { 
    'nvim-telescope/telescope.nvim', tag = '0.1.8',

     dependencies = { 
       'nvim-lua/plenary.nvim',
       { 'nvim-telescope/telescope-fzf-native.nvim', 
       build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }
     },

     config = function()
       local telescope = require('telescope')

       telescope.load_extension('fzf')

       local builtin = require('telescope.builtin')

       vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
       vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
       vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
       vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

     end
  },
  -- telescope_extension
  {
    "nvim-telescope/telescope-ui-select.nvim",

    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown{
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}

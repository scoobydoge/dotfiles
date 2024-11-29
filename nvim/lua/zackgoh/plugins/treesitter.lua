return{
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag"
    },

    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { 
            "c", 
            "lua", 
            "vim", 
            "vimdoc", 
            "query", 
            "elixir", 
            "heex", 
            "javascript", 
             "html"
          },
          incremental_selection = {
            enable = true,
            keymaps = {
              init_selection = "<Leader>ss",
              node_incremental = "<Leader>si",
              scope_incremental = "<Leader>sc",
              node_decremental = "<Leader>sd"
            } 
          },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
          autotag = { enable = true}
        })
    end,
}

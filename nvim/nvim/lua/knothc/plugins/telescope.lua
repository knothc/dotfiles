return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
      pickers = {
        find_files = {
          theme = "dropdown",
          hidden = true,
        },
        buffers = {
          theme = "dropdown",
          -- path_display = { "tail" },
        },
        treesitter = {
          theme = "ivy",
        },
        live_grep = {  
          -- find_command = { "rg", "--ignore", "-L", "--hidden" },
          hidden = true,
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Files" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Recent Files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "String Under Cursor" })
    keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
    keymap.set("n", "<leader>fj", "<cmd>Telescope treesitter<CR>", { desc = "TreeSitter Nodes" })
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "TODOs" })

  end,
}

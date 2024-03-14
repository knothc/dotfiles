local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")
telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<M-p>"] = action_layout.toggle_preview,
      },
      n = {
        ["<M-p>"] = action_layout.toggle_preview,
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      find_command = { "rg", "--ignore", "-L", "--hidden", "--files" },
    },
    buffers = {
      theme = "dropdown",
    },
    treesitter = {
      theme = "ivy",
    },
  },
}


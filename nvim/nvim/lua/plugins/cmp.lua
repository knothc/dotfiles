return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.preselect = cmp.PreselectMode.None -- 🔥 This disables preselection explicitly

    opts.completion = {
      completeopt = "menu,menuone,noinsert,noselect",
    }

    -- Override `<CR>` mapping to prevent auto-selection
    opts.mapping = cmp.mapping.preset.insert({
      ["<CR>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.close() -- Close the menu instead of selecting an item
          fallback()
        else
          fallback()
        end
      end, { "i", "s" }),
    })
  end,
}

return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require("luasnip")
    vim.keymap.set({ "i", "s" }, "<c-k>", function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end, { silent = true })

    vim.keymap.set({ "i", "s" }, "<c-j>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true })

    vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/custom/snippets.lua<CR>")
  end,
}

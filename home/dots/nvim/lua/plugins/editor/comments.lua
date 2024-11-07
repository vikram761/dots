return {
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup({
        toggler = {
          line = 'gcc',
          block = 'gbc',
        },
        opleader = {
          line = 'gc',
          block = 'gb',
        },
        mappings = {
          basic = true,
          extra = true,
        }
      })

      vim.api.nvim_set_keymap('n', '<C-M>', 'gcc<CR>', { noremap = true })
      vim.api.nvim_set_keymap('v', '<C-/>',
                              '<Esc><Cmd>lua require("Comment.api").locked("&#9001 ")<CR>gv',
                              { noremap = true })
    end,
    lazy = false,
  }
}

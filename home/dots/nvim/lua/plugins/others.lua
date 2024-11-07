return {
  {
    "folke/which-key.nvim",
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
  },
  {
    "onsails/lspkind.nvim",
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact"
    },
    config = function() 
      require("nvim-ts-autotag").setup()
    end
  }
}

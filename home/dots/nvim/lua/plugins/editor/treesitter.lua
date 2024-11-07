return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    require'nvim-treesitter.configs'.setup{
      ensure_installed = {
        "c", "cpp","vim","lua","typescript","go","tsx","javascript",
        "gosum","gomod","json","css"
      }
    }
  end
}

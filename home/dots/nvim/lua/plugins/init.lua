return {
  -- UI
  require("plugins.ui.alpha"),
  require("plugins.ui.colors"),
  require("plugins.ui.lualine"),
  require("plugins.ui.nvimtree"),

  -- Editor
  require("plugins.editor.autoPairs"),
  require("plugins.editor.comments"),
  require("plugins.editor.treesitter"),
  require("plugins.editor.harpoon"),

  -- LSP
  require("plugins.lsp.cmp"),
  require("plugins.lsp.lsp"),
  require("plugins.lsp.null-ls"),

  -- Tools
  require("plugins.tools.telescope"),
  require("plugins.tools.tmuxNavigator"),

   -- Snippets
  require("plugins.snippets"),

  -- Others
  require("plugins.others"),
}

return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.completion.tabnine-nvim"},
  -- { import = "astrocommunity.bars-and-lines.dropbar-nvim"},
  { import = "astrocommunity.editing-support.comment-box-nvim"},
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim"},
  { import = "astrocommunity.editing-support.vim-move"},
  { import = "astrocommunity.editing-support.wildfire-nvim"},
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}

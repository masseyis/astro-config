-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<C-u>"] = {"<C-u>zz"},
    ["<C-d>"] = {"<C-d>zz"},
    ["n"] = {"nzz"},
    ["N"] = {"Nzz"},
    ["<leader>O"] = {name = " Obsidian"},
    ["<leader>Oo"] = {":ObsidianOpen<SPACE>"},
    ["<leader>On"] = {":ObsidianNew<SPACE>"},
    ["<leader>Os"] = {":ObsidianQuickSwitch<cr>"},
    ["<leader>Ol"] = {":ObsidianFollowLink<SPACE>"},
    ["<leader>Ob"] = {":ObsidianBacklinks<cr>"},
    ["<leader>Og"] = {":ObsidianTags<SPACE>"},
    ["<leader>Ot"] = {":ObsidianToday<SPACE>"},
    ["<leader>Om"] = {":ObsidianTomorrow<cr>"},
    ["<leader>Oy"] = {":ObsidianYesterday<SPACE>"},
    ["<leader>OT"] = {":ObsidianTemplate<SPACE>"},
    ["<leader>OS"] = {":ObsidianSearch<SPACE>"},
    ["<leader>OL"] = {":ObsidianLink<SPACE>"},
    ["<leader>ON"] = {":ObsidianLinkNew<SPACE>"},
    ["<leader>Ow"] = {":ObsidianWorkspace<SPACE>"},
    ["<leader>Op"] = {":ObsidianPasteImg<SPACE>"},
    ["<leader>Or"] = {":ObsidianRename<SPACE>"},
  },
  t = {
    -- setting a mapping to false will disable it
    ["<esc>"] = {"<C-\\><C-N>"},
  },
  v = {
    ["<leader>O"] = {name = " Obsidian"},
    ["<leader>Oo"] = {":ObsidianOpen<SPACE>"},
    ["<leader>On"] = {":ObsidianNew<SPACE>"},
    ["<leader>Os"] = {":ObsidianQuickSwitch<cr>"},
    ["<leader>Ol"] = {":ObsidianFollowLink<SPACE>"},
    ["<leader>Ob"] = {":ObsidianBacklinks<cr>"},
    ["<leader>Og"] = {":ObsidianTags<SPACE>"},
    ["<leader>Ot"] = {":ObsidianToday<SPACE>"},
    ["<leader>Om"] = {":ObsidianTomorrow<cr>"},
    ["<leader>Oy"] = {":ObsidianYesterday<SPACE>"},
    ["<leader>OT"] = {":ObsidianTemplate<SPACE>"},
    ["<leader>OS"] = {":ObsidianSearch<SPACE>"},
    ["<leader>OL"] = {":ObsidianLink<SPACE>"},
    ["<leader>ON"] = {":ObsidianLinkNew<SPACE>"},
    ["<leader>Ow"] = {":ObsidianWorkspace<SPACE>"},
    ["<leader>Op"] = {":ObsidianPasteImg<SPACE>"},
    ["<leader>Or"] = {":ObsidianRename<SPACE>"},

  }
}

-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.clipboard = ''
vim.opt.whichwrap = ''

lvim.colorscheme = "codemonkey"

lvim.autocommands = {
  {
    { "ColorScheme" },
    {
      pattern = "*",
      callback = function()
        vim.api.nvim_set_hl(0, "Comment", { fg = "#808080", underline = false})
      end,
    },
  },
}

-- nvim mappings
lvim.keys.insert_mode["<C-a>"] = '<Esc>ggvG'
lvim.keys.insert_mode["<C-c>"] = "<cmd> .y+ <CR>"
lvim.keys.insert_mode["<C-f>"] = '<Esc>:/'
lvim.keys.insert_mode["<C-g>"] = '<Esc>:%s/'
lvim.keys.insert_mode["<C-v>"] = "<C-R>+"
lvim.keys.insert_mode["<C-z>"] = "<cmd> undo <CR>"
lvim.keys.insert_mode["<C-r>"] = "<cmd> redo <CR>"
lvim.keys.insert_mode["<C-y>"] = "<cmd> redo <CR>"
lvim.keys.insert_mode["<S-CR>"] = "<Esc>o"

lvim.keys.normal_mode["<C-a>"] = 'ggvG'
lvim.keys.normal_mode["<C-c>"] = '^vg_"+y'
lvim.keys.normal_mode["<C-f>"] = '<Esc>:/'
lvim.keys.normal_mode["<C-g>"] = '<Esc>:%s/'
lvim.keys.normal_mode["<C-v>"] = '"+gp'
lvim.keys.normal_mode["<C-z>"] = "<cmd> undo <CR>"
lvim.keys.normal_mode["<C-r>"] = "<cmd> redo <CR>"
lvim.keys.normal_mode["<C-y>"] = "<cmd> redo <CR>"
lvim.keys.normal_mode["<S-CR>"] = "<Esc>o"

lvim.keys.visual_mode["<C-c>"] = '"+y'
lvim.keys.visual_mode["<C-v>"] = 'x"+gP'
lvim.keys.visual_mode["<C-f>"] = '<Esc>/\\%V'

lvim.keys.command_mode["<C-v>"] = "<C-R>+"

-- lsp bindings
lvim.lsp.buffer_mappings.insert_mode["<A-\\>"] = { vim.lsp.buf.signature_help, "Show signature" }
lvim.lsp.buffer_mappings.insert_mode["<A-CR>"] = { vim.lsp.buf.code_action, "Code action" }
lvim.lsp.buffer_mappings.normal_mode["<A-\\>"] = { vim.lsp.buf.signature_help, "Show signature" }
lvim.lsp.buffer_mappings.normal_mode["<A-CR>"] = { vim.lsp.buf.code_action, "Code action" }

-- my plugin
lvim.plugins = {
  { "lunarvim/colorschemes" },
  {
    "stevearc/dressing.nvim",
    config = function()
      require("dressing").setup({
        input = { enabled = false },
        select = {
          telescope = require('telescope.themes').get_cursor {}
        }
      })
    end,
  },
}

-- core plugin
local cmp = require("cmp")
lvim.builtin.cmp.mapping["<A-/>"] = cmp.mapping.complete()
lvim.builtin.telescope.defaults.mappings.i["<C-v>"] = false

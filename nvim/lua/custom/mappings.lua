---@type MappingsTable
local M = {}

M.general = {
	i = {
		["<C-c>"] = { "<cmd> .y+ <CR>", "Copy current line" },
		["<C-v>"] = { "<C-R>+" },
		["<S-CR>"] = { "<Esc>o" },
		["<C-z>"] = { "<cmd> undo <CR>" },
		["<C-r>"] = { "<cmd> redo <CR>" },
	},
	n = {
		[";"] = { ":", "Enter command mode", opts = { nowait = true } },
		["<C-c>"] = { '^vg_"+y', "Copy current line" },
		["<C-v>"] = { '"+gp', "Copy text to clipboard" },
		["<C-f>"] = { ":/", "Find text" },
		["<C-g>"] = { ":%s/", "Replace text" },
		["<C-z>"] = { "<cmd> undo <CR>" },
		["<leader>cf"] = { "<cmd> %y+ <CR>", "Copy whole file" },
	},
	v = {
		["<C-c>"] = { '"+y', "Copy selected text to clipboard" },
		["<C-v>"] = { 'x"+gp', "Delete selected text and paste text from clipboard" },
		["<C-f>"] = { "<Esc>/\\%V", "Find text within the visual selection" },
		["<C-g>"] = { ":s/", "Replace text within the visual selection" },
	},
	c = {
		["<C-v>"] = { "<C-R>+", "Copy text to clipboard" },
	},
}

-- M.lspconfig = {
-- 	i = {
-- 		["<A-\\>"] = {
-- 			function()
-- 				vim.lsp.buf.signature_help()
-- 			end,
-- 			"LSP signature help",
-- 		},
-- 	},
-- 	n = {
-- 		["<A-\\>"] = {
-- 			function()
-- 				vim.lsp.buf.signature_help()
-- 			end,
-- 			"LSP signature help",
-- 		},
-- 	},
-- }

-- more keybinds!

return M

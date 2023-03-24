-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

keymap("n", "<Leader>w", ":w<CR>", opts)
keymap("n", "gv", ":vertical wincmd f<CR>", opts)
keymap("n", "q", ":q<CR>", opts)
keymap("n", "<Leader>qq", ":q!<CR>", opts)
keymap("n", "tt", ":t.<CR>", opts)

-- lsp keymaps
keymap("n", "gd", ":lua vim.lsp.buf.definition()<cr>", opts)
keymap("n", "gD", ":lua vim.lsp.buf.declaration()<cr>", opts)
keymap("n", "gi", ":lua vim.lsp.buf.implementation()<cr>", opts)
keymap("n", "gw", ":lua vim.lsp.buf.document_symbol()<cr>", opts)
keymap("n", "gw", ":lua vim.lsp.buf.workspace_symbol()<cr>", opts)
keymap("n", "gr", ":lua vim.lsp.buf.references()<cr>", opts)
keymap("n", "gt", ":lua vim.lsp.buf.type_definition()<cr>", opts)
keymap("n", "K", ":lua vim.lsp.buf.hover()<cr>", opts)
keymap("n", "<c-h>", ":lua vim.lsp.buf.signature_help()<cr>", opts)
keymap("n", "<leader>af", ":lua vim.lsp.buf.code_action()<cr>", opts)
keymap("n", "<leader>rn", ":lua vim.lsp.buf.rename()<cr>", opts)
keymap("n", "<space>f", ":lua vim.lsp.buf.formatting()<cr>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

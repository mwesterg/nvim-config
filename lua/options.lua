local options = {
	updatetime = 300,
	number = true,
	foldenable = false,
	laststatus = 3,
}

vim.cmd "highlight WinSeparator guibg=None"
vim.cmd "colorscheme gruvbox"

vim.opt.shortmess:append "c"
-- vim.opt.fillchars = {eob = '|'}

for k, v in pairs(options) do
  vim.opt[k] = v
end

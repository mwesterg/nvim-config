local options = {
	updatetime = 300,
	number = true,
	foldenable = false,
}


vim.opt.shortmess:append "c"


for k, v in pairs(options) do
  vim.opt[k] = v
end

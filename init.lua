require('settings')
require('keymappings')
require('options')
require('config_packer')
require('packages')
require('config_treesitter')
require('config_lsp')
require('config_cmp')

require('Comment').setup()

local function blah()
	print "Hello"
end

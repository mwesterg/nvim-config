require('settings')
require('keymappings')
require('options')
require('packages')
require('config_treesitter')
-- require('config_lsp')
require('config_cmp')

require('kommentary.config').configure_language("rust", {
    single_line_comment_string = "//",
    multi_line_comment_strings = {"/*", "*/"},
})


local function blah()
	print "Hello"
end

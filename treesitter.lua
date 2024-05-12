return{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
	local config = require("nvim-treesitter.configs")
	config.setup({
		ensure_installed = {"lua","c","cpp","asm","rust","html","zig","go","javascript","sql","java","c_sharp","python","nasm","typescript","bash","json"},
		highlight = {enable =true },
		indent = {enable =true },

		
	})
end
}

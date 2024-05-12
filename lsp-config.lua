return{
	{
	  "williamboman/mason.nvim",
	config = function()
			require("mason").setup()
	end
	},
	{
		 "williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
			ensure_installed ={"asm_lsp","bashls","clangd","omnisharp","gopls","html","jsonls","java_language_server",
				"tsserver","lua_ls","pyright","rust_analyzer","sqlls","biome","zls","jdtls"},
			
		})
		end	
	},
	{
		 "neovim/nvim-lspconfig",
		config = function() 
		local lspconfig = require("lspconfig")
		lspconfig.asm_lsp.setup({})
		lspconfig.bashls.setup({})
		lspconfig.clangd.setup({})
		lspconfig.omnisharp.setup({})
		lspconfig.gopls.setup({})
		lspconfig.html.setup({})
		lspconfig.jsonls.setup({})
		lspconfig.java_language_server.setup({})
		lspconfig.tsserver.setup({})
		lspconfig.lua_ls.setup({})
		lspconfig.pyright.setup({})
		lspconfig.rust_analyzer.setup({})
		lspconfig.sqlls.setup({})
		lspconfig.biome.setup({})
		lspconfig.zls.setup({})
		lspconfig.jdtls.setup({})
		end
}
}

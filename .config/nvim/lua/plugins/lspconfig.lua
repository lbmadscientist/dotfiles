return {
	{
	"neovim/nvim-lspconfig",
	config = function()
	    -- gets language server to recognise the 'vim' global to stop errors
	    require'lspconfig'.lua_ls.setup {
		settings = {Lua = {diagnostics = {globals = {'vim'},},},},
	    }
	    -- enable language libraries installed with Mason
	    -- these need to be added manually here if a new one is installed
	    vim.lsp.enable('lua_ls')
	    vim.lsp.enable('clangd')
	    vim.lsp.enable('pylsp')
	    vim.lsp.enable('biome')
	end
    }
}

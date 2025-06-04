return {
    {
    -- stuff to load plugin
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    -- config stuff
    config = function()
	require("nvim-treesitter.configs").setup({
	    ensure_installed = {
		"c", "c_sharp", "cpp", "python", "lua", "vim", "javascript","json",},
	    sync_install = false,
	    auto_install = false,
	    ignore_install = {},
	    highlight = { enable = true },
	    indent = { enable = true },
	    modules = {},
	})
    end
    }
}

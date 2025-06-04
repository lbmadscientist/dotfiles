return {
    {
    -- stuff to load plugin
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    -- config
    config = function()
	vim.cmd([[colorscheme everforest]])
    end,
    }
}

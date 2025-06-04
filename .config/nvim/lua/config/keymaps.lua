--[[**LSP shortcuts** (most default nvim)
    'K' - shows hover info for item under cursor. Tap again to focus on window. q to quit.
    'Ctrl-s' - in insert mode, does same as above.
    'Ctrl-j' - do to where item under cursor was first defined
    'grn' - rename variable under cursor across all instances in file
    'gri' - brings up all implementations (uses of) an item under cursor
--]]
    --allows toggle of error messages to show up on the code lines
    vim.keymap.set('n', 'gK', function()
	local new_config = not vim.diagnostic.config().virtual_lines
	vim.diagnostic.config({ virtual_lines = new_config })
    end, { desc = 'Toggle diagnostic virtual_lines' } )

--[[**Vimtree** shortcuts
    'a' - while focused on tree - create file
    'd' - while focused on tree - delete file --]]
    vim.keymap.set('n', '<leader>nnn', ':NvimTreeToggle<CR>') -- toggles tree on/off
    vim.keymap.set('n', '<leader>nn', ':NvimTreeFocus<CR>') -- focuses tree if open, opens if closed

--[[**telescope** shortcuts
--]]
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

--[[**nVim base** shortcuts
--]]

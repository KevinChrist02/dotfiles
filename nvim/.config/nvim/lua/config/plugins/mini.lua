return {
    {
        'echasnovski/mini.nvim',
        config = function()
            -- statusline setup
            local statusline = require 'mini.statusline'
            statusline.setup { use_icons = true }

            -- other plugins from mini
            require('mini.icons').setup()
            require('mini.pairs').setup()
            require('mini.notify').setup()
        end
    }
}

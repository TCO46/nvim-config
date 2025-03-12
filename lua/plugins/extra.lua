return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'ThePrimeagen/vim-be-good',
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
  {
        'nvim-tree/nvim-web-devicons',
        lazy = false,
    },
    {
        'akinsho/toggleterm.nvim',
        keys = { { '<C-\\>', '<cmd>ToggleTerm<CR>', 'Toggle terminal' } },
        opts = {
            open_mapping = [[<c-\>]],
            winbar = { enabled = true, },
        },
    },
    {
        'onsails/lspkind.nvim',
        opts = {
            preset = 'codicons',
            mode = 'symbol',
            symbol_map = {
                Text = '',
                -- Method = '',
                -- Function = '',
                Constructor = '',
            },
        },
        config = function(_, opts)
            require('lspkind').init(opts)
        end,
    },
    {
        "nvzone/showkeys",
        cmd = "ShowkeysToggle",
        opts = {
            position = "top-center"
        }
    },
    {
        'folke/snacks.nvim',
        priority = 1000,
        lazy = false,
        keys = {
            { '<leader><space>', function() Snacks.picker.smart() end,                desc = 'Smart Find Files' },
            { '<leader>/',       function() Snacks.picker.grep() end,                 desc = 'Grep' },
            { '<leader>:',       function() Snacks.picker.command_history() end,      desc = 'Command History' },
            { '<leader>e',       function() Snacks.explorer() end,                    desc = 'File Explorer' },
            { '<leader>fb',      function() Snacks.picker.buffers() end,              desc = 'Buffers' },
            { '<leader>ff',      function() Snacks.picker.files() end,                desc = 'Find Files' },
            { '<leader>fl',      function() Snacks.picker.lazy() end,                 desc = 'Search for Plugin Spec' },
            { '<leader>fr',      function() Snacks.picker.resume() end,               desc = 'Resume' },
            { '<leader>fu',      function() Snacks.picker.undo() end,                 desc = 'Undo History' },

            -- git
            { '<leader>gb',      function() Snacks.picker.git_branches() end,         desc = 'Git Branches' },
            { '<leader>gl',      function() Snacks.picker.git_log() end,              desc = 'Git Log' },
            { '<leader>gL',      function() Snacks.picker.git_log_line() end,         desc = 'Git Log Line' },
            { '<leader>gs',      function() Snacks.picker.git_status() end,           desc = 'Git Status' },
            { '<leader>gS',      function() Snacks.picker.git_stash() end,            desc = 'Git Stash' },
            { '<leader>gd',      function() Snacks.picker.git_diff() end,             desc = 'Git Diff (Hunks)' },
            { '<leader>gf',      function() Snacks.picker.git_log_file() end,         desc = 'Git Log File' },

            -- LSP
            { 'gd',              function() Snacks.picker.lsp_definitions() end,      desc = 'Goto Definition' },
            { 'gD',              function() Snacks.picker.lsp_declarations() end,     desc = 'Goto Declaration' },
            { 'gr',              function() Snacks.picker.lsp_references() end,       nowait = true,                  desc = 'References' },
            { 'gI',              function() Snacks.picker.lsp_implementations() end,  desc = 'Goto Implementation' },
            { 'gy',              function() Snacks.picker.lsp_type_definitions() end, desc = 'Goto T[y]pe Definition' },
            { '<leader>ss',      function() Snacks.picker.lsp_symbols() end,          desc = 'LSP Symbols' },
        },
        opts = {
            bigfile = { enabled = true },
            indent = {
                enabled = true,
                char = '▏',
                scope = {
                    enabled = true, -- enable highlighting the current scope
                    char = '▏',
                    treesitter = { enabled = true },
                    underline = true, -- underline the start of the scope
                },
            },
            image = { enabled = true },
            input = { enabled = true, },
            quickfile = { enabled = true },
            picker = { enabled = true }
        },
    },
}

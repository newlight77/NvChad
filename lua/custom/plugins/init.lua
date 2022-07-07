
return {
    -- ["goolord/alpha-nvim"] = {
    --     disable = false,
    -- },
    ["lewis6991/impatient.nvim"] = { },
    ["folke/trouble.nvim"] = {
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("custom.plugins.trouble") end
    },
    ["nvim-lua/popup.nvim"] = {
        requires = "nvim-lua/plenary.nvim"
    },
    ["phaazon/hop.nvim"] = {
        event = "VimEnter",
        config = function()
            vim.defer_fn(function() require('custom.plugins.nvim-hop') end, 2000)
        end
    },
    -- type 's' to search instead of '/'
    -- ["ggandor/lightspeed.nvim"] = { },
    -- Show match number and index for searching
    -- ["kevinhwang91/nvim-hlslens"] = {
    --     keys = {{'n', '*'}, {'n', '#'}, {'n', 'n'}, {'n', 'N'}},
    --     config = function()
    --         require('custom.plugins.hlslens')
    --     end
    -- },
    -- ["ahmedkhalf/project.nvim"] = { }
    ["rcarriga/nvim-notify"] = {
        event = "BufEnter",
        config = function()
            vim.defer_fn(function() require('custom.plugins.nvim-notify') end, 2000)
        end
    },
    ["folke/zen-mode.nvim"] = {
        cmd = 'ZenMode',
        config = function()
            require('custom.plugins.zen-mode')
        end
    },
    ["karb94/neoscroll.nvim"] = {
        event = 'VimEnter',
        config = function()
            vim.defer_fn(function() require('custom.plugins.neoscroll') end, 2000)
        end
    },
    -- ["norcalli/nvim-colorizer.lua"] = { 
    --     config = function() require('custom.plugins.colorizer') end
    -- },
    ["iamcco/markdown-preview.nvim"] = {},
    ["nvim-telescope/telescope-media-files.nvim"] = {
        -- config = function() 
        --     require('telescope').load_extension('media_files')
        -- end
    },
    ["edluffy/hologram.nvim"] = {}

 }

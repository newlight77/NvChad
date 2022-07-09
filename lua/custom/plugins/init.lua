
return {
    ["goolord/alpha-nvim"] = {
        disable = false,
        config = function()
            require('plugins.configs.alpha')
            require('custom.plugins.alpha')
        end
    },
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
    ["norcalli/nvim-colorizer.lua"] = {
        config = function()
            require('plugins.configs.others')
            require('custom.plugins.colorizer')
        end
    },
    ["iamcco/markdown-preview.nvim"] = {},
    ["nvim-telescope/telescope-media-files.nvim"] = {
        config = function()
            local status_ok, telescope = pcall(require, "telescope")
            if status_ok then
                -- telescope.load_extension('media_files')
                telescope.setup {
                    extensions = {
                    media_files = {
                        -- filetypes whitelist
                        -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
                        filetypes = {"png", "webp", "jpg", "jpeg", "pdf"},
                        find_cmd = "fp" -- find command (defaults to `fd`)
                    }
                    },
                }
                -- telescope.extensions.media_files.media_files()
            end
        end
    },
    ["edluffy/hologram.nvim"] = {},
    ["jose-elias-alvarez/null-ls.nvim"] = { config = function() require('custom.plugins.null-ls') end },

}

-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
   user = function()
       require("custom.themes.parisbynight")
   end,
   nvChad = {
      update_url = "https://github.com/newlight77/NvChad",
      update_branch = "main",
   },
}

M.ui = {
   theme = "parisbynight",
}

M.mappings = require "custom.mappings"

M.plugins = {
   user = require "custom.plugins",
   override = {
      ["goolord/alpha-nvim"] = {
         disable = false,
         config = function()
           require('plugins.configs.alpha')
           require('custom.plugins.alpha')
         end
      },
      ["nvim-treesitter/nvim-treesitter"] = {
         ensure_installed = { "lua", "html", "css" },
      },
      ["norcalli/nvim-colorizer.lua"] = {
         config = function()
           require('plugins.configs.others')
           require('custom.plugins.colorizer')
         end
      },
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
   }
}

return M

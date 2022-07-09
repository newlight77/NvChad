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
      -- ["goolord/alpha-nvim"] = {
      --    disable = false,
      --    config = function()
      --      require('plugins.configs.alpha')
      --      require('custom.plugins.alpha')
      --    end
      -- },
      -- ["nvim-treesitter/nvim-treesitter"] = {
      --    ensure_installed = { "lua", "html", "css" },
      -- },
      -- ["norcalli/nvim-colorizer.lua"] = {
      --    config = function()
      --      require('plugins.configs.others')
      --      require('custom.plugins.colorizer')
      --    end
      -- },
   }
}

return M

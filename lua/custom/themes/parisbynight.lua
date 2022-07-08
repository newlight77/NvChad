-- siduck.lua = theme name
local M = {}

M.base_30 = {
    white = "#cccdd1",
    darker_black = "#0a0a0a",
    black = "#101010", --  nvim bg
    black2 = "#282828",
    one_bg = "#3e3e3e",
    one_bg2 = "#766656",
    one_bg3 = "#5c6c4c",
    grey = "#6f6c6c",
    grey_fg = "#9a9999",
    grey_fg2 = "#736666",
    light_grey = "#8e8b8b",
    red = "#ff1a67",
    baby_pink = "#ff86b7",
    pink = "#ff77a8",
    line = "#2c2c2c", -- for lines like vertsplit
    green = "#00e756",
    vibrant_green = "#10f766",
    blue = "#29adff",
    nord_blue = "#468ae2",
    yellow = "#fff024",
    sun = "#fff82c",
    purple = "#a79ac0",
    dark_purple = "#998cb2",
    teal = "#0b925c",
    orange = "#ffa300",
    cyan = "#29adff",
    statusline_bg = "#181818",
    lightbg = "#494949",
    pmenu_bg = "#5c6ab2",
    folder_bg = "#29adff",
 }

 M.base_16 = {
    base00 = "#101010",
    base01 = "#774727",
    base02 = "#4e3e3e",
    base03 = "#4a7a4a",
    base04 = "#5c8cac",
    base05 = "#58a9ad",
    base06 = "#e2d3cf",
    base07 = "#ffe4f5",
    base08 = "#ffb20f",
    base09 = "#ff004d",
    base0A = "#be620a",
    base0B = "#00e756",
    base0C = "#29adff",
    base0D = "#c54bcf",
    base0E = "#ff4394",
    base0F = "#ffccaa",
 }

 M.polish_hl = {
    TSParameter = { fg = M.base_30.orange },
    TSKeywordReturn = { fg = M.base_30.cyan },
    TSConditional = { fg = M.base_30.cyan },
    PmenuSel = { bg = M.base_30.blue },
 }

 vim.opt.bg = "dark"

return M

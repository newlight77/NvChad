local M = {}

M.disabled = {
    n = {
        ["<leader>bc"] = { "" },
        ["<leader>h"] = { "" },
        ["<leader>v"] = { "" },
        ["<leader>cm"] = { "" },
        ["<leader>gt"] = { "" },
        ["<leader>rn"] = { "" },
        ["<leader>tk"] = { "" },
        ["<leader>tt"] = { "" },
        ["<leader>uu"] = { "" },
        ["<leader>wk"] = { "" },
        ["<leader>wK"] = { "" },
    },
}

M.general = {
    x = {
        -- Move text up and down
        ["<A-up>"] = {"<cmd> :move '>+1<CR>gv-gv", "  +2 vertical separator"},
        ["<A-down>"] = {"<cmd> :move '>-2<CR>gv-gv", "  -2 vertical separator"},
    },

    n = {
        ["<leader>r"] = { "<cmd> set rnu! <CR>", "   toggle relative number" },
        -- Move text up and down
        ["<A-down>"] = {"<cmd> m .+1<CR>==", "  move line.s down"},
        ["<A-up>"] = {"<cmd> m .-2<CR>==", "  move line.s up"},
        -- Resize with arrows
        ["<C-A-down>"] = {"<cmd> :resize +2<CR>", "  +2 horizontal separator"},
        ["<C-A-up>"] = {"<cmd> :resize -2<CR>", "  -2 horizontal separator"},
        ["<C-A-right>"] = {"<cmd> :vertical +2<CR>", "  move right vertical separator"},
        ["<C-A-left>"] = {"<cmd> :vertical -2<CR>", "  move left vertical separator"},

        -- Themes
        ["<leader>Tt"] = { function() require("base46").toggle_theme() end, "   toggle theme", },
        -- update nvchad
        ["<leader>U"] = { "<cmd> :NvChadUpdate <CR>", "   update nvchad" },
        -- open current file in browser
        ["<leader>b"] = { "<cmd> :exe ':silent !brave %'<CR> ", "   open current file in browser" },

    },
}

M.alpha = { 
    n = {
        ["<leader>a"] = {"<cmd>Alpha<cr>", "   toggle alpha"},
    },
}

M.packer = { 
    n = {
        ["<leader>p"] = {"", "  Packer"},
        ["<leader>pc"] = {"<cmd>PackerCompile<cr>", "Packer compile"},
        ["<leader>pi"] = {"<cmd>PackerInstall<cr>", "packer install"},
        ["<leader>ps"] = {"<cmd>PackerSync<cr>", "packer sync"},
        ["<leader>pS"] = {"<cmd>PackerStatus<cr>", "packer status"},
        ["<leader>pu"] = {"<cmd>PackerUpdate<cr>", "packer update"},
    },
}

M.lspconfig = {
    -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
    n = {
        ["<leader>w"] = { "", "    LSP" },
        ["<leader>lD"] = { function() vim.lsp.buf.declaration() end, "   lsp declaration"  },
        ["<leader>ld"] = {  function() vim.lsp.buf.definition() end, "   lsp definition" },
        ["<leader>lh"] = { function() vim.lsp.buf.hover() end, "   lsp hover"},
        ["<leader>li"] = { function() vim.lsp.buf.implementation() end, "   lsp implementation" },
        ["<leader>ls"] = { function() vim.lsp.buf.signature_help() end, "   lsp signature_help" },
        ["<leader>lt"] = { function() vim.lsp.buf.type_definition() end, "   lsp definition type" },
        ["<leader>lr"] = { function() require("nvchad.ui.renamer").open() end, "   lsp rename" },
        ["<leader>lc"] = {  function() vim.lsp.buf.code_action() end, "   lsp code_action" },
        ["<leader>gr"] = { function() vim.lsp.buf.references() end, "   lsp references" },
        ["<leader>q"] = { function() vim.diagnostic.open_float() end, "   floating diagnostic" },
        ["<leader>lQ"] = { function() vim.diagnostic.setloclist() end, "   diagnostic setloclist" },
        ["<leader>lf"] = { function() vim.lsp.buf.formatting() end, "   lsp formatting" },

        ["<leader>w"] = { "", "    workspace folder" },
        ["<leader>wa"] = { function() vim.lsp.buf.add_workspace_folder() end, "   add workspace folder" },
        ["<leader>wr"] = { function() vim.lsp.buf.remove_workspace_folder() end, "   remove workspace folder" },
        ["<leader>wl"] = { function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, "   list workspace folders" },

        ["[d"] = {function() vim.diagnostic.goto_prev() end, "   goto prev"},
        ["d]"] = {function() vim.diagnostic.goto_next() end, "   goto_next"},
    }
}

M.telescope = {
    n = {
        -- find
        ["<leader>f"] = { "", "    find in files" },
        ["<leader>ff"] = {"<cmd> Telescope find_files <CR>", "  find files"},
        ["<leader>fa"] = {"<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>","  find all" },
        ["<leader>fw"] = {"<cmd> Telescope live_grep <CR>", "   live grep"},
        ["<leader>fb"] = {"<cmd> Telescope buffers <CR>", "  find buffers"},
        ["<leader>fh"] = {"<cmd> Telescope help_tags <CR>", "  help page"},
        ["<leader>fo"] = {"<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
        ["<leader>tk"] = {"<cmd> Telescope keymaps <CR>", "   show keys"},
        -- git
        ["<leader>g"] = { "", "    git" },
        ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "   git commits" },
        ["<leader>gs"] = {"<cmd> Telescope git_status <CR>", "  git status"},

        -- pick a hidden term
        ["<leader>th"] = { "<cmd> Telescope terms <CR>", "   pick hidden term" },

        -- theme switcher
        ["<leader>T"] = { "", "  themes" },
        ["<leader>TT"] = {"<cmd> Telescope themes <CR>", "   nvchad themes"}
    }
}

M.nvterm = {
    t = {
        -- toggle in terminal mode
        ["<A-i>"] = {  function() require("nvterm.terminal").toggle "float" end, "   toggle floating term" },
        ["<A-h>"] = {  function() require("nvterm.terminal").toggle "horizontal" end, "   toggle horizontal term" },
        ["<A-v>"] = {  function() require("nvterm.terminal").toggle "vertical" end, "   toggle vertical term" }
    },

    n = {
        -- toggle in normal mode
        ["<A-i>"] = {  function() require("nvterm.terminal").toggle "float" end, "   toggle floating term" },
        ["<A-h>"] = {  function() require("nvterm.terminal").toggle "horizontal" end, "   toggle horizontal term" },
        ["<A-v>"] = {  function() require("nvterm.terminal").toggle "vertical" end, "   toggle vertical term" },
        -- new
        ["<leader>t"] = {  "", "    terminal" },
        ["<leader>th"] = {  function() require("nvterm.terminal").new "horizontal" end, "   new horizontal term" },
        ["<leader>tv"] = {  function() require("nvterm.terminal").new "vertical" end, "   new vertical term" }
    }
}

M.whichkey = {
    n = {
        ["<leader>k"] = { "", "  keymaps" },
        ["<leader>ka"] = {  function() vim.cmd "WhichKey" end, "   which-key all keymaps" },
        ["<leader>kw"] = {  function() vim.cmd("WhichKey " .. (vim.fn.input "WhichKey: ")) end, "   which-key query lookup" }
    }
}

M.blankline = {
    n = {
        ["<leader>B"] = {
            function()
                local ok, start = require("indent_blankline.utils").get_current_context(vim.g.indent_blankline_context_patterns, vim.g.indent_blankline_use_treesitter_scope)
                if ok then
                    vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start, 0 })
                    vim.cmd [[normal! _]]
                end
            end,
            "   Jump to current_context",
        },
    },
}

return M

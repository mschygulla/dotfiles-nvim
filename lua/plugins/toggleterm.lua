return {
    "akinsho/toggleterm.nvim",
    keys = {
        { "<c-\\>", "<Cmd>ToggleTerm<Cr>", desc = "Toggle terminal", mode = { "n" } },
        { "<esc><esc>", "<c-\\><c-n>", desc = "Leave Terminal mode", mode = { "t" } },
    },
    cmd = { "ToggleTerm", "TermExec" },
    opts = {
        -- size = 20,
        hide_numbers = true,
        --open_mapping = [[<C-\>]],
        -- shade_filetypes = {},
        -- shade_terminals = true,
        -- shading_factor = 0.3,
        start_in_insert = true,
        --persist_size = true,
        --direction = "float",
    },
}

return {
    "akinsho/bufferline.nvim",
    after = "catppuccin",
    event = "VeryLazy",
    keys = {
        { "<C-b>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Buffer" },
        { "<S-C-b>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev Buffer" },
    },
    config = function()
        require("bufferline").setup({
            highlights = require("catppuccin.groups.integrations.bufferline").get(),
            options = {
                mode = "buffers",
                always_show_bufferline = false,
                show_buffer_close_icons = false,
                show_close_icon = false,
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Neo-tree",
                        highlight = "Directory",
                        text_align = "center",
                    },
                },
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(_, _, diagnostics_dict)
                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " " or (e == "warning" and " " or " ")
                        s = s .. n .. sym
                    end
                    return s
                end,
            },
        })
    end,
}

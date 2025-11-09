return {
    { "nvim-telescope/telescope-ui-select.nvim" },
    { "nvim-lua/plenary.nvim" },
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        tag = "0.1.8",
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
            { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Show Buffers" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
            { "<leader>fd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Diagnostics for current buffer" },
        },
        config = function()
            require('telescope').setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {},
                    },
                },
            }
        end,

    },
}
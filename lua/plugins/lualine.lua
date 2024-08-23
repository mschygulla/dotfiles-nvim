return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "AndreM222/copilot-lualine" },
    config = function()
        require("lualine").setup({
            options = {
                theme = "catppuccin",
                disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter" } },
            },
            sections = {
                lualine_x = {
                    {
                        function()
                            local msg = "No Active Lsp"
                            local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
                            local clients = vim.lsp.get_active_clients()
                            if next(clients) == nil then
                                return msg
                            end
                            for _, client in ipairs(clients) do
                                local filetypes = client.config.filetypes
                                if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                                    return client.name
                                end
                            end
                            return msg
                        end,
                        icon = " ",
                    },
                    "filetype",
                    "fileformat",
                    "encoding",
                    { "copilot", show_color = true, show_loading = true },
                },
            },
            extensions = { "toggleterm" },
        })
    end,
}

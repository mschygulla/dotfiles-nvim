return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        ---@diagnostic disable-next-line: missing-fields
        config.setup({
            auto_install = true,
            ensure_installed = { "lua", "bash" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

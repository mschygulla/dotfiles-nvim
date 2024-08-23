return {
    { "williamboman/mason-lspconfig.nvim", config = function() end },
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
        build = ":MasonUpdate",
        opts_extend = { "ensure_installed" },
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
            ensure_installed = {
                "stylua", -- Formatter for Lua
                "shfmt", -- Formatter for Shell
                "prettier", -- Formatter for JavaScript, TypeScript, CSS, HTML, JSON, YAML, Markdown, GraphQL, Liquid
                "black", -- Formatter for Python
                "isort", -- Formatter for Python
                "ansible-language-server", -- Ansible
                "bash-language-server", -- Bash, Shell
                "lua-language-server", -- Lua
                "python-lsp-server", -- Python
                "ansible-lint", -- Linter for Ansible
                "luacheck", -- Linter for Lua
            },
        },
        config = function(_, opts)
            require("mason").setup(opts)
            local mr = require("mason-registry")
            mr:on("package:install:success", function()
                vim.defer_fn(function()
                    -- trigger FileType event to possibly load this newly installed LSP server
                    require("lazy.core.handler.event").trigger({
                        event = "FileType",
                        buf = vim.api.nvim_get_current_buf(),
                    })
                end, 100)
            end)

            mr.refresh(function()
                for _, tool in ipairs(opts.ensure_installed) do
                    local p = mr.get_package(tool)
                    if not p:is_installed() then
                        p:install()
                    end
                end
            end)
        end,
    },
}

return {
    { "nvim-tree/nvim-web-devicons" },
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        keys = {
            --{ "<leader>a", "<cmd>Alpha<cr>", desc = "Alpha Dashboard" },
        },
        opts = function()
            local dashboard = require("alpha.themes.dashboard")
            local logo = {
                [[  _______             ____   ____.__          ]],
                [[  \      \   ____  ___\   \ /   /|__| _____   ]],
                [[  /   |   \_/ __ \/  _ \   Y   / |  |/     \  ]],
                [[ /    |    \  ___(  <_> )     /  |  |  Y Y  \ ]],
                [[ \____|__  /\___  >____/ \___/   |__|__|_|  / ]],
                [[         \/     \/                        \/  ]],
                [[                                              ]],
            }

            dashboard.section.header.val = logo

            dashboard.section.buttons.val = {
                dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("f", " " .. " Find file", ":Telescope find_files<CR>"),
                dashboard.button("r", " " .. " Recent", ":Telescope oldfiles<CR>"),
                dashboard.button("q", " " .. " Quit NVIM", ":qa<CR>"),
            }

            return dashboard
        end,
        config = function(_, dashboard)
            if vim.o.filetype == "lazy" then
                vim.cmd.close()
                vim.api.nvim_create_autocmd("User", {
                    pattern = "AlphaReady",
                    callback = function()
                        require("lazy").show()
                    end,
                })
            end
            require("alpha").setup(dashboard.opts)
            vim.api.nvim_create_autocmd("User", {
                pattern = "LazyVimStarted",
                callback = function()
                    local v = vim.version()
                    local version = v.major .. "." .. v.minor .. "." .. v.patch
                    local stats = require("lazy").stats()
                    local plugins_count = stats.loaded .. "/" .. stats.count
                    local ms = math.floor(stats.startuptime + 0.5)
                    local line1 = " " .. plugins_count .. " plugins loaded in " .. ms .. "ms " .. " " .. version
                    dashboard.section.footer.val = {
                        line1,
                    }
                    vim.opt.showtabline = 0
                    pcall(vim.cmd.AlphaRedraw)
                end,
            })
            vim.api.nvim_create_autocmd("BufUnload", {
                buffer = 0,
                desc = "enable tabline after alpha",
                callback = function()
                    vim.opt.showtabline = 2
                end,
            })
        end,
    },
}

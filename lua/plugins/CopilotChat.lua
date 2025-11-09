return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    opts = {
      debug = true, -- Enable debugging
      show_help = true, -- Show help actions
      window = {

      },
      auto_follow_cursor = false,    -- Don't follow the cursor after getting response
    },
    keys = {
        { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
        { "<leader>aa", "<cmd>CopilotChatToggle<cr>", desc = "Toggle (CopilotChat)" },
        { "<leader>ax", "<cmd>CopilotChatReset<cr>", desc = "Reset (CopilotChat)" },
        { "<leader>aq",
            function()
                local input = vim.fn.input("Quick Chat: ")
                if input ~= "" then
                    vim.cmd("CopilotChatBuffer " .. input)
                end
            end,
            desc = "CopilotChat - Quick chat",
        },
    },
},
}
require("config.lazy")
vim.lsp.enable({"bashls", "pyright", "lua_ls"})
require("telescope").load_extension("ui-select")
-- lua/plugins/treesitter.nvim
local treesitter = require("nvim-treesitter")

local parsers = require('plugins.treesitter_parsers')

treesitter.setup()
treesitter.install(parsers)

vim.api.nvim_create_autocmd("FileType", {
  pattern = parsers,
  callback = function()
    vim.treesitter.start()
  end
})

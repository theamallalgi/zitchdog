local augroup = vim.api.nvim_create_augroup("lualine_augroup", { clear = true })

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  group = augroup,
  callback = function()
    local lualine = require('lualine')
    local zitchdog_theme = require('lualine.themes.zitchdog')

    lualine.setup({
      options = {
        theme = zitchdog_theme.get_theme(),
      },
    })
  end,
})
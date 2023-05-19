-- neogen settings
local status, neogen = pcall(require, 'neogen')

if (not status) then return end

neogen.setup({
  enabled = true,
})

-- inserted annotation
vim.keymap.set('n', '<Leader>nn', ':lua require("neogen").generate()<CR>', ns)
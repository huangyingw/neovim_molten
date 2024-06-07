-- 设置 runtimepath
vim.opt.rtp:prepend("~/.local/share/nvim/site/pack/lazy/start/lazy.nvim")

-- 配置 lazy.nvim
require('lazy').setup({
    {"benlubas/molten-nvim"},
    {"3rd/image.nvim"},
    {"willothy/wezterm.nvim"},
    {"nvim-lua/plenary.nvim"}
})


-- Do NOT set termguicolors = true
-- Set background explicitly if needed ("dark" or "light")

vim.opt.background = "dark"

-- Apply default colorscheme which respects terminal colors
vim.cmd.colorscheme("catppuccin-mocha")

-- Number rows
vim.opt.number = true

local function set_transparent()
   local hl_groups = { "Normal", "NormalFloat", "FloatBorder" }
   for _, group in ipairs(hl_groups) do
      vim.api.nvim_set_hl(0, group, { bg = "none" })
   end
end

-- Run after setting colorscheme
set_transparent()
vim.api.nvim_create_autocmd("ColorScheme", {
   pattern = "*",
   callback = set_transparent,
})

vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

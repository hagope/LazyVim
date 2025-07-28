-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>nn", ":Neotree toggle<cr>")
vim.keymap.set("n", "<leader>w", ":w!<cr>")
vim.keymap.set("n", "<leader>q", ":q<cr>")
vim.keymap.set("n", "<leader>kk", ":qa!<cr>")
vim.keymap.set("n", "<leader>kw", ":wqa!<cr>")
vim.keymap.set("n", "<leader><leader>", ":wincmd w<CR>")
vim.keymap.set("n", "<leader>gr", ":OpenInGHRepo<CR>")
vim.keymap.set("n", "<leader>gf", ":OpenInGHFile<CR>")
vim.keymap.set("v", "<leader>gf", ":OpenInGHFile<CR>")

vim.keymap.set("n", "<leader>kyf", function()
  local file_path = vim.fn.expand("%:p")
  if file_path and file_path ~= "" then
    vim.fn.setreg("+", file_path)
    vim.notify("Copied file path to clipboard: " .. file_path)
  else
    vim.notify("No file path to copy.", vim.log.levels.WARN)
  end
end, { desc = "Copy file path to clipboard" })

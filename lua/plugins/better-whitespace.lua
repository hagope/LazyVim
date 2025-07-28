return {
  "ntpeters/vim-better-whitespace",
  config = function()
    vim.g.better_whitespace_ctermcolor = "gray"
    vim.g.better_whitespace_guicolor = "gray"
    vim.g.better_whitespace_filetypes_blacklist = {
      "nofile",
      "markdown",
      "help",
      "startify",
      "dashboard",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
    }
  end,
}

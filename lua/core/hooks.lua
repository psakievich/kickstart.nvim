
--# notetaker autocmnd
-- VIM: autocmd BufWritePost *note-*.md silent !buildnote %:p
vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = {"*note-*.md"},
  command = "silent !buildnote %:p",
})

-- hooks for switching modes from personal dev to pairing and back
develop_mode = function()
  vim.wo.relativenumber = true
  vim.wo.number = true
  vim.wo.cursorline = false
  vim.o.hlsearch = false
end

pairing_mode = function()
  vim.wo.relativenumber = false
  vim.wo.number = true
  vim.wo.cursorline = true
  vim.o.hlsearch = true
end

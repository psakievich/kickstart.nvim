
--# notetaker autocmnd
-- VIM: autocmd BufWritePost *note-*.md silent !buildnote %:p
vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = {"*note-*.md"},
  command = "silent !buildnote %:p",
})

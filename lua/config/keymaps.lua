-- general keybinds

-- Shorten function name
local set = vim.keymap.set
local opts = { noremap = true, silent = true }

--Remap space as leader key
vim.g.mapleader = " "

-- search word under cursos
set({ "n", "x" }, "<leader>cw", "*N", { desc = "Search word under cursor" })

-- Select all
set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
set("n", "<Leader>w", ":update<Return>", opts)
set("n", "<Leader>q", ":quit<Return>", opts)
set("n", "<Leader>Q", ":qa<Return>", opts)

-- insert single and double quotes sorround selection
set({ "v" }, '"', 'di""<esc>P', { desc = "Insert double quotes surround word" })
set({ "v" }, "'", "di''<esc>P", { desc = "Insert single quotes surround word" })

-- insert delimiters surround selection
set({ "v" }, "(", "di()<esc>P", { desc = "Insert () surround word [dsds]" })
set({ "v" }, "[", "di[]<esc>P", { desc = "Insert [] surround word" })
set({ "v" }, "{", "di{}<esc>P", { desc = "Insert {} surround word" })

-- Don't copy the replaced text after pasting in visual mode
-- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text#Alternative_mapping_for_paste
set({ "v", "x" }, "p", 'p:let @+=@0<CR>:let @"=@0<CR>', { desc = "Dont copy replaced text" })

-- toogle background dark/light
local toogle_background = function()
  if vim.o.background == "light" then
    vim.o.background = "dark"
  else
    vim.o.background = "light"
  end
end

set("n", "<leader>ub", toogle_background, { desc = "Toogle Backgrounf Color" })

-- navegate in insert <ctrl> hjkl keys
set("i", "<C-h>", "<Left>", { desc = "Move left" })
set("i", "<C-j>", "<Down>", { desc = "Move down" })
set("i", "<C-k>", "<Up>", { desc = "Move up" })
set("i", "<C-l>", "<Right>", { desc = "Move right" })

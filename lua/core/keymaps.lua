-- general keybinds

-- Shorten function name
local set = vim.keymap.set

--Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear search with <esc>
set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- save file
set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>wa<cr><esc>", { desc = "Save file" })

-- search word under cursos
set({ "n", "x" }, "<leader>cw", "*N", { desc = "Search word under cursor" })

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

-- better indenting
set({ "v" }, "<S-Tab>", "<gv", { desc = "Unindent line" })
set({ "v" }, "<Tab>", ">gv", { desc = "Indent line" })

-- from AstroNvim: https://github.com/AstroNvim/AstroNvim/blob/main/lua/astronvim/plugins/_astrocore_mappings.lua#L49
set({ "n" }, "<leader>pi", function()
  require("lazy").install()
end, { desc = "Plugins Install" })

set({ "n" }, "<leader>ps", function()
  require("lazy").home()
end, { desc = "Plugins Status" })

set({ "n" }, "<leader>pS", function()
  require("lazy").sync()
end, { desc = "Plugins Sync" })

set({ "n" }, "<leader>pu", function()
  require("lazy").check()
end, { desc = "Plugins Check Updates" })

set({ "n" }, "<leader>pU", function()
  require("lazy").update()
end, { desc = "Plugins Update" })

-- navegate in insert <ctrl> hjkl keys
set("i", "<C-h>", "<Left>", { desc = "Move left" })
set("i", "<C-j>", "<Down>", { desc = "Move down" })
set("i", "<C-k>", "<Up>", { desc = "Move up" })
set("i", "<C-l>", "<Right>", { desc = "Move right" })

-- split editor
set("n", "<leader>uh", "<C-u>split<CR>", { desc = "Split horizontal" })
set("n", "<leader>uv", "<C-u>vsplit<CR>", { desc = "Split vertical" })

-- quit
set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

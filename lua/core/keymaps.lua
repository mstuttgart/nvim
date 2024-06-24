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
set({ "v" }, "<", "<gv", { desc = "Unindent line" })
set({ "v" }, ">", ">gv", { desc = "Indent line" })

-- Managers commands
set({ "n" }, "<leader>M", "<cmd>Mason<CR>", { desc = "Mason" })
set({ "n" }, "<leader>L", "<cmd>Lazy<CR>", { desc = "LazyVim" })

-- navegate in insert <ctrl> hjkl keys
set("i", "<C-h>", "<Left>", { desc = "Move left" })
set("i", "<C-j>", "<Down>", { desc = "Move down" })
set("i", "<C-k>", "<Up>", { desc = "Move up" })
set("i", "<C-l>", "<Right>", { desc = "Move right" })

-- split editor
set("n", "<leader>uh", "<C-u>split<CR>", { desc = "Split horizontal" })
set("n", "<leader>uv", "<C-u>vsplit<CR>", { desc = "Split vertical" })

set("n", "<leader>cn", "<cmd>set relativenumber!<CR>", { desc = "Toogle Relative Numbers" })

-- quit
set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
set("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
set("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })

-- toogle background dark/light
local toogle_background = function()
  if vim.o.background == "light" then
    vim.o.background = "dark"
  else
    vim.o.background = "light"
  end
end

set("n", "<leader>ub", toogle_background, { desc = "Toogle Backgrounf Color" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go { severity = severity }
  end
end
set("n", "<leader>cD", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

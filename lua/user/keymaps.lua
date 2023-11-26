-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Shorten WhichKey function
local wk = require("which-key")

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<C-k>", ":resize -2<CR>", opts)
keymap("n", "<C-j>", ":resize +2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Flash --
keymap({ "n", "x", "o" }, "s", "<cmd>lua require('flash').jump()<CR>", opts);

-- Which Key --
wk.register({
  ["<leader>"] = {
    -- Pick buffer
    b = {
      name = "buffer",
      b = { "<cmd>BufferLinePick<CR>", "pick buffer" },
      d = { "<cmd>BufferLinePickClose<CR>", "delete buffer" },
    },
    -- Telescope
    s = {
      name = "telescope",
      f = { "<cmd>Telescope find_files<CR>", "find files" },
      t = { "<cmd>Telescope live_grep<CR>", "find text" },
      p = { "<cmd>Telescope projects<CR>", "find projects" },
      b = { "<cmd>Telescope buffers<CR>", "find buffers" },
    },
    -- File
    f = {
      name = "file",
      f = { "<cmd>Telescope find_files<CR>", "find files" },
      s = { "<cmd>w<CR>", "save file" },
      r = { "<cmd>luafile $MYVIMRC<CR>", "reload config" },
    },
    -- NvimTree
    t = {
      name = "nvim tree",
      t = { "<cmd>NvimTreeFocus<CR>", "toggle file explorer" },
      x = { "<cmd>NvimTreeClose<CR>", "close file explorer" },
    },
    -- Git
    g = {
      name = "git",
      g = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "toggle lazygit" },
    },
    -- DAP
    d = {
      name = "debug",
      b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "toggle breakpoint" },
      c = { "<cmd>lua require'dap'.continue()<cr>", "continue" },
      i = { "<cmd>lua require'dap'.step_into()<cr>", "step into" },
      o = { "<cmd>lua require'dap'.step_over()<cr>", "step over" },
      O = { "<cmd>lua require'dap'.step_out()<cr>", "step out" },
      r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "toggle repl" },
      l = { "<cmd>lua require'dap'.run_last()<cr>", "run last" },
      u = { "<cmd>lua require'dapui'.toggle()<cr>", "toggle ui" },
      t = { "<cmd>lua require'dap'.terminate()<cr>", "terminate" },
    },

    -- Fold
    z = {
      name = "fold",
      z = { "zfa}", "fold all" },
      o = { "zO", "open all" },
      c = { "zC", "close all" },
    },
    -- Clear highlights
    h = { "<cmd>nohlsearch<CR>", "clear highlights" },
  },
})

-- Comment
keymap("n", "<leader>/", '<Plug>(comment_toggle_linewise_current)', opts)
keymap("x", "<leader>/", '<Plug>(comment_toggle_linewise_visual)')

vim.g.mapleader = " "
vim.opt.encoding="utf-8"

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

-- Double Space to open last closed file
nmap("<Leader><Leader>", ":e#<CR>")
imap("jj", "<ESC>l")
imap("jk", "<ESC>:w<CR>")
nmap("<Leader>h", ":nohl<CR>")

-- Use TAB to change Split Panels
nmap("<TAB>", "<C-w>w")

-- Find and Replace
nmap("<C-p>", ":Telescope find_files<CR>")
nmap("<C-i>", ":Telescope git_files<CR>")
nmap("<C-f>", ":Telescope live_grep<CR>")

nmap("<Leader>n", ":cn<CR>")
nmap("<Leader>p", ":cp<CR>")

-- Copy to Clipboard
nmap("<Leader>c", '"+y')

-- Previous/Next Error
nmap("<Leader>E", ':lprev<CR>')
nmap("<Leader>e", ':lnext<CR>')

-- Use UtilSnips
vim.g.UtilSnipsExpandTrigger = "<C-Leader>"
vim.g.UltiSnipsJumpForwardTrigger='<C-j>'
vim.g.UltiSnipsJumpBackwardTrigger='<C-k>'

-- Language Servers
nmap("[e", ":lua vim.diagnostic.goto_next()<CR>")
nmap("]e", ":lua vim.diagnostic.goto_prev()<CR>")

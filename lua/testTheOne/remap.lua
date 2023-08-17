local opts = {noremap = true, silent = true}
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('v', 'x', '"_x')
vim.keymap.set('v', 'x', '"_x')


vim.keymap.set('n', '<leader>+', '<C-a>') -- increments a number
vim.keymap.set('n', '<leader>-', '<C-x>') -- decrements a numebr

vim.keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
vim.keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=') -- make windows equal width
vim.keymap.set('n', '<leader>sx', ':close<CR>') -- close current window

vim.keymap.set('n', '<leader>to', ':tabnew<CR>') -- open a new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>') -- changes to the next window
vim.keymap.set('n', '<leader>tp', ':tabp<CR>') -- changes to the previous window

vim.keymap.set('n', '<C-w>', 'viw') -- selects the whole word selected

vim.keymap.set('n', '<leader>sr', ':%s/') -- by pressing this, it means you can find and add a / and then what to replace with

vim.keymap.set('x', '<leader>p', "\"_dp") -- pastes over a word but keeps this word in clipboard

vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

vim.keymap.set('i', '<C-c>', "<Esc>")

vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- bar bar settings
-- Move to previous/next
vim.keymap.set('n', '<leader>,', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set('n', '<leader>.', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
vim.keymap.set('n', '<leader><', '<Cmd>BufferMovePrevious<CR>', opts)
vim.keymap.set('n', '<leader>>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
vim.keymap.set('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
vim.keymap.set('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
vim.keymap.set('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
vim.keymap.set('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
vim.keymap.set('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
vim.keymap.set('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
vim.keymap.set('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
vim.keymap.set('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
vim.keymap.set('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
vim.keymap.set('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
-- Close buffer
vim.keymap.set('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
vim.keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
vim.keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
vim.keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
vim.keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
--
--
vim.keymap.set('n', 'J', 'mzJ`z') -- stops from going to the end of the line

vim.keymap.set('n', '<C-d>', '<C-d>zz') -- keeps cursor in the middle of the screen
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- keeps cursor in the middle with search terms as well

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/testTheOne/packer.lua<CR> <cmd>so<CR> <cmd>PackerSync<CR>");

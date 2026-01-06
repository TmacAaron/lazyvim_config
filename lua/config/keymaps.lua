-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.cmd [[
    augroup keymaps_user_config
        autocmd!
        autocmd BufWritePost keymaps.lua source <afile>
    augroup end
]]

-- vim.g.mapleader = ' '

local function mapkey(mode, lhs, rhs, desc)
    vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, desc = desc })
end

local function mapcmd(key, cmd, desc)
    vim.api.nvim_set_keymap('n', key, '<cmd>' .. cmd .. '<cr>', { noremap = true, silent = true, desc = desc })
end

-- -- keymaps
-- mapkey('n', '=', 'nzz') -- 寻找下一搜索结果，并将其置于屏幕中心
-- -- noremap = nzz
-- mapkey('n', '-', 'Nzz') -- 寻找上一搜索结果，并将其置于屏幕中心
-- -- noremap - Nzz

-- -- 插入模式移动光标
-- mapkey('i', '<C-h>', '<Left>') -- inoremap <C-h> <Left>
-- mapkey('i', '<C-j>', '<Down>') -- inoremap <C-h> <Left>
-- mapkey('i', '<C-k>', '<Up>') -- inoremap <C-h> <Left>
-- mapkey('i', '<C-l>', '<Right>') -- inoremap <C-h> <Left>
-- mapkey('i', '<C-d>', '<Delete>') -- inoremap <C-h> <Left>
-- -- mapkey('i', '<C-n>', '<Esc>ui')     -- inoremap <C-h> <Left>
mapkey('i', 'fj', '<Esc>', 'ESC') -- 退出编辑模式
-- -- inoremap fj <esc>
-- mapkey('n', 'Y', 'J') -- 与下一行合并
-- mapkey('x', 'Y', 'J') -- 与下一行合并
-- -- noremap Y J
mapkey('n', 'H', '^', 'To begin of line') -- 跳到行首
mapkey('x', 'H', '^', 'To begin of line') -- 跳到行首
-- noremap H ^
mapkey('n', 'L', '$', 'To end of line')   -- 跳到行尾
mapkey('x', 'L', '$', 'To end of line')   -- 跳到行尾
-- -- noremap L $
-- mapkey('n', 'K', 'H') -- 跳到顶部
-- mapkey('x', 'K', 'H') -- 跳到顶部
-- -- nnoremap K H
-- mapkey('n', 'J', 'L') -- 跳到底部
-- mapkey('x', 'J', 'L') -- 跳到底部
-- -- nnoremap J L
-- mapkey('n', '<C-j>', '10j') -- 向下10行
-- mapkey('x', '<C-j>', '10j') -- 向下10行
-- -- noremap <C-j> 10j
-- mapkey('n', '<C-k>', '10k') -- 向上10行
-- mapkey('x', '<C-k>', '10k') -- 向上10行
-- -- noremap <C-k> 10k
-- mapkey('n', '<C-h>', '10h') -- 向左10列
-- mapkey('x', '<C-h>', '10h') -- 向左10列
-- -- noremap <C-h> 10h
-- mapkey('n', '<C-l>', '10l') -- 向右10列
-- mapkey('x', '<C-l>', '10l') -- 向右10列
--

-- mapcmd
mapcmd('<C-n>', 'set rnu! rnu?')
mapcmd('<C-s>', 'w')                -- 保存
-- noremap <C-s> :w<CR>
mapkey('i', '<C-s>', '<Esc>:w<CR>') -- 保存 inoremap <C-s> <Esc>:w<CR>
mapcmd('<A-s>', 'wall')             -- 保存所有
-- map <A-w> :wall<CR>
mapcmd('Q', 'q')                    -- 退出
-- map Q :q<CR>
mapcmd('<A-q>', 'qall')             -- 全部退出 map <A-q> :qall<CR>
mapcmd('<A-Q>', 'q!')               -- 强制退出 map <A-Q> :q!<CR>

mapcmd('<A-h>', 'BufferLineCyclePrev', 'To Prev Buffer')
mapcmd('<A-l>', 'BufferLineCycleNext', 'To Next Buffer')

mapcmd('<leader><tab>h', 'tabnext', 'To Prev Tab')
mapcmd('<leader><tab>l', 'tabnext', 'To Next Tab')

local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
    return
end

-- recommended setting from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])


-- keymap for NvimTreeToggle
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')


nvimtree.setup({
   -- change folder arrow icons
   renderer = {
       icons = {
           glyphs = {
               folder = {
                   arrow_closed = "",
                   arrow_open = "",
                },
            },
        },
    },
    
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
    



})

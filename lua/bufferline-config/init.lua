require("bufferline").setup {
   options = {
       color_icons = true,
       show_buffer_icons = true
   }  
}
vim.cmd[[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]

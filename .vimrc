syntax on
filetype plugin indent on
set ts=2 sts=2 sw=2 et ai si rnu nu

call plug#begin()

Plug 'neoclide/coc.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'

call plug#end()

" use <tab> for trigger completion and navigate to the next complete item
 function! CheckBackspace() abort
   let col = col('.') - 1
     return !col || getline('.')[col - 1]  =~# '\s'
     endfunction

     inoremap <silent><expr> <Tab>
           \ coc#pum#visible() ? coc#pum#next(1) :
                 \ CheckBackspace() ? "\<Tab>" :
                       \ coc#refresh()


colorscheme gruvbox

inoremap <c-a> <Esc>:NERDTreeToggle<cr>
nnoremap <c-a> <Esc>:NERDTreeToggle<cr>

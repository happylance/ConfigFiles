set number
set ruler
syntax on
:imap jk <Esc>
:imap kj <Esc>
:imap ii <Esc>

noremap <Space> <PageDown>
noremap - <PageUp>

set autoindent
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

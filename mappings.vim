" File menu navigation
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" Tab navigation
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>tt :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>q :q<CR>

" Git mappings
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gcd :Gedit<CR><C-w>h :q<CR><C-w>k
nnoremap <leader>ga :Git commit --amend<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gpl :Git push<CR>
nnoremap <leader>ga% :Git add %<CR>

nnoremap <leader>gv :Gitv<CR>
nnoremap <leader>gvf :Gitv!<CR>

" View modification
nnoremap <leader>nu :set nu<CR>
nnoremap <leader>nnu :set nonu<CR>

nnoremap <leader>sp :set paste<CR>
nnoremap <leader>snp :set nopaste<CR>

" Vim admin
nnoremap <leader>so :source ~/.vimrc<CR>
nnoremap <leader>ev :e ~/.vimrc<CR>
nnoremap <leader>es :e ~/.vim/settings.vm<CR>
nnoremap <leader>eh :e ~/.vim/syntax.vm<CR>
nnoremap <leader>em :e ~/.vim/mappings.vm<CR>
nnoremap <leader>eb :e ~/.vim/bundle.vm<CR>
nnoremap <leader>er :e ~/.vim/regex.vm<CR>
nnoremap <leader>ec :e ~/.vim/cheatsheet.txt<CR>

" Visual mappings
" reverse selected text
vnoremap <Leader>r c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>
" Ruby mappings
" /\("[^"'(#{]*"\)
" :%s/\("[^"]+"\)/\1.freeze/gc
" /\("[^"'(#{]*"\)
" :%s!\v("[^"'(#{]*")!\1.freeze!gc

" WIP nnoremap <leader>rfsm :%s/\("\(.*#{\)\@![^"']*"\)/\1.freeze/gc\|:nohl<CR>

" WIP nnoremap <leader>rfsi :%s/\('[^"'(#{)]*'\)/\1.freeze/gc\|:nohl<CR>

"#{test}"
"# test"
" test"
"( test"

" LVS specific macro for local gem
" ^EwveehyEEEa, path: '../gemspbi�kb/:w

" Test focussing

" remove all instances of focus: true
nnoremap <leader>ruf :%s/, focus: true//g<CR>
nnoremap <leader>juf :%s!\v((describe)\|(it)).only!\2\3!g\|:nohl<CR>

" insert focus: true on current line
nnoremap <leader>rf $bhi, focus: true<Esc>
nnoremap <leader>rfb ?\v(it)\|(describe)\|(context)<CR>\|$bhi, focus: true<Esc>:nohl<CR>

nnoremap <leader>jf :s!\v(describe)\|(it)!\1\2.only!\|:nohl<CR>
nnoremap <leader>jfb ?\v(it)\|(describe)<CR>\|:s!\v(describe)\|(it)!\1\2.only!\|:nohl<CR>
nnoremap <leader>jsc :!eslint --fix %<CR>
nnoremap <leader>esd $a // eslint-disable-line<CR>

" nnoremap <leader>fcm /\v(HEAD\|<<<.*\|>>>.*)<CR>
" nnoremap <leader>fcm :s!\v(HEAD\|<<<.*\|>>>.*\|^====.*\|^<Bar><Bar><Bar><Bar>.*)!<CR>
nnoremap <leader>fcm :s!\v(^HEAD\\|^<<<*\\|^>>>*)!<CR>

nnoremap <leader>log Oconsole.log();<Esc>ba
nnoremap <leader>dlog :%g/console.*$/d

" cnoreabbrev NERDTreeFromBookmark OB -nargs=1
" command -nargs=1 OB call NERDTreeFromBookmark(<f-args>)
command! -n=1 -complete=customlist,nerdtree#completeBookmarks -bar OB call g:NERDTreeCreator.CreateTabTree('<args>')

" command -nargs=0 OBt :NERDTreeFromBookmark test
" command -nargs=0 OBs :NERDTreeFromBookmark src

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>esf :!eslint --fix %<CR>

nnoremap * :keepjumps normal! mi*`i<CR>

nnoremap <C-p> :FZF<CR>

com! FormatJSON %!python -m json.tool

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" nnoremap <C-]> :only<bar>vsplit<CR>:execute "tag" . expand('<cword>')<CR>

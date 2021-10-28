" Node
set suffixesadd+=.js
set path+=$PWD/node_modules

" VimNPR - A plugin for sensible Node Path Relative module resolution in Javascript on a project-by-project basis.
let g:vim_npr_max_levels = 40
let g:vim_npr_default_dirs = ["src", "tests", "public", "node_modules"]

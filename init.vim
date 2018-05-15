"=============================================================================
" dark_powered.vim --- Dark powered mode of SpaceVim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================


" SpaceVim Options: {{{
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1
let g:spacevim_default_indent = 4
let g:spacevim_relativenumber = 0
let g:spacevim_max_column = 180
let g:spacevim_enable_googlesuggest = 0
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_enable_neomake = 0
let g:spacevim_enable_ale = 1
let g:spacevim_enable_ycm = 1
let g:ycm_python_binary_path = 'python3'
let g:ycm_global_ycm_extra_conf = '~/.SpaceVim.d/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_semantic_triggers =  {
  \   'c,python' : ['->', '.', 're![_a-zA-Z]'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_min_num_of_chars_for_completion = 1
let g:spacevim_custom_plugins = [
  \ ['lyuts/vim-rtags'],
  \ ]
" }}}

" SpaceVim Layers: {{{
call SpaceVim#layers#load('lang#markdown')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('autocomplete', {
    \ 'auto-completion-return-key-behavior' : 'nil',
    \ 'auto-completion-tab-key-behavior' : 'smart',
    \ 'auto-completion-complete-with-key-sequence' : 'nil',
    \ 'auto-completion-complete-with-key-sequence-delay' : 0.1,
    \ 'auto-completion-enable-snippets-in-popup' : 0
    \ })
call SpaceVim#layers#load('VersionControl')
" }}}


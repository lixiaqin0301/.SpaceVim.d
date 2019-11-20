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
"let g:spacevim_enable_neomake = 0
"let g:spacevim_enable_ale = 1
let g:spacevim_enable_ycm = 1
let g:ycm_python_binary_path = 'python3'
let g:ycm_global_ycm_extra_conf = '~/.SpaceVim.d/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_semantic_triggers = {
  \   'c,cpp,python,sh': ['re!\w{3}'],
  \ }
let g:ycm_min_num_of_chars_for_completion = 99
let g:ycm_show_diagnostics_ui = 0
let g:ycm_key_invoke_completion = '<C-l>'
let g:ycm_filetype_whitelist = { 
  \ "c":1,
  \ "cpp":1, 
  \ "python":1,
  \ "sh":1,
  \ }
let g:spacevim_custom_plugins = [
  \ ['lyuts/vim-rtags'],
  \ ['WolfgangMehner/awk-support'],
  \ ]
let g:neomake_c_enabled_makers = ['gcc']
let g:c_syntax_for_h = 1
let g:neomake_gcc_args = [
    \ '-fsyntax-only',
    \ '-std=gnu99',
    \ '-Wall',
    \ '-I.',
    \ '-I./src',
    \ '-I./include',
    \ '-I./objs',
    \ '-I./src/core',
    \ '-I./src/event',
    \ '-I./src/http',
    \ '-I./src/http/modules',
    \ '-I./src/http/modules/perl',
    \ '-I./src/http/v2',
    \ '-I./src/mail',
    \ '-I./src/os/unix',
    \ '-I./src/stream',
    \ '-DHAVE_CONFIG_H',
    \ '-DDEFAULT_CONFIG_FILE="/usr/local/squid/etc/squid.conf"',
    \ '-DDEFAULT_ACCESSLOG_PC_TEMPLATE="/usr/local/squid/var/logs/access_%host.log"',
    \ '-DDEFAULT_SQUID_CLIENT="/usr/local/squid/bin/squidclient"', 
    \ '-DWS_SQUID_VERSION="squid-2.6.11-57"',
    \ '-D_REENTRANT'
    \ ]
"let g:neomake_shellcheck_args = ['-fgcc']
let g:neomake_echo_current_error = 0
" let g:spacevim_expand_tab = 0
" }}}

" SpaceVim Layers: {{{
call SpaceVim#layers#load('shell')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('autocomplete', {
    \ 'auto-completion-return-key-behavior' : 'nil',
    \ 'auto-completion-tab-key-behavior' : 'smart',
    \ 'auto-completion-complete-with-key-sequence' : 'nil',
    \ 'auto-completion-complete-with-key-sequence-delay' : 0.1,
    \ 'auto-completion-enable-snippets-in-popup' : 0
    \ })
call SpaceVim#layers#load('VersionControl')
call SpaceVim#layers#load('debug')
" }}}


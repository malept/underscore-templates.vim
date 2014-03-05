" Put this file in ~/.vim/syntax/jst.vim

" Vim syntax file
" Language:	Underscore.js Templates
" Maintainer:	Martin Schuerrer, @MSch <martin@schuerrer.org>
" Version:	2
" Last Change:  2011 Jul 3

" depending on your file extension, you can add this to your vimrc:
" au BufNewFile,BufRead *.jst set syntax=jst

let s:jst_eval_start = exists("g:uscore_tpl_eval_start") ? g:uscore_tpl_eval_start : '<%'
let s:jst_eval_end   = exists("g:uscore_tpl_eval_end")   ? g:uscore_tpl_eval_end   : '%>'

let s:jst_interpolate_start = exists("g:uscore_tpl_interpolate_start") ? g:uscore_tpl_interpolate_start : '<%='
let s:jst_interpolate_end   = exists("g:uscore_tpl_interpolate_end")   ? g:uscore_tpl_interpolate_end   : '%>'

" Read the HTML syntax to start with
runtime! syntax/html.vim
unlet b:current_syntax

if exists("b:current_syntax")
  finish
endif
execute printf("syn region jstBlock containedin=ALL start='%s' keepend end='%s' contains=@htmlJavaScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc", s:jst_interpolate_start, s:jst_interpolate_end)
execute printf("syn region jstBlock containedin=ALL start='%s' keepend end='%s' contains=@htmlJavaScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc", s:jst_eval_start, s:jst_eval_end)

let b:current_syntax = "underscore_template"

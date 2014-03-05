# [Underscore.js](http://documentcloud.github.com/underscore/#template) template syntax highlighting for Vim #

This comes from [Martin Schurrer's](https://github.com/MSch) [gist](https://gist.github.com/1062382), but I needed a GitHub repo for it so I could use it with [Pathogen](http://www.vim.org/scripts/script.php?script_id=2332).

## New Features ##

  * filetype detection
  * Custom delimiter support

### Custom Delimiters ###

Since Underscore.js template delimiters can be customized (e.g., via `_.templateSettings`), it is also possible for the highlighter to be customized. The following global variables are supported (with corresponding defaults):

  * `g:uscore_tpl_eval_start` (default: `<%`)
  * `g:uscore_tpl_eval_end` (default: `%>`)
  * `g:uscore_tpl_interpolate_start` (default: `<%=`)
  * `g:uscore_tpl_interpolate_end` (default: `%>`)

Example `~/.vimrc` snippet, where `[% ... %]` and `[[ ... ]]` are used for the evaluate and interpolation delimiters, respectively:

```vim
" Underscore.js templates
let g:uscore_tpl_eval_start = '\[%'
let g:uscore_tpl_eval_end = '%\]'
let g:uscore_tpl_interpolate_start = '\[\['
let g:uscore_tpl_interpolate_end = '\]\]'
```

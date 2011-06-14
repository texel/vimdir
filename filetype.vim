au BufRead,BufNewFile /opt/local/nginx/conf/* set ft=nginx
runtime! ftdetect/*.vim
au BufNewFile,BufRead *.mustache        setf mustache
au BufNewFile,BufRead *.ru set ft=ruby

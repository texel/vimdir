au BufRead,BufNewFile /opt/local/nginx/conf/* set ft=nginx
au BufNewFile,BufRead *.mustache        setf mustache
au BufNewFile,BufRead *.ru set ft=ruby
au BufRead,BufNewFile *.mobile.erb setf eruby.html
runtime! ftdetect/*.vim

vimrc
=====


## Install
```
git clone --recursive https://github.com/johannfr/vimrc ~/.vim
cd ~/.vim/pack/jof/start/YouCompleteMe
python3 install.py --clang-completer --clangd-completer
cd ~/.vim/pack/jof/start
vim -u NONE -c "helptags fugitive/docs" -c q
```


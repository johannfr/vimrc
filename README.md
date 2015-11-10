vimrc
=====

## Pathogen

Setup Pathogen to manage your plugins
```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
```

## syntastic

Install syntastic as a Pathogen bundle.
Syntastic is a tool for using syntax-checkers within vim, e.g. pylint

```bash
cd ~/.vim/bundle
git clone https://github.com/scrooloose/syntastic.git
```

## Powerline

```bash
mkdir ~/.fonts
cd ~/.fonts
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
mkdir ~/.fonts.conf.d
cd ~/.fonts.conf.d
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
git clone https://github.com/Lokaltog/powerline-fonts.git /tmp/powerline-fonts
cp -R /tmp/powerline-fonts/DejaVuSansMono ~/.fonts
fc-cache -vf ~/.fonts
sudo pip install --user git+git://github.com/Lokaltog/powerline
sudo chown -R $USER ~/.local
```

Add the following to your .bashrc or .profile

```bash
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
```

### ctrlp

Install ctrlp as a Pathogen bundle

```bash
cd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git
```

### jedi-vim

Install jedi system-wide and jedi-vim as a Pathogen bundle

```bash
sudo pip install jedi
cd ~/.vim/bundle
git clone git://github.com/davidhalter/jedi-vim.git
```

### Python folding

```bash
mkdir -p ~/.vim/ftplugin
wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
```

### omnicppcomplete

```bash
apt-get install exuberant-ctags
mkdir -p ~/.vim/bundle/omnicppcomplete
cd ~/.vim/bundle/omnicppcomplete
Get the zip-file at http://www.vim.org/scripts/script.php?script_id=1520
and extract it into the current folder.
```

### FSwitch

http://www.vim.org/scripts/script.php?script_id=2590

```bash
git ~/.vim/bundle
git clone https://github.com/derekwyatt/vim-fswitch.git
```

Leader-h opens the header-file for the current source file in a vertical-split-window to the right.

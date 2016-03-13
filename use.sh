rm ~/.vimrc
rm ~/.vimrc.bundles
rm -rf ~/.vim
cp .vimrc ~
cp .vimrc.bundles ~
mkdir -p ~/.vim/colors/
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
curl https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim >> ~/.vim/colors/molokai.vim
vim +BundleInstall +qall

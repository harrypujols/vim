import os

def install():
    print "select font"
    print "[1] Inconsolata for Powerline 16 MAC"
    print "[2] Cousine for Powerline 16 LINUX"
    print "[3] Menlo 14"
    font = raw_input("").lower()
    macfont = r"set guifont=Inconsolata\\ for\\ Powerline:h16"
    linuxfont = r"set guifont=Cousine\\ for\\ Powerline\\ 16"
    if font == "1":
        os.system("rsync -av ./vimrc ~/.vimrc")
        os.system("sed -i '' 's/set guifont=Menlo:h14/"+ macfont +"/g' ~/.vimrc")
        os.system("sed -i '' '/\" start clean/,/\" end clean/d' ~/.vimrc")
        os.system("vim +PuginInstall +qall")
    elif font =="2":
        os.system("cp -i ./vimrc ~/vimrc")
        os.system("sed -i '' 's/set guifont=Menlo:h14/"+ linuxfont +"/g' ~/.vimrc")
        os.system("sed -i '' '/\" start clean/,/\" end clean/d' ~/.vimrc")
        os.system("vim +PuginInstall +qall")
    elif font =="3":
        os.system("rsync -av ./vimrc ~/.vimrc")
        os.system("vim +PuginInstall +qall")
    else:
        print "select 1, 2 or 3"
        install()

install()

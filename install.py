import os

def install():
    print "select font"
    print "[1] Inconsolata for Powerline 16 MAC"
    print "[2] Cousine for Powerline 16 LINUX"
    print "[3] Menlo 14"
    font = raw_input("").lower()

    macfont = r"Inconsolata\\ for\\ Powerline:h16"
    linuxfont = r"Cousine\ for\ Powerline\ 16"

    os.system("rsync -av ./vimrc ~/.vimrc")

    if font == "1":
        os.system("sed -i '' 's/Menlo:h14/"+ macfont +"/g' ~/.vimrc")
        os.system("sed -i '' '/\" start clean/,/\" end clean/d' ~/.vimrc")
        print "Inconsolata 16 set as default GUI font"
    elif font == "2":
        os.system("sed -i 's/Menlo:h14/"+ linuxfont +"/g' ~/.vimrc")
        os.system("sed -i '/\" start clean/,/\" end clean/d' ~/.vimrc")
        print "Cousine 16 set as default GUI font"
    elif font == "3":
        print "Menlo 14 set as default GUI font"
    else:
        print "invalid selection"
        install()
    
    os.system("vim +PuginInstall +qall")

install()

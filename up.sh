if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
if [ -d /root/myblog ] && [ -d /root/3xp10it.github.io ]
then
    cd /root/myblog && pkill jekyll;sleep 3 && cp index.html tmp.html && cp index_bak.html index.html && sh -c "rm -r _site/ & jekyll serve --watch & sleep 3 && exit" && cp _site/index.html index2.html && cp tmp.html index.html && echo congratulations! commands execute ok to here!
    cd /root/3xp10it.github.io && cp -r ../myblog/_site/* . && cp ../myblog/index2.html . && cp ../myblog/index.html . && git status && git add . && git status && git commit -a -m "update" && git push -u origin master && echo congratulations! commands execute ok to here!
    cd /root/myblog && git status && git add . && git status && git commit -a -m "update backup" && git push -u origin master && echo all is well,and all is done!
else
    echo "this is the first time you use me,I will download myblog from https://github.com/3xp10it/myblog.git"
    mkdir /root/myblog && cd /root/myblog && git init && git pull https://github.com/3xp10it/myblog.git && git remote add origin https://github.com/3xp10it/myblog.git
    echo "this is the first time you use me,I will download 3xp10it.github.io from https://github.com/3xp10it/3xp10it.github.io.git"
    mkdir /root/3xp10it.github.io && cd /root/3xp10it.github.io && git init && git pull https://github.com/3xp10it/3xp10it.github.io.git && git remote add origin https://github.com/3xp10it/3xp10it.github.io.git
fi


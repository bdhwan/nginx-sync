#!/bin/bash
echo "ok"
echo $GIT_URL

DST_FOLDER="$(basename "$GIT_URL" .git)"
echo "DST_FOLDER="$DST_FOLDER

if [ -d "$DST_FOLDER" ]
then
    echo "have will update" $DST_FOLDER
    cd $DST_FOLDER
    ls -al
    git fetch --all
    git reset --hard origin/master
    git pull
else 
    echo "not have will clone"
    git clone "$GIT_URL" && cd $DST_FOLDER
    ls -al
fi

cp -f default /etc/nginx/sites-available/default
# cp -f rules.v4 /etc/iptables/rules.v4

service nginx restart
echo "done nginx restart"
# service netfilter-persistent reload
# echo "done netfilter reload"



git add -A
git commit -m "do dokku"
git push origin master
git push dokku master

git remote add dokku dokku@hrclogistics.com:chesnowitz.com

dokku domains:set hrc www.hrclogistics.com
dokku domains:set chesnowitz www.chesnowitz.com
rm -rf date package-data.tar.gz
echo $(date) > date
tar -cjvf package-data.tar.gz *
git add .
git commit -F date
git push -u

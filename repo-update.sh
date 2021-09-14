rm -rf date package-data.tar.gz
echo $(date) > date
tar -czvf package-data.tar.gz *
git add .
git commit -F date
git push -u

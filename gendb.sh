workdir=$(pwd)
dirrepo=$*
cd $dirrepo || exit 1 
rm -rf $dirrepo/$dirrepo.database $workdir/repocon $dirrepo/$dirrepo.bad $dirrepo.lessbad
mkdir -p $workdir/repocon
for x in $(ls); do
	dirnow=$(pwd)
	mkdir -p $workdir/repocon/$x
	if test -d $x; then
	cd $x/ 
	hanhbuild -g data || exit 1
	mv data $workdir/repocon/$x/data || exit 1
	cd $dirnow
	fi
done
cd $workdir 

for badfile in bad lessbad; do
test -f $workdir/$dirrepo.$badfile && cp -r $workdir/$dirrepo.$badfile $workdir/repocon 
done 

cd $workdir/repocon
tar -cjf $workdir/$(basename $dirrepo).database *


workdir=$(pwd)
dirrepo=$*
cd $dirrepo || exit 1 
mkdir -p $workdir/repocon
for x in $(ls); do
	dirnow=$(pwd)
	mkdir -p $workdir/repocon/$x
	cd $x/ 
	hanhbuild -g data || exit 1
	mv data $workdir/repocon/$x/data || exit 1
	cd $dirnow
done

cd $workdir/repocon
tar -cjf $workdir/$(basename $dirrepo).database *


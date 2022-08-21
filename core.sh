cat << EOF
Repository: core
- Add    : 
	+ libcxx, libcxxabi (llvm-runtimes)
	+ confuse
	+ make_ext4fs 
	+ vi (busybox)
- Remove : 
	+ e2fsprogs 
	+ nano
- Merge  :
	+ alpine-headers -> musl 
	+ libunwind      -> llvm-runtimes 
- Move   : 
	+ fts -> musl-fts
	+ musl-locale -> musl-locales
- Update packages to newer version   

EOF

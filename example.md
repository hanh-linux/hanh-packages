# example.md
## Structure
By default, the build file is `buildtav`


The build file has a structure like this:

```````````````
>> Packages: example-1.0

name=example
ver=1.0
home="https://example.com"
desc="Example package description"
depends="depends1 depends2 ..."
sources="url1 url2 ..."

unpack-pkg(){
cd $workdir
# Unpack the source archive
}

compile-pkg(){
cd $workdir/<extracted-source-directory>
# Compile the package with GNU autotools, meson,...
}

make-pkg(){
cd $workdir/<extracted-source-directory>
# Install the binaries to $pkgdir
}
```````````````

If you are familiar with `PKGBUILD`, then the `buildtav` is nearly the same.

## Explaination

### Variables

- `name`   : define the name of the package
- `ver`    : define the version of the package
- `home`   : define the project homepage
- `depends`: define the dependencies for runtime and buildtime
- `sources`: define the neccesary files for building packages

### Functions

#### `unpack-pkg()`
Function for preparing necessary jobs before compiling the packages. The jobs can be unpacking the source tarball, patching, modifying configuration files.


This function can be removed from build file. 
#### `compile-pkg()`
Function for configuring package options and compiling packages. This option will require compiling tools.


This function can be removed from build file.
#### `make-pkg()`
Function for generating necessary information files, compressing packages to a archive. 


The `make-pkg()` function can split to multiple functions like `make-pkg-package1()`, `make-pkg-package2()`.This is useful for making multiple packages from a source tarball.


This function must be inside the build file, otherwise the progress will fail to compress the packages.

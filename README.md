# hanh-packages
Hanh Linux packages build files are here. Newer ISO releases will be at [hanh-linux/hanh-linux](https://github.com/hanh-linux/hanh-linux/releases)
## New things 
#### What are repo.bad and repo.lessbad? 
From 03/16/2022, pachanh-new will have a feature for including bad packages (inspired from Iglunix)
- repo.bad: Including packages listed as bad. Bad packages are packages that doesn't have implementations, too hard to replace, packages that are bloated than it should be, packages depend heavily on them in runtime or packages have big problems. 
- repo.lessbad: Including packages listed as less bad: Less bad packages are packages have implementations but they cannot replace original packages in all common cases, or packages depend on bad packages in runtime or packages has several problems.


Currently, bad and less bad packages don't do anything since we are working on this feature. 

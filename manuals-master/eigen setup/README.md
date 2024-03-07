# Eigen setup instruction 

## visit Eigen site
http://eigen.tuxfamily.org/index.php?title=Main_Page

## download the package
``` bash
$wget http://bitbucket.org/eigen/eigen/get/3.3.7.tar.bz2
```

## unzip
```
$tar xvzf {downloadedfilename with directory}
```
```
$tar xjf {downloadedfilename with directory}
```

tar xzf file.tar.gz- to uncompress a gzip tar file (.tgz or .tar.gz)

tar xjf file.tar.bz2 - to uncompress a bzip2 tar file (.tbz or .tar.bz2) to extract the contents.

tar xf file.tar - to uncompressed tar file (.tar)

tar xC /var/tmp -f file.tar - to uncompress tar file (.tar) to another directory

x: This option tells tar to extract the files.

v: The “v” stands for “verbose.” This option will list all of the files one by one in the archive.

z: The z option is very important and tells the tar command to uncompress the file (gzip).

f: This options tells tar that you are going to give it a file name to work with.

## move the eigen folder under home directory
```
$cp -a {unziped folder} {target folder}
```


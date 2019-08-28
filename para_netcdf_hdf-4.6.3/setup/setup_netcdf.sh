cd ..
rm -rf tarballs
mkdir tarballs

curl -L --output tarballs/hdf5-1.10.5.tar.bz2 "https://www.hdfgroup.org/package/hdf5-1-10-5-tar-bz2/?wpdmdl=13570&amp;refresh=5d1b79444522d1562081604"

curl -L --output tarballs/netcdf-c-4.6.3.tar.gz https://github.com/Unidata/netcdf-c/archive/v4.6.3.tar.gz

curl -L --output tarballs/netcdf-fortran-4.4.5.tar.gz https://www.unidata.ucar.edu/downloads/netcdf/ftp/netcdf-fortran-4.4.5.tar.gz

curl -L --output tarballs/zlib-1.2.11.tar.gz https://zlib.net/zlib-1.2.11.tar.gz

rm -rf src
mkdir src
cd src

tar -xvjf ../tarballs/hdf5-1.10.5.tar.bz2
tar -xvzf ../tarballs/netcdf-c-4.6.3.tar.gz 
tar -xvzf ../tarballs/netcdf-fortran-4.4.5.tar.gz 
tar -xvzf ../tarballs/zlib-1.2.11.tar.gz 

cp --verbose ../setup/hdf5/dobuildsrc hdf5-1.10.5
cp --verbose ../setup/netc/dobuildsrc netcdf-c-4.6.3
cp --verbose ../setup/netf/dobuildsrc netcdf-fortran-4.4.5
cp --verbose ../setup/zlib/dobuildsrc zlib-1.2.11


cd ../setup
cp do* ..

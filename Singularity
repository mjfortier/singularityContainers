Bootstrap:docker
From:ubuntu:latest

%labels
  CREATOR Matthew Fortier
  PURPOSE To provide containerization of CLASSIC functionality
  VERSION 0.1

%post
  mkdir -p /testdir
  cd /testdir
  apt update
  apt install vim make curl libnetcdff-dev git python3 gfortran netcdf-bin nano zlib1g mpich doxygen gedit python3 -y -f -m
  curl -o /testdir/cdo-1.0.6.tar.gz "https://code.mpimet.mpg.de/attachments/download/19299/cdo-1.9.6.tar.gz"
  tar -xzvf cdo-1.0.6.tar.gz cdo-1.9.6/
  cd cdo-1.9.6
  ./configure
  make && make install

%runscript

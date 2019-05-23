Bootstrap:docker
From:ubuntu:latest

%labels
  CREATOR Matthew Fortier
  PURPOSE To provide containerization of CLASSIC functionality
  VERSION 0.1

%post
  mkdir -p /packages
  cd /packages
  apt update
  apt install vim make curl libnetcdff-dev git python3 gfortran netcdf-bin nano zlib1g mpich doxygen gedit python3 -y -f -m
  curl -o /testdir/cdo-1.9.6.tar.gz "https://code.mpimet.mpg.de/attachments/download/19299/cdo-1.9.6.tar.gz"
  tar -xzvf cdo-1.9.6.tar.gz cdo-1.9.6/
  rm cdo-1.9.6.tar.gz
  cd cdo-1.9.6
  ./configure
  make && make install
  cd /packages
  curl -L "https://downloads.sourceforge.net/project/nco/nco-4.8.0.tar.gz" > /packages/nco.tar.gz
  tar -xzvf /packages/nco.tar.gz
  rm /packages/nco.tar.gz


%runscript

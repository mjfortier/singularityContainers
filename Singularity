Bootstrap:docker
From:ubuntu:latest

%labels
  CREATOR Matthew Fortier
  PURPOSE To provide containerization of CLASSIC functionality
  VERSION 0.1

%post
  apt update
  apt install vim make curl libnetcdff-dev git python3 gfortran netcdf-bin nano zlib1g mpich doxygen gedit python3 nco ncview -y -f -m


  mkdir -p /packages
  curl -o /packages/cdo-1.9.6.tar.gz "https://code.mpimet.mpg.de/attachments/download/19299/cdo-1.9.6.tar.gz"
  cd /packages
  tar -xzvf cdo-1.9.6.tar.gz cdo-1.9.6/
  rm cdo-1.9.6.tar.gz
  cd cdo-1.9.6
  ./configure
  make && make install


%runscript
  cd /packages

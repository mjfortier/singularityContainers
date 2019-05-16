Boostrap: docker
From: ubuntu:latest

%labels
  CREATOR "Matthew Fortier"
  PURPOSE "To pass the butter"
  VERSION 0.0

%post
mkdir -p /code
cd /code
apt update
apt install vim make libnetcdff-dev git gfortran netcdf-bin nano zlib1g mpich doxygen -y -f -m

%runscript
cd /code

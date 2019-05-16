Boostrap:docker
From:ubuntu:latest

%labels
  MAINTAINER Matthew Fortier

%post
mkdir -p /code
cd /code
apt update
apt install vim make libnetcdff-dev git gfortran netcdf-bin nano zlib1g mpich doxygen -y -f -m

%runscript
cd /code

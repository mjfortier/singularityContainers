Bootstrap:docker
From:ubuntu:latest

%labels
  CREATOR Matthew Fortier
  PURPOSE To provide containerization of CLASSIC functionality
  VERSION 0.1

%setup
  cp -R /home/matt/Documents/Work/singularityContainers/para_netcdf_hdf-4.6.3 $SINGULARITY_ROOTFS


%post
  apt update
  apt install vim make curl build-essential git libnetcdff-dev git zip unzip python3 m4 gfortran netcdf-bin nano zlib1g mpich doxygen gedit python3 python3-pip nco ncview libopenmpi-dev -y -f -m
  pip3 install pyyaml xarray numpy pandas seaborn matplotlib statistics sklearn netcdf4

  mkdir -p /packages
  curl -o /packages/cdo-1.9.6.tar.gz "https://code.mpimet.mpg.de/attachments/download/19299/cdo-1.9.6.tar.gz"
  cd /packages
  tar -xzvf cdo-1.9.6.tar.gz cdo-1.9.6/
  rm cdo-1.9.6.tar.gz
  cd cdo-1.9.6
  ./configure
  make && make install

  cd /para_netcdf_hdf-4.6.3/setup
  ./setup_netcdf.sh
  chmod 777 -R /para_netcdf_hdf-4.6.3
  cd /para_netcdf_hdf-4.6.3
  ./dobuild.mpi
  echo 'export LD_LIBRARY_PATH=/para_netcdf_hdf-4.6.3/MPI/lib$LD_LIBRARY_PATH' >>$SINGULARITY_ENVIRONMENT



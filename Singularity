Bootstrap:docker
From:ubuntu:latest

%labels
  CREATOR "Matthew Fortier"
  PURPOSE "To pass the butter"
  VERSION 0.0

%post
  mkdir -p /testdir
  cd /testdir
  apt update
  apt install vim make git python3 doxygen gedit python3 -y -f -m
  touch happytime.txt
  echo "GUESS WHAT TIME IT IS!?" > happytime.txt

%runscript
  cd /testdir
  cat happytime.txt

Boostrap: shub
From: ubuntu:latest

%labels
  CREATOR "Matthew Fortier"
  PURPOSE "To pass the butter"
  VERSION 0.0

%post
  mkdir -p /testdir
  cd /testdir
  apt update
  sudo apt install vim make git python3 doxygen gedit -y -f -m
  touch happytime.txt
  echo "GUESS WHAT TIME IT IS!?" > happytime.txt

%runscript
  cd /testdir
  cat happytime.txt

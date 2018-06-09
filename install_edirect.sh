#!/bin/bash

perl -MNet::FTP -e \
  '$ftp = new Net::FTP("ftp.ncbi.nlm.nih.gov", Passive => 1);
   $ftp->login; $ftp->binary;
   $ftp->get("/entrez/entrezdirect/edirect.tar.gz");'
gunzip -c edirect.tar.gz | tar xf -
rm edirect.tar.gz
builtin exit
here=`pwd`
export PATH=${PATH}:$here/edirect >& /dev/null || setenv PATH "${PATH}:$here/edirect"
./edirect/setup.sh

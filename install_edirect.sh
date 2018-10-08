#!/bin/bash

perl -MNet::FTP -e \
  '$ftp = new Net::FTP("ftp.ncbi.nlm.nih.gov", Passive => 1);
   $ftp->login; $ftp->binary;
   $ftp->get("/entrez/entrezdirect/edirect.tar.gz");'
gunzip -c edirect.tar.gz | tar xf -
rm edirect.tar.gz
here=`pwd`
export PATH=${PATH}:$here/edirect >& /dev/null || setenv PATH "${PATH}:$here/edirect"
./edirect/setup.sh
echo "export PATH=\$PATH:$here/edirect" >> $HOME/.bashrc
echo "export EDIRECT_PUBMED_MASTER=/data" >> $HOME/.bashrc

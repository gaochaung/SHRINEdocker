#!/bin/bash

echo 'checking if shrine is deployed ...'

dep=$(cat /opt/shrine/deployed)
cat deployed
echo $dep
if [ "$dep" = "false" ]; then
echo 'deploying shrine app'
  cd /opt/shrine/tomcat
  ./build_shrine.sh
  echo 'shrine deployed'
  cd /opt/shrine
else
  echo 'Already deployed true'
fi

if [ "$HUB" = "false" ]; then
  wget -O AdapterMappings.csv  https://open.med.harvard.edu/svn/shrine-ontology/SHRINE_Demo_Downloads/trunk/AdapterMappings_i2b2_DemoData.csv --no-check-certificate
  mv AdapterMappings.csv /opt/shrine/tomcat/lib/
fi


/opt/shrine/tomcat/bin/catalina.sh run

apt-get update
apt-get install -y software-properties-common
apt-get install -y  openjdk-8-jdk 
apt install -y wget 
apt install -y git
apt install -y procps
apt install -y r-base 
R CMD javareconf
mkdir /opt/semosshome 
apt install -y libssl-dev 
apt install -y libcurl4-openssl-dev 
apt install -y vim 
cd /opt/semosshome 
git clone https://github.com/prabhuk12/dockR
cp /opt/semosshome/dockR/Rprofile.site /etc/R/Rprofile.site
cp /opt/semosshome/dockR/Rserve.conf /etc 
Rscript /opt/semosshome/dockR/Packages.R
wget -P /opt https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.41/bin/apache-tomcat-8.0.41.tar.gz
cd /opt && tar -xvf /opt/apache-tomcat-8.0.41.tar.gz && rm /opt/apache-tomcat-8.0.41.tar.gz 
chmod 777 /opt/apache-tomcat-8.0.41/bin/*.sh 
wget -P /opt https://apache.claz.org/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz 
cd /opt && tar -xvf /opt/apache-maven-3.5.4-bin.tar.gz && rm /opt/apache-maven-3.5.4-bin.tar.gz 
export PATH=$PATH:/opt/apache-maven-3.5.4/bin 
apt install -y 
git config --global http.sslverify false 
cd /opt && git clone https://github.com/SEMOSS/semoss-artifacts 
chmod 777 /opt/semoss-artifacts/artifacts/scripts/* 
mkdir /opt/semosshome 
apt install -y curl 
/opt/semoss-artifacts/artifacts/scripts/update_latest_dev.sh 

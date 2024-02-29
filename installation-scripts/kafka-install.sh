cd /opt
curl -L -O https://downloads.apache.org/kafka/3.6.1/kafka_2.12-3.6.1.tgz
tar -xf kafka_2.12-3.6.1.tgz
mv kafka_2.12-3.6.1 kafka
cd /opt/kafka/bin
for i in `ls *.sh` ; do ln -s /opt/kafka/bin/$i /bin/$i;done

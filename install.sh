sh download.sh

sudo tar xvf logstash-1.5.4.tar.gz -C /opt/
sudo chown -R safiyat /opt/logstash-1.5.4

sudo tar xvf elasticsearch-1.7.2.tar.gz -C /opt/
sudo chown -R safiyat /opt/elasticsearch-1.7.2
unzip -d /opt/elasticsearch-1.7.2/plugins/ elasticsearch-head-master.zip
mv /opt/elasticsearch-1.7.2/plugins/elasticsearch-head-master head

sudo tar xvf kibana-4.1.2-linux-x64.tar.gz -C /opt/
sudo chown -R safiyat /opt/kibana-4.1.2-linux-x64

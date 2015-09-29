APT_UPDATED="True"

CURL_INSTALLED=$(dpkg -l | grep " curl ")
if [ -z  "$CURL_INSTALLED" ]
then
    if [ -z $APT_UPDATED ]
    then
        sudo apt-get update
        APT_UPDATED="True"
    fi
    sudo apt-get -y install curl
fi

JAVA_INSTALLED=$(which java)
if [ -z  "$JAVA_INSTALLED" ]
then
    if [ -z "$APT_UPDATED" ]
    then
        sudo apt-get update
        APT_UPDATED="True"
    fi
    sudo apt-get -y install openjdk-7-jre
fi


REDIS_INSTALLED=$(dpkg -l | grep ^ii | grep " redis-server")
if [ -z  "$REDIS_INSTALLED" ]
then
    if [ -z "$APT_UPDATED" ]
    then
        sudo apt-get update
        APT_UPDATED="True"
    fi
    sudo apt-get -y install redis-server
fi


#Download logstash
if [ ! -s  "logstash-1.5.4.tar.gz" ]
then
    curl -O https://download.elasticsearch.org/logstash/logstash/logstash-1.5.4.tar.gz
fi

#Download elasticsearch
if [ ! -s  "elasticsearch-1.7.2.tar.gz" ]
then
    curl -O https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.2.tar.gz
fi
#Download elasticsearch-head
if [ ! -s  "elasticsearch-head-master.zip" ]
then
    curl -O https://codeload.github.com/mobz/elasticsearch-head/zip/master
fi

#Download kibana
if [ ! -s  "kibana-4.1.2-linux-x64.tar.gz" ]
then
    curl -O https://download.elastic.co/kibana/kibana/kibana-4.1.2-linux-x64.tar.gz
fi


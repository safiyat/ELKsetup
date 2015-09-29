CURL_INSTALLED=$(dpkg -l | grep " curl ")
if [ -n  "$CURL_INSTALLED" ]
then
    sudo apt-get -y remove curl
    sudo apt-get -y autoremove
fi

JAVA_INSTALLED=$(which java)
if [ -n  "$JAVA_INSTALLED" ]
then
    sudo apt-get -y remove openjdk-7-jre
    sudo apt-get -y remove openjdk-7-jre-headless
    sudo apt-get -y autoremove
fi

REDIS_INSTALLED=$(dpkg -l | grep ^ii | grep " redis-server")
if [ -n  "$REDIS_INSTALLED" ]
then
    sudo apt-get -y remove redis-server redis-tools
    sudo apt-get -y autoremove
fi

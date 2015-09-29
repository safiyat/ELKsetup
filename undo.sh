CURL_INSTALLED=$(dpkg -l | grep " curl ")
if [ -n  "$CURL_INSTALLED" ]
then
    sudo apt-get -y remove curl
fi

JAVA_INSTALLED=$(which java)
if [ -n  "$JAVA_INSTALLED" ]
then
    sudo apt-get -y remove openjdk-7-jre
    sudo apt-get -y remove openjdk-7-jre-headless
    sudo apt-get -y autoremove
fi

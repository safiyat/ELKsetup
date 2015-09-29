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

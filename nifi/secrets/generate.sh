#!/bin/ash -e

echo  "*** Generating keystore ***"

keytool -genkey -keyalg RSA -alias nifi -keystore keystore.jks -keypass "SuperSecret" -storepass "SuperSecret" -validity 365 -keysize 4096 -dname "CN=Test-nifi, OU=nifi"
chmod 640 keystore.jks

echo  "*** Keystore generated ***"

echo  "*** Generating truststore for this keystory***"

keytool -export -keystore keystore.jks -alias nifi -file nifi.der -storepass "SuperSecret"
keytool -import -file nifi.der -alias nifi -keystore truststore.jks -storepass "SuperSecret" -noprompt
chmod 640 truststore.jks
rm -f nifi.der

echo  "*** Truststore generated ***"
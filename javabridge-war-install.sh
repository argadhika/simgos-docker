cd z-tmp

wget -c https://onboardcloud.dl.sourceforge.net/project/php-java-bridge/Binary%20package/php-java-bridge_7.2.1/php-java-bridge_7.2.1_documentation.zip -O JavaBridge.zip --no-check-certificate
unzip -q JavaBridge.zip
yes | cp -rf JavaBridge.war $WORKING_DIR/tomcat/./javabridge-war-install.sh

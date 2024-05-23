
WORKING_DIR=$(pwd)

cd $WORKING_DIR/simgos-rpm/var/tmp/simgos2/install/config/

yes | cp -rf 00-base.conf $WORKING_DIR/apache/conf.modules.d/

yes | cp -rf alias.conf $WORKING_DIR/apache/conf.d/
yes | cp -rf headers.conf $WORKING_DIR/apache/conf.d/
yes | cp -rf php.conf $WORKING_DIR/apache/conf.d/

yes | cp -rf catalina.properties $WORKING_DIR/tomcat/
yes | cp -rf context.xml $WORKING_DIR/tomcat/
yes | cp -rf tomcat-users.xml $WORKING_DIR/tomcat/




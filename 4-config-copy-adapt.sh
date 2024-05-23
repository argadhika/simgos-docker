# Belum Bisa Digunakan
WORKING_DIR=$(pwd)

cd $WORKING_DIR/simgos-rpm/var/tmp/simgos2/install/config/
yes | cp -rf httpd.conf $WORKING_DIR/apache/
yes | cp -rf setenv.sh $WORKING_DIR/tomcat/
yes | cp -rf my.cnf $WORKING_DIR/mysql/
yes | cp -rf www.conf $WORKING_DIR/php-fpm/


# apache/httpd.conf
#ServerRoot /etc/httpd /usr/local/apache
sed -i 's/ServerRoot "\/etc\/httpd"/ServerRoot "\/usr\/local\/apache2"/g' $WORKING_DIR/apache/httpd.conf
#root:root?
User www-data
Group www-data
LoadModule mpm_event_module modules/mod_mpm_event.so
LoadModule proxy_module modules/mod_proxy.so
LoadModule proxy_fcgi_module modules/mod_proxy_fcgi.so
# php-fpm/www.conf
#User = root
#Group = root
# comment listen.allowed_clients
sed -i 's/user = apache/user = root/g' $WORKING_DIR/php-fpm/www.conf
sed -i 's/group = apache/group = root/g' $WORKING_DIR/php-fpm/www.conf
sed -i 's/^listen.acl_users/;listen.acl_users/g' $WORKING_DIR/php-fpm/www.conf
#sed -i 's/^listen.allowed_clients/;listen.allowed_clients/g' $WORKING_DIR/php-fpm/www.conf
# php_value[session.save_path]    = /tmp
# php_value[soap.wsdl_cache_dir]  = /tmp

# mysql/my.cnf
#socket=/tmp/mysql.sock
sed -i 's/socket=\/var\/lib\/mysql\/mysql.sock/socket=\/tmp\/mysql.sock/g' $WORKING_DIR/mysql/my.cnf

# tomcat/setenv.sh
#sed -i 's/-Dcom\.sun\.management\.jmxremote\.authenticate=false/-Dcom.sun.management.jmxremote.authenticate=false -Dphp.java.bridge.default_log_level=6 -Dphp.java.bridge.promiscuous=true/g' $WORKING_DIR/tomcat/setenv.sh
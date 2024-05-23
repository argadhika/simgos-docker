<?php
require_once("http://tomcat:8080/JavaBridge/java/Java.inc");
$System = java("java.lang.System");
echo $System->getProperties();
?>
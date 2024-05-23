FROM httpd:2.4

# Install required packages
RUN apt-get update && apt-get install -y \
    libapache2-mod-fcgid \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Enable required Apache modules
#RUN a2enmod proxy_fcgi setenvif rewrite

# Copy Apache configuration file
#COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
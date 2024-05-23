# Use the official Percona Server image as the base image
FROM percona/percona-server:8.0

# Copy the custom my.cnf to the appropriate location in the container
COPY --chown=mysql:mysql --chmod=644 my.cnf /etc/my.cnf

# Expose MySQL port
EXPOSE 3306

# Initialize MySQL and start the server
CMD ["mysqld" ]

#ENTRYPOINT ["tail", "-f", "/dev/null"]
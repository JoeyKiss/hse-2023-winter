FROM postgres:latest
ENV POSTGRES_USER=todoGuy
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=TodoList

# # Allow connections from outside the container
# RUN echo "host all all 0.0.0.0/0 md5" >> /usr/share/postgresql/postgresql.conf.sample

# # Expose PostgreSQL port
# EXPOSE 5432

# Copy the initialization script to create the default user
COPY init.sql /docker-entrypoint-initdb.d/
#COPY init.sql /docker-entrypoint-initdb.d/
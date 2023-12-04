FROM postgres:latest
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=Mep321
ENV POSTGRES_DB=TodoList

# Copy the initialization script to create the default user
COPY init.sql /docker-entrypoint-initdb.d/
#COPY init.sql /docker-entrypoint-initdb.d/
FROM postgres

# ADD scripts/create.sql scripts/populate.sql scripts/init_db.sh scripts/run_db.sh /tmp/

# RUN /tmp/init_db.sh
# ENTRYPOINT "/tmp/run_db.sh"

# COPY scripts/init_db.sh /docker-entrypoint-initdb.d/

# USER postgres

# RUN /tmp/init_db.sh

# ENTRYPOINT /tmp/run_db.sh

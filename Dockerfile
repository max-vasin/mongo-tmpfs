FROM mongo:6

ENV TMPFS_SIZE 2G
ADD entrypoint.sh /entrypoint.sh
ADD mongod.conf /etc/mongod.conf
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 27017
CMD ["mongod", "--config", "/etc/mongod.conf"]

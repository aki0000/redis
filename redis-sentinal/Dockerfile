FROM redis

ADD sentinel.conf /data/sentinel.conf
RUN chown redis:redis /data/sentinel.conf

CMD ["redis-server", "/data/sentinel.conf", "--sentinel"]
# Redis
Test for redis master and slave
```
# Init directories for each redis & make it
bash Init_dir.sh
```


## Test for Redis HA component (master & slave)
```
# Start docker compose
docker compose up

# Exec container for Redis
docker exec -it <container name> /bin/bash
redis-cli set <key> <value>
redis-cli get <key> 
# or
docker exec -it <container name> redis-cli set <key> <value>
docker exec -it <container name> redis-cli get <key> 

# For example
docker exec -it redis-master redis-cli set str "test"
OK
docker exec -it redis-master redis-cli get str
"test"
docker exec -it redis-slave0 redis-cli get str
"test"
docker exec -it redis-slave1 redis-cli get str
"test"
```

## Test for Redis Sentinal component (master & slave & sentinal)
```
# Start docker compose
docker compose up

# Exec container for Redis

# or

```
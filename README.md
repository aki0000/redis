# Redis
Test for redis master and slave

## Test for Redis HA component (master & slave)
Need to execute bellow commands unser `/redis-master-slave`.
```
# Start docker compose
docker compose up --scale slave=2

# Exec container for Redis
docker exec -it <container name> /bin/bash
redis-cli set <key> <value>
redis-cli get <key> 
# or
docker exec -it <container name> redis-cli set <key> <value>
docker exec -it <container name> redis-cli get <key> 

# For example
docker exec -it redis-master-slave-master1 redis-cli set str "test"
OK
docker exec -it redis-master-slave-master1 redis-cli get str
"test"
docker exec -it redis-master-slave-slave0 redis-cli get str
"test"
docker exec -it redis-master-slave-slave1 redis-cli get str
"test"
```

## Test for Redis Sentinal component (master & slave & sentinal)
Need to execute bellow commands unser `/redis-sentinal`.
```
# Start docker compose
docker compose up

# Exec container for Redis

# or

```
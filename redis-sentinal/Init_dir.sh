# 各redisのデータ格納Dirを削除
rm -rf data/redis*

# 各redisのデータ格納Dirを作成
mkdir -p data/redis-master
mkdir -p data/redis-slave0
mkdir -p data/redis-slave1
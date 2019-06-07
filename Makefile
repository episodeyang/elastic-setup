# for documentation see:
# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
start:
	docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.1.1
test:
	curl http://127.0.0.1:9200/_cat/health

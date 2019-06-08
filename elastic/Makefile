# for documentation see:
# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
debug:
	docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.1.1
start:
	docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" \
	-v `$(PWD)/ml_dash_elastic.yml`:/usr/share/elasticsearch/config/elasticsearch.yml \
	docker.elastic.co/elasticsearch/elasticsearch:7.1.1
test:
	curl http://127.0.0.1:9200/_cat/health ||:
dev:
	docker run -i --net=host \
	-e "ELASTICSEARCH_HOSTS=http://54.71.92.65:9200" \
	docker.elastic.co/kibana/kibana:7.1.1
start-kibana:
	docker run -i --net=host \
	-v `$(PWD)/ml_dash_kibana.yml`:/usr/share/kibana/config/kibana.yml:z \
	docker.elastic.co/kibana/kibana:7.1.1

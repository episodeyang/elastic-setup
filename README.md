# Setting up ElasticSearch via Docker

This is a lot easier than installing and starting ElasticSearch locally 

To run:

```bash
make start
```

This should run the following script:

```bash
docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" \
	-v `$PWD/ml_dash_elastic.yml`:/usr/share/elasticsearch/config/elasticsearch.yml \
	docker.elastic.co/elasticsearch/elasticsearch:7.1.1
```
which uses the elastic config file in this repo to openup a server that accepts request from everywhere.
(this is not safe, still in dev mode).

# Solr Example

## Usage
Install docker then pull the repository.


To start the container now run the following command:
```
docker-compose up --build
```

To post [sample data](https://github.com/rosh11090/solr-example/blob/master/sample.json).
```
docker exec -ti solr-container /opt/solr/bin/post -c product /tmp/sample.json 
```

solr should be up and running now at [8983](http://localhost:8983/solr/#/) port.

Play with configs:

[schema](https://github.com/rosh11090/solr-example/blob/master/configsets/product-core/conf/schema.xml)

[solr-config](https://github.com/rosh11090/solr-example/blob/master/configsets/product-core/conf/solrconfig.xml)

[index time synonym](https://github.com/rosh11090/solr-example/blob/master/configsets/product-core/conf/idx_synonyms.txt)

[query time
synonym](https://github.com/rosh11090/solr-example/blob/master/configsets/product-core/conf/qry_synonyms.txt)

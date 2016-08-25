FROM elasticsearch:2.3.5

# Setup
#ENV ES_HEAP_SIZE=16g
WORKDIR /usr/share/elasticsearch
ENTRYPOINT ["/run.sh"]
CMD ["elasticsearch"]

#RUN apt-get update -qq && apt-get install -y jq

ADD elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Copy run scripts
COPY run.sh /

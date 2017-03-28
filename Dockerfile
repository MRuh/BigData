FROM sebp/elk:es241_l240_k461

ADD ./start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

EXPOSE 5601 9200 9300
VOLUME /var/lib/elasticsearch

ADD ./mapping.json /tmp/mapping.json
ADD ./data /data
ADD ./kibana_export/export.json /tmp/kibana-export.json

CMD [ "/usr/local/bin/start.sh" ]

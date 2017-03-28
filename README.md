To test it in your local environment
------------------------------------

1. Set system configure for vm : sudo sysctl -w vm.max_map_count=262144

2. Build the container : sudo docker build -t elakiba:1.0.1 .

3. Run the container locally : sudo docker run -p 9200:9200 -p 5601:5601 elakiba:1.0.1

4. Browse http://localhost:9200 and http://localhost:5601

5. Browse http://localhost:5601
   Uncheck "Index contains time-based events"
   Replace "logstash-*" by "mo*" and click on "Create"
   Click on "Saved Objects"
   Click on "Import" and select the file in kibana_export/export.json

Yuchao :) 18/12/2016




# Elastic Rails Tutorial

This project is a study about Elastic Search and Ruby on Rails integration.

## External Elastic Search

I preferred to leave elastic external from the main docker to simulate production environment. 
The Elastic search docker-compose is on /els directory, it starts 3 Elastic nodes and Kibana.

I have an issue about Kibana. It can't find the nodes unless I use the IP machine on config.

To run use <code>docker-compose up</code>
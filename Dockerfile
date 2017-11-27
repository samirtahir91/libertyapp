FROM websphere-liberty:webProfile7
COPY conf/sample.war /config/dropins
COPY conf/server.xml /config/configDropins/overrides

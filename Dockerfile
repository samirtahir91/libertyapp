FROM websphere-liberty:webProfile7
COPY conf/sample.war /config/dropins/sample.war
COPY conf/over.xml /config/configDropins/overrides/over.xml

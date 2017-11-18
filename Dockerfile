FROM websphere-liberty:webProfile7
COPY conf/*.war /config/dropins

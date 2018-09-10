FROM splunk/splunk

RUN apt-get update && apt-get install -y git nano

#VOLUME ["/opt/splunk/etc/apps/plotlyjs_app"]

RUN git clone https://github.com/tzamba/final_plotlyjs_viz_splunk /opt/splunk/etc/apps/plotlyjs_app

VOLUME ["/opt/splunk/etc/apps/plotlyjs_app"]

ENV SPLUNK_START_ARGS="--accept-license --seed-passwd changeme"


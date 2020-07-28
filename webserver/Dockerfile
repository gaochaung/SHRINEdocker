FROM webserver_base

ADD ./webclient/i2b2webclient-1710.zip /opt/i2b2webclient-1710.zip
#RUN unzip /opt/i2b2webclient-1710.zip -d /var/www/html
#RUN mv /var/www/html/i2b2-webclient-master /var/www/html/webclient

# VOLUME ./i2b2-webclient-master /var/www/html/webclient

#RUN sed -i "s#name:.*#name:\"test\",#g" /var/www/html/webclient/i2b2_config_data.js
#RUN sed -i "s#urlCellPM:.*#urlCellPM:\"http://jboss:8080/i2b2/services/PMService/\",#g" /var/www/html/webclient/i2b2_config_data.js
#RUN sed -i "s#\"http://localhost:9090\",.*#\"http://localhost:9090\",\"http://jboss:8080\",#g" /var/www/html/webclient/index.php


# ADD ./index.php /var/www/html/

ADD ./start.sh .
RUN chmod +x start.sh
ADD ./parametrage.sh .
RUN chmod +x parametrage.sh

RUN touch deployed
RUN echo 'false'>deployed

ENTRYPOINT ["./start.sh"]


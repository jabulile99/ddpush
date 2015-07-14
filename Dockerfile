FROM java:openjdk-8

RUN wget -O /opt/ddpush-1.0.03.zip http://www.ddpush.net/dist/ddpush/ddpush-10/v1.0.03/bin/ddpush-1.0.03.zip

RUN cd /opt/ && ls -l && unzip ddpush-1.0.03.zip
WORKDIR /opt/ddpush-1.0.03

RUN chmod a+x ./start.sh console.sh

RUN sed -r 's/&([^&]*)$/ \1/' start.sh > start.sh

# server push port
EXPOSE 9999 

# client TCP/UDP port
EXPOSE 9966

# console manage port
EXPOSE 9900

CMD /opt/ddpush-1.0.03/start.sh

#MAINTAINER nb7123 nb7123@gmail.com

FROM java:openjdk-8

ADD http://115.28.78.145:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:808:8080/ddpush/ddpush-1.0.03.zip /opt/

RUN cd /opt/ && unzip ddpush-1.0.03.zip && rm -f ddpush-1.0.03.zip
#ADD ddpush-1.0.03 /opt/ddpush-1.0.03
WORKDIR /opt/ddpush-1.0.03

# delete last one '&' char
RUN sed '$s/.$//' start.sh > tmp.sh && mv tmp.sh start.sh && chmod a+x start.sh console.sh
#RUN chmod a+x start.sh console.sh

#  push port TCP/UDP manage 
EXPOSE 9999 9966 9900

# client TCP/UDP port
#EXPOSE 9966

# console manage port
#EXPOSE 9900

CMD /opt/ddpush-1.0.03/start.sh

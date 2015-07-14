#MAINTAINER nb7123 nb7123@gmail.com

FROM java:openjdk-8

ADD ddpush-1.0.03 /opt/ddpush-1.0.03
WORKDIR /opt/ddpush-1.0.03

# server push port
EXPOSE 9999 

# client TCP/UDP port
EXPOSE 9966

# console manage port
EXPOSE 9900

CMD /opt/ddpush-1.0.03/start.sh

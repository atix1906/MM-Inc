FROM ubuntu:latest
RUN \
    apt update && \
    apt upgrade -y
COPY inc.sh /root
RUN chmod 0777 /root/inc.sh
EXPOSE 80
CMD [ "/root/inc.sh" ]
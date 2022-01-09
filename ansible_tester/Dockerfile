FROM ubuntu
RUN apt update && apt install vim openssh-server sudo -y
WORKDIR /tmp
COPY bootstrap.sh /tmp/bootstrap.sh
RUN chmod +x /tmp/bootstrap.sh
RUN /tmp/bootstrap.sh
ENTRYPOINT service ssh start && bash

FROM ubuntu:18.04

# RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
# RUN apt-get update
# RUN apt-get install wget -y

# RUN wget https://studygolang.com/dl/golang/go1.13.linux-amd64.tar.gz
# RUN tar zxf go1.13.linux-amd64.tar.gz

COPY . /action

EXPOSE 12350/tcp

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
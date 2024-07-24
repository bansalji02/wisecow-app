FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y cowsay fortune

COPY . /wisecow

WORKDIR /wisecow

# COPY tls/wisecow.key /etc/ssl/private/
# COPY tls/wisecow.crt /etc/ssl/certs/

CMD ["bash", "wisecow.sh"]      
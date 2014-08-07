from ubuntu:14.04
run apt-get update
run apt-get -y install git
run git clone https://github.com/phusion/baseimage-docker.git
run cd baseimage-docker/image && \
    ./prepare.sh && ./system_services.sh && ./utilities.sh && ./cleanup.sh

CMD ["/sbin/my_init"]

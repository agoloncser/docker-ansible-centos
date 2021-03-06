ARG FROM_TAG=7
FROM centos:${FROM_TAG}
MAINTAINER https://github.com/agoloncser
ENV container docker

# from https://github.com/CentOS/CentOS-Dockerfiles/blob/master/systemd/centos7/Dockerfile
RUN yum -y update && yum clean all
RUN yum -y install systemd python3 sudo && yum clean all && \
rm -f /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup.service;\
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]

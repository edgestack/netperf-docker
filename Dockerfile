FROM centos:7
MAINTAINER Jian Li <gunine@sk.com>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y sockperf iperf iperf3

# meta information of this container
LABEL org.label-schema.name="Network Performance Measurement" \
      org.label-schema.description="A container used to measurement network performance" \
      org.label-schema.usage="https://github.com/sonaproject/netperf-docker" \
      org.label-schema.url="https://github.com/sonaproject/netperf-docker" \
      org.label-scheme.vendor="SK Telecom" \
      org.label-schema.schema-version="1.0"

# accept connection on a set of services
EXPOSE 5000 5001 5002 5003 5004

ENTRYPOINT ["/bin/bash"]

FROM centos:7.7.1908

USER root

RUN yum install python36 -y
RUN ln -f /usr/bin/python3 /usr/bin/python

USER 1001

RUN python --version

CMD [ "/usr/bin/bash" ]

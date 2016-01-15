FROM centos:7

MAINTAINER Daniel Amkær Sørensen <daniel.amkaer@gmail.com>

RUN echo '[ centos-php-awscli ]' > /etc/motd

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN yum install --enablerepo=remi-php56 -y php php-mcrypt php-mysqlnd php-dom php-mbstring
RUN yum install -y python-pip git
RUN pip install awscli

RUN yum clean all

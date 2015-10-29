FROM alpine:latest
MAINTAINER soniclidi


RUN apk update && apk add openssh
RUN sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config \
	&& sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config \
	&& sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config

ADD run.sh /run.sh
RUN chmod +x /run.sh


EXPOSE 22
CMD ["/run.sh"]

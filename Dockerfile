FROM fedora:27
LABEL author="@edt Sergi Muñoz Carmona"
LABEL description="Examen Docker POP Curs 2018-2019"
RUN dnf -y install xinetd iproute iputils nmap uw-imap procps net-tools passwd httpd vsftpd openssh-server tftp-server 
RUN mkdir /opt/docker
COPY /opt/docker/files/* /etc/xinetd.d/.
RUN chmod +x /opt/docker/startup.sh /opt/docker/install.sh
WORKDIR /opt/docker
CMD [ "/opt/docker/startup.sh" ]

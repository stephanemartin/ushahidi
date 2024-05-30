FROM turnkeylinux/ushahidi

RUN  apt-get -y remove tklbam* confconsole shellinabox postfix monit webmin fail2ban openssh-server acpid stunnel4 \
	&& rm -f /etc/init.d/confconsole \
	&& update-rc.d  webmin disable 

COPY --chmod=755 start.sh /usr/sbin/start.sh

EXPOSE 80

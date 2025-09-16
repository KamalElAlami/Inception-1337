#!/bin/sh

mkdir -p /uploads
mkdir -p /jail

if ! id "$FTP_USER" >/dev/null 2>&1; then
    adduser --disabled-password --gecos "" "$FTP_USER"
    echo "$FTP_USER:$FTP_PASSWORD" | chpasswd
fi

chown root:root /jail
chown -R "$FTP_USER:$FTP_USER" /uploads

exec /usr/sbin/vsftpd /etc/vsftpd.conf

#!/bin/sh
set -e

# Ensure uploads dir exists
mkdir -p /uploads
mkdir /jail

# Add FTP user if not exists
if ! id "$FTP_USER" >/dev/null 2>&1; then
    adduser --disabled-password --gecos "" "$FTP_USER"
    echo "$FTP_USER:$FTP_PASSWORD" | chpasswd
fi

# Set ownership
chown root:root /jail
chown -R "$FTP_USER:$FTP_USER" /uploads

# Run vsftpd in foreground (no systemctl in Docker!)
exec /usr/sbin/vsftpd /etc/vsftpd.conf

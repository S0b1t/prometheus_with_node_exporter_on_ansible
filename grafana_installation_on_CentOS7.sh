#!/bin/bash

yum -y install epel-release
yum -y update

cat > /etc/yum.repos.d/grafana.repo <<EOF
[grafana]
name=grafana
baseurl=https://packages.grafana.com/oss/rpm
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://packages.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt
EOF

yum -y install grafana
yum install fontconfig
yum install freetype*
yum install urw-fonts

systemctl enable --now grafana-server
systemctl status grafana-server

iptables -A INPUT -p tcp --dport 3000 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 3000 -j ACCEPT

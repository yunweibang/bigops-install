[Unit]
Description=elasticsearch
After=network.target

[Service]
User=es
Group=es
PIDFile=/var/run/es.pid
ExecStart=/opt/es/bin/elasticsearch
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s TERM $MAINPID
PrivateTmp=false

[Install]
WantedBy=multi-user.target
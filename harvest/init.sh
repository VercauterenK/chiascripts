#!/bin/bash

wget -O /etc/systemd/system/start-harvester-chaingreen.service https://raw.githubusercontent.com/VercauterenK/chiascripts/main/harvest/start-harvester.service
systemctl daemon-reload
systemctl enable start-harvester-chaingreen

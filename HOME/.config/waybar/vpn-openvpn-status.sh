#!/bin/sh

VPN=$(pgrep -a openvpn$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1)

if [ "$VPN" == "nm-openvpn" ]; then
    VPN=$(nmcli connection show --active | grep -i vpn | head -n 1 | awk '{print $1 }')
fi

PRNT=""
if [ ! -z "$VPN" ]; then
    PRNT="{\"text\":\"$VPN\",\"class\":\"disconnected\",\"percentage\":0}"
else
    PRNT='{"text":"Disconnected","class":"disconnected","percentage":0}'
fi

echo $PRNT

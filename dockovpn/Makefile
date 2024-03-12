# the VPN will expire in 4..6 months, shut down and restart the service, then use the new client.opvn in the client/folder

dockovpn:
	docker run -it --rm --cap-add=NET_ADMIN \
-p 1194:1194/udp -p 80:4000/tcp \
-p 3002:80 \ #for downloading cert file
--skip \ #skip generating clients on first run. modify expiration duration first
-v /home/weileizeng/working/docker/dockovpn/clients:/opt/Dockovpn_data/clients \
-e HOST_ADDR=cherenkov.dyn.ucr.edu \
--name dockovpn alekslitvinenk/openvpn

#There's a possibility to persist generated files in volume storage. Run docker with
#`-v openvpn_conf:/opt/Dockovpn_data`


#-e HOST_ADDR=$(curl -s https://api.ipify.org) \

bash:
	docker exec -it dockovpn bash

# how to modify expiration time
# docker compose exec dockovpn bash
# bash-5.1# cd /opt/Dockovpn_data && EASYRSA_CRL_DAYS=3650 easyrsa gen-crl
# cd /opt/Dockovpn
# ./genclient.sh
# copy client.ovpn

# not in use
ipsec:
	docker run --name ipsec-vpn-server --env-file /data/jump/vpn/.env --restart=always -p 500:500/udp -p 4500:4500/udp -v /lib/modules:/lib/modules:ro -d --privileged registry.cn-hangzhou.aliyuncs.com/eryajf/ipsec-vpn-server




mkdir -p $(pwd)/softether/{config,logs}
docker run -d --cap-add NET_ADMIN --name softether-vpn-server --restart always -p 443:443/tcp -p 992:992/tcp -p 1194:1194/udp -p 5555:5555/tcp -v $(pwd)/softether/config:/etc/vpnserver:Z -v $(pwd)/softether/logs:/var/log/vpnserver:Z amary/softether-vpn-server

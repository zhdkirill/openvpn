# openvpn
Minimalistic image to provide VPN connectivity  
[Docker hub](https://hub.docker.com/r/zhdkirill/openvpn)

## Usage
- OpenVPN starts with an .ovpn file located in container's root: `/conf.ovpn`. Mount your configuration there.
- The image requires `net_admin` cap and access to `tun` device.
- The image has built-in NAT enabled.

### Sample compose file
```
services:
  openvpn:
    container_name: openvpn
    image: zhdkirill/openvpn:latest
    cap_add:
      - net_admin
    devices:
      - /dev/net/tun
    volumes:
      - /path/to/my/conf.ovpn:/conf.ovpn:ro
    restart: unless-stopped
 ```

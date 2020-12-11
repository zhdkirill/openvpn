FROM alpine:latest
RUN apk --no-cache --no-progress upgrade && \
    apk --no-cache --no-progress add openvpn iptables
CMD iptables -t nat -A POSTROUTING -o tun+ -j MASQUERADE; openvpn --config conf.ovpn

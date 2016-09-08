OPTIONS="-ti --rm"
#OPTIONS="-d"
docker run $OPTIONS --name dns \
  -v $(pwd)/conf:/usr/local/etc/knot:ro \
  -v $(pwd)/zones:/var/lib/knot/zones \
  -p 53:53/udp \
  cycomf/knot-dns

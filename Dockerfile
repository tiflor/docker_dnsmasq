FROM ubuntu

RUN apt-get update && apt-get install -y \
  dnsmasq \
  vim \
  && rm -rf /var/lib/apt/lists/*

# USER nobody

VOLUME ["/etc/dnsmasq"]

EXPOSE 53

CMD ["dnsmasq", "-k"]

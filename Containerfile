FROM ghcr.io/ctron/csaf-walker:0.8.9

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

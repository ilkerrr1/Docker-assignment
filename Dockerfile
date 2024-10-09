FROM alpine
COPY printenv.sh /usr/local/bin/printenv.sh
CMD ["/usr/local/bin/printenv.sh"]
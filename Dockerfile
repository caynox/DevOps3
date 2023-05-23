FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl

COPY check.sh /app/check.sh
RUN chmod +x /app/check.sh

CMD ["/app/check.sh"]
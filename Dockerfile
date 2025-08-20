FROM alpine
RUN apk add --no-cache ca-certificates
WORKDIR /app
ADD v2ray /app/v2ray
RUN chmod +x /app/v2ray
ADD config.json /app/config.json
EXPOSE 8080
CMD ["./v2ray", "-config", "/app/config.json"]

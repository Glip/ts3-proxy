# TS3Proxy Docker
Docker image for https://github.com/Kandru/ts3proxy

# Run
```bash
docker run -d -p 9987:9987 -p 30033:30033 -p 10011:10011 --name=ts3proxy -v /path/to/config.yaml:/ts3proxy/config.yaml --restart=always kuntsevich89/ts3proxy
```

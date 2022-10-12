# TS3Proxy Docker
Docker image for https://github.com/Kandru/ts3proxy

# Run
```bash
docker run -d -p 9987:9987 -p 30033:30033 -p 10011:10011 --name=ts3proxy -v /path/to/config.yml:/ts3proxy/config.yml --restart=always kuntsevich89/ts3proxy
```

# config.yml
```bash
system:
  logLevel: INFO
  logfile: system.log
  # announce only if you have one virtual ts3 server. won't work otherwise.
  announceServer: True
  serverName: Ts3Proxy
  maxUsers: 100
ts3server:
  enabled: True
  relayAddress: 0.0.0.0
  # relayPort:remoteAddress:remotePort
  # multiple servers splitted by ","
  servers: "9987:127.0.0.1:9987"
  blacklist: blacklist.txt
  whitelist: whitelist.txt
ts3FileTransfer:
  enabled: True
  relayAddress: 0.0.0.0
  relayPort: 30033
  remoteAddress: 127.0.0.1
  remotePort: 30033
  blacklist: blacklist.txt
  whitelist: whitelist.txt
ts3ServerQuery:
  enabled: True
  relayAddress: 0.0.0.0
  relayPort: 10011
  remoteAddress: 127.0.0.1
  remotePort: 10011
  blacklist: blacklist.txt
  whitelist: whitelist.txt
```

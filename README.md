# Distress
pen-testing tool

Features
-------------

- automatic target updates from ITArmy UA
- uses proxies by default
- supports usage of tor exit nodes (refer to `use-tor` flag)
- low cpu utilization

Usage tips
-------------

During testing, I've found the following configurations to give max performance in a decreasing order:

1) `--use-my-ip 100` - <span style="color: red">*CAUTION!*</span> use only with VPN, can give up to 800Mbit(whole network channel) bandwidth
2) `--use-tor 50` - mix of tor and proxies
3) `--use-tor 50 --disable-pool-proxies` - will use only tor nodes
4) `` -- no params, will use proxies, may be unstable

Traffic limitation
-------------
- [trickle -d 3000 -u 6000 ./distress](https://averagelinuxuser.com/limit-bandwidth-linux/#limiting-the-bandwidth-per-application-with-trickle) -- linux only

  use [calculator](https://www.gbmb.org/kb-to-mbit) to convert from KB to Mbit (or use as quick ref 1000KB == 1MB == 8Mbit)

  it is nice to use download rate as a half of upload rate

- [wondershaper](https://github.com/magnific0/wondershaper) -- macos | linux

System optmizations
-------------
- [Linux TCP stack](https://linux2me.wordpress.com/2018/06/03/tuning-the-tcp-stack-system-administrator/)
- [tuned -p network-throughput -d](https://tuned-project.org/) (taken from previous link)


Installation
-------------

#### Linux

```bash
wget https://github.com/Yneth/distress-releases/releases/latest/download/distress_x86_64-unknown-linux-musl
chmod +x distress_x86_64-unknown-linux-musl
./distress_x86_64-unknown-linux-musl
```

#### MacOS

```bash
wget https://github.com/Yneth/distress-releases/releases/latest/download/distress_x86_64-apple-darwin
chmod +x distress_x86_64-apple-darwin && sudo xattr -d com.apple.quarantine distress_x86_64-apple-darwin
./distress_x86_64-apple-darwin
```

#### Windows

**Note**
it is preferred to install [Linux](#linux) version via [WSL](https://docs.microsoft.com/en-us/windows/wsl/install) as it is more stable and gives better performance

download and
run [latest binary](https://github.com/Yneth/distress-releases/releases/latest/download/distress_x86_64-pc-windows-msvc.exe)


### Docker

```bash
docker run --rm -it --pull always --network host ghcr.io/yneth/distress 
```

Output description
-------------
```
+---------------------+---------------------------------------------------------------------------------------------+
| active_connections  | number of successfully established connections that are running flood at the current moment |
+---------------------+---------------------------------------------------------------------------------------------+
| bps                 | average bits per second since last log message                                              |
+---------------------+---------------------------------------------------------------------------------------------+
| rps                 | average requests per second since last log message                                          |
+---------------------+---------------------------------------------------------------------------------------------+
| pps                 | average packets per second since last log message                                           |
+---------------------+---------------------------------------------------------------------------------------------+
| pending_connections | number of connections to be established for flood at the current moment                     |
+---------------------+---------------------------------------------------------------------------------------------+
```



Help
-------------
```
distress 0.4.7
pen-testing tool

USAGE:
    distress [OPTIONS]

OPTIONS:
    -c, --concurrency <CONCURRENCY>
            number of task spawners [default: 4096]

    -t, --targets-path <TARGETS_PATH>
            path or url to get configuration from [default: itarmy_ua]

    -v, --verbose
            More output per occurrence

    -q, --quiet
            Less output per occurrence

        --disable-auto-update
            disables automatic updates

        --disable-pool-proxies
            disables usage of mhddos proxies

        --use-my-ip <USE_MY_IP>
            hint to use your ip in % of requests from 0 to 100 inclusive works amazing with VPN
            [default: 0]

        --use-tor <USE_TOR>
            number of tor connections per target to use, max 100 [default: 0]

        --log-per-target
            Enables togging info for targets

        --log-interval-sec <LOG_INTERVAL_SEC>
            manages log frequency

        --interface <INTERFACE>
            advanced: socket interface name to use, linux only

        --read-timeout <READ_TIMEOUT>
            advanced: socket read timeout in milliseconds [default: 10000]

        --tls-connect-timeout <TLS_CONNECT_TIMEOUT>
            advanced: tls handshake timeout in milliseconds [default: 10000]

        --connect-timeout <CONNECT_TIMEOUT>
            advanced: socket connect timeout for targets and proxies in milliseconds [default:
            10000]

        --proxy-connect-timeout <PROXY_CONNECT_TIMEOUT>
            advanced: socket proxy connect timeout for targets and proxies in milliseconds [default:
            10000]

        --tor-connect-timeout <TOR_CONNECT_TIMEOUT>
            advanced: tor connect timeout in milliseconds [default: 10000]

        --buffer-read-size <BUFFER_READ_SIZE>
            advanced: stream buffer read size

        --buffer-write-size <BUFFER_WRITE_SIZE>
            advanced: stream buffer write size

        --requests-per-conn <REQUESTS_PER_CONN>
            advanced: hint to send specific amount requests per single connection [default: 128]

        --so-send-buf <SO_SEND_BUF>
            advanced: SO_SNDBUF option, see linux man for more

        --so-recv-buf <SO_RECV_BUF>
            advanced: SO_RCVBUF option, see linux man for more

        --disable-so-buf
            advanced: disable so_send_buf, so_recv_buf

        --disable-so-nolinger
            advanced: disable so_linger(0)

        --disable-tcp-nodelay
            advanced: disable tcp_nodelay option

        --prefer-native-tls
            advanced: use nativetls implementation instead of rustls

        --prefer-stats-instrumentation
            preference for old stats counting, use this one in case current stats counting is not
            working

    -h, --help
            Print help information

    -V, --version
            Print version information
```

# Distress

pen-testing tool

Features
-------------

- by default uses proxies of all possible countries
- built-in support of tor exit nodes (refer to the `use-tor` flag)
- low CPU usage
- supports a large number of platforms
- automatic target updates from ITArmy UA

Usage tips
-------------

> **Warning**
> Make sure to use VPN with `--use-my-ip` option

> **Warning**
> Do not mix VPN with proxy, as it may yield poor performance
 
> **Warning**
> To make it run in background use `screen` or `tmux` utilities

During testing, I've found the following configurations to give max performance in a decreasing order:

1) `--use-my-ip 100` or [using x100 tool](#x100)
2) `` -- no params, proxy mode
3) `--use-tor 50` - mix of tor and proxies

Traffic limitation
-------------

- [trickle -d 3000 -u 6000 ./distress](https://averagelinuxuser.com/limit-bandwidth-linux/#limiting-the-bandwidth-per-application-with-trickle) --
  linux only

  use [calculator](https://www.gbmb.org/kb-to-mbit) to convert from KB to Mbit (or use as quick ref 1000KB == 1MB ==
  8Mbit)

  it is nice to use download rate as a half of upload rate

- [wondershaper](https://github.com/magnific0/wondershaper) -- macos | linux

System optimizations
-------------

- [Linux TCP stack](https://linux2me.wordpress.com/2018/06/03/tuning-the-tcp-stack-system-administrator/)
- [tuned -p network-throughput -d](https://tuned-project.org/) (taken from previous link)

Installation
-------------

#### x100

Distress is integrated in x100 tool, you can read the full documentation on how to set up and run [here](https://x100.vn.ua/docs/).

#### Linux

```bash
wget https://github.com/Yneth/distress-releases/releases/latest/download/distress_x86_64-unknown-linux-musl
chmod +x distress_x86_64-unknown-linux-musl
./distress_x86_64-unknown-linux-musl
```

##### with screen
```bash
wget https://github.com/Yneth/distress-releases/releases/latest/download/distress_x86_64-unknown-linux-musl
chmod +x distress_x86_64-unknown-linux-musl
screen -S "distress" ./distress_x86_64-unknown-linux-musl
```

#### MacOS

```bash
wget https://github.com/Yneth/distress-releases/releases/latest/download/distress_x86_64-apple-darwin
chmod +x distress_x86_64-apple-darwin && sudo xattr -d com.apple.quarantine distress_x86_64-apple-darwin
./distress_x86_64-apple-darwin
```

#### Windows

> **Note**
> it is preferred to install [Linux](#linux) version via [WSL](https://docs.microsoft.com/en-us/windows/wsl/install) as
> it is more stable and gives better performance

download and
run [the latest binary](https://github.com/Yneth/distress-releases/releases/latest/download/distress_x86_64-pc-windows-msvc.exe)

#### Docker

```bash
docker run --rm -it --pull always --network host ghcr.io/yneth/distress 
```

Community
-------------

If you encounter errors during distress usage, please refer to [github issues](https://github.com/Yneth/distress/issues)
or [telegram community](https://t.me/distress_support)

Output Description
-------------

| Column                | Description                                                                                 
|-----------------------|---------------------------------------------------------------------------------------------|
| `active_connections`  | Number of successfully established connections that are running flood at the current moment |
| `bps`                 | Average bits per second since last log message                                              |
| `rps`                 | Average requests per second since last log message                                          |
| `pps`                 | Average packets per second since last log message                                           |
| `pending_connections` | Number of connections to be established for flood at the current moment                     |

Help
-------------
```
pen-testing tool

Usage: distress [OPTIONS]

Options:
  -c, --concurrency <CONCURRENCY>
          number of task spawners [default: 4096]
  -t, --targets-path <TARGETS_PATH>
          path or url to get configuration from [default: itarmy_ua]
  -v, --verbose...
          More output per occurrence
  -q, --quiet...
          Less output per occurrence
      --disable-auto-update
          disables automatic updates
      --disable-pool-proxies
          disables usage of mhddos proxies
      --use-my-ip <USE_MY_IP>
          hint to use your ip in % of requests from 0 to 100 inclusive works amazing with VPN [default: 0]
      --use-tor <USE_TOR>
          number of tor connections per target to use, max 100
      --log-per-target
          Enables togging info for targets
      --log-interval-sec <LOG_INTERVAL_SEC>
          manages log frequency
      --json-logs
          print logs as json
      --user-id <USER_ID>
          send personalized user stats to receive rewards in future
      --interface <INTERFACE>
          advanced: socket interface name to use, linux only
      --read-timeout <READ_TIMEOUT>
          advanced: socket read timeout in milliseconds [default: 10000]
      --tls-connect-timeout <TLS_CONNECT_TIMEOUT>
          advanced: tls handshake timeout in milliseconds [default: 10000]
      --connect-timeout <CONNECT_TIMEOUT>
          advanced: socket connect timeout for targets and proxies in milliseconds [default: 10000]
      --proxy-connect-timeout <PROXY_CONNECT_TIMEOUT>
          advanced: socket proxy connect timeout for targets and proxies in milliseconds [default: 10000]
      --tor-connect-timeout <TOR_CONNECT_TIMEOUT>
          advanced: tor connect timeout in milliseconds [default: 10000]
      --h2-handshake-timeout <H2_HANDSHAKE_TIMEOUT>
          advanced: h2 handshake timeout in milliseconds [default: 10000]
      --h2-ready-send-timeout <H2_READY_SEND_TIMEOUT>
          advanced: h2 handshake timeout in milliseconds [default: 10000]
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
      --disable-packet-flood
          advanced: disable packet flood
      --prefer-native-tls
          advanced: use nativetls implementation instead of rustls
      --worker-threads <WORKER_THREADS>
          advanced: customize worker thread count for tokio scheduler
  -h, --help
          Print help
  -V, --version
          Print version
```

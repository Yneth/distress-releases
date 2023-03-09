# Distress
pen-testing tool

Features
-------------

- automatic target updates from ITArmy UA
- uses proxies by default
- supports usage of tor exit nodes (refer to `use-tor` flag)
- low cpu utilization
- advanced attacks

Usage tips
-------------

> **Warning**
> Make sure to use VPN with `--use-my-ip` option

> **Warning**
> Do not mix VPN with proxy, as it may yield poor performance

During testing, I've found the following configurations to give max performance in a decreasing order:

1) `--use-my-ip 100` - can give up to 800Mbit bandwidth (whole network channel)
2) `--use-tor 50` - mix of tor and proxies
3) `--use-tor 50 --disable-pool-proxies` - will use only tor nodes
4) `` -- no params, will use proxies, may be unstable

Traffic limitation
-------------
- [trickle -d 3000 -u 6000 ./distress](https://averagelinuxuser.com/limit-bandwidth-linux/#limiting-the-bandwidth-per-application-with-trickle) -- linux only

  use [calculator](https://www.gbmb.org/kb-to-mbit) to convert from KB to Mbit (or use as quick ref 1000KB == 1MB == 8Mbit)

  it is nice to use download rate as a half of upload rate

- [wondershaper](https://github.com/magnific0/wondershaper) -- macos | linux

System optimizations
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

> **Note**
> it is preferred to install [Linux](#linux) version via [WSL](https://docs.microsoft.com/en-us/windows/wsl/install) as it is more stable and gives better performance

download and
run [the latest binary](https://github.com/Yneth/distress-releases/releases/latest/download/distress_x86_64-pc-windows-msvc.exe)


### Docker

```bash
docker run --rm -it --pull always --network host ghcr.io/yneth/distress 
```

Community
-------------

If you encounter errors during distress usage, please refer to [github issues](https://github.com/Yneth/distress/issues) or [telegram community](https://t.me/distress_support)


Output description
-------------
| Field                 | Description
|-----------------------| --- |
| `active_connections`  | Number of successfully established connections that are running flood at the current moment |
| `bps`                 | Average bits per second since last log message                                              |
| `rps`                 | Average requests per second since last log message                                          |
| `pps`                 | Average packets per second since last log message                                           |
| `pending_connections` | Number of connections to be established for flood at the current moment                     |


Help
-------------
```

```

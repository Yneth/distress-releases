```
distress 0.3.2
pen-testing tool

USAGE:
    distress [OPTIONS]

OPTIONS:
    -c, --concurrency <CONCURRENCY>
            number of task spawners [default: 2048]

    -t, --targets-path <TARGETS_PATH>
            path or url to get configuration from [default: itarmy_ua]

    -v, --verbose
            More output per occurrence

    -q, --quiet
            Less output per occurrence

        --enable-metrics
            Enables metrics collection

        --use-my-ip <USE_MY_IP>
            hint to use your ip in % of requests from 0 to 100 inclusive works amazing with VPN
            [default: 0]

        --use-tor <USE_TOR>
            number of tor connections per target to use, max 100 be careful with this option, as it
            may be cpu intensive leading to freeze. on my testing machine 6 gives great results
            [default: 0]

        --log-per-target
            Enables togging info for targets

        --log-interval-sec <LOG_INTERVAL_SEC>
            manages log frequency

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
            advanced: hint to send specific amount requests per single connection [default: 256]

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

    -h, --help
            Print help information

    -V, --version
            Print version information
```

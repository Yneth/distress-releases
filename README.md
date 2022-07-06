```
distress 0.2.1
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

        --traffic-limit <TRAFFIC_LIMIT>
            UNSTABLE: Sets limit on write operations in bytes per second

        --enable-metrics
            Enables metrics collection

        --use-my-ip <USE_MY_IP>
            hint to use your ip in % of requests from 0 to 100 inclusive [default: 0]

        --use-tor <USE_TOR>
            hint to use tor connections in % of max proxy connections(200), useful in cases when you
            get out of memory [default: 25]

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
            advanced: tor connect timeout for targets in milliseconds [default: 10000]

        --requests-per-conn <REQUESTS_PER_CONN>
            advanced: hint to send specific amount requests per single connection [default: 256]

        --so-send-buf <SO_SEND_BUF>
            advanced: SO_SNDBUF option, see linux man for more

        --so-recv-buf <SO_RECV_BUF>
            advanced: SO_RCVBUF option, see linux man for more

    -h, --help
            Print help information

    -V, --version
            Print version information
```

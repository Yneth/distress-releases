```
distress 0.1.3
pen-testing tool

USAGE:
    distress [OPTIONS]

OPTIONS:
    -c, --concurrency <CONCURRENCY>
            number of task spawners [default: 1024]

        --connect-timeout <CONNECT_TIMEOUT>
            socket connect timeout for targets and proxies

        --disable-auto-update
            

    -h, --help
            Print help information

    -q, --quiet
            Less output per occurrence

        --read-timeout <READ_TIMEOUT>
            socket read timeout

        --refresh-interval-sec <REFRESH_INTERVAL_SEC>
            interval to check target updates

        --requests-per-conn <REQUESTS_PER_CONN>
            hint to send specific amount requests per single connection [default: 1024]

    -t, --targets-path <TARGETS_PATH>
            path or url to get configuration from [default: itarmy_ua]

        --traffic-limit <TRAFFIC_LIMIT>
            Not implemented yet, sets limit on write operations in bytes per second

    -u, --use-my-ip <USE_MY_IP>
            hint to use your ip in % of requests from 0 to 100 inclusive [default: 0]

    -v, --verbose
            More output per occurrence

    -V, --version
            Print version information
```

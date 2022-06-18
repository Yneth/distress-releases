```
distress 0.1.6
pen-testing tool

USAGE:
    distress [OPTIONS]

OPTIONS:
    -c, --concurrency <CONCURRENCY>
            number of task spawners [default: 1024]

    -t, --targets-path <TARGETS_PATH>
            path or url to get configuration from [default: itarmy_ua]

    -v, --verbose
            More output per occurrence

    -q, --quiet
            Less output per occurrence

        --traffic-limit <TRAFFIC_LIMIT>
            Not implemented yet, sets limit on write operations in bytes per second

        --enable-metrics
            Enables metrics collection

    -u, --use-my-ip <USE_MY_IP>
            hint to use your ip in % of requests from 0 to 100 inclusive [default: 0]

        --read-timeout <READ_TIMEOUT>
            advanced: socket read timeout in milliseconds [default: 10000]

        --connect-timeout <CONNECT_TIMEOUT>
            advanced: socket connect timeout for targets and proxies in milliseconds [default:
            10000]

        --requests-per-conn <REQUESTS_PER_CONN>
            advanced: hint to send specific amount requests per single connection [default: 1024]

    -h, --help
            Print help information

    -V, --version
            Print version information
```

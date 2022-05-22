```
distress 0.1.0
pen-testing tool

USAGE:
    distress [OPTIONS]

OPTIONS:
        --connect-timeout <CONNECT_TIMEOUT>
            socket connect timeout for targets and proxies

        --disable-auto-update


    -e, --executor-count <EXECUTOR_COUNT>
            number of task spawners [default: num_cpu * 1024]

    -h, --help
            Print help information

    -q, --quiet
            Less output per occurrence

        --read-timeout <READ_TIMEOUT>
            socket read timeout

        --refresh-interval-sec <REFRESH_INTERVAL_SEC>
            interval to check target updates

        --requests-per-conn <REQUESTS_PER_CONN>
            hint to send N requests per single connection [default: 10]

    -t, --targets-path <TARGETS_PATH>
            path or url to get configuration from [default: itarmy_ua]

        --traffic-limit <TRAFFIC_LIMIT>
            Not implemented yet, sets limit on write operations in bytes per second

    -v, --verbose
            More output per occurrence

    -V, --version
            Print version information
```

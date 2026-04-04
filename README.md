# Distress

## ITAU ALERT

### ⚠️ Оновлення 04.04.2026:

Вірні принципу відкритості, який завжди був основою нашої роботи, ми підготували невеликий інструмент-аудитор і надаємо до нього публічний доступ. Інструмент дозволяє в режимі реального часу бачити поточні цілі атак, стежити за їх статусом, тобто кожен учасник може самостійно контролювати і верифікувати те, що відбувається.

Слід підкреслити, що публікація даного інструменту є вимушеним заходом, який певною мірою надасть противнику змогу відстежувати наші удари що не є добре, але слова адміністрації каналу IT Армія не залишили вибору окрім того щоб спростувати їх дією. Втім, варто додати, що ця можливість існувала завжди, і ми приймаємо це рішення усвідомлено, з чітким розумінням пов'язаних ризиків.

Технічно аудитор перехоплює вихідний трафік від mhddos_proxy, distress або будь-якої іншої програми та показує таблицю з усіма IP-адресами, на які надсилаються запити, кількість пакетів і обсяг трафіку. До кожного IP - посилання на ipinfo.io, де можна одразу перевірити кому він належить. Запустити можна однією командою в Docker, а якщо є сумніви щодо того що відбувається всередині -  достатньо скопіювати Dockerfile у будь-який LLM і попросити пояснити.

ІНСТРУМЕНТ ДЛЯ НЕЗАЛЕЖНОГО АУДИТУ ЦІЛЕЙ ЗНАХОДИТЬСЯ ТУТ:  
https://github.com/porthole-ascend-cinnamon/targets_audit

Кожен охочий, самостійно або за допомогою будь-якого LLM, може переконатися що для проведення цього аудиту достатньо мінімальної технічної компетентності. Жодної потреби лізти у чутливий код не було і немає, особливо тим, хто очевидно в ньому нічого не тямить, адже саме нездатність зробити цей аудит самостійно і спонукала до вимоги повного доступу. Попри це, адміністратор групи IT Армії продовжував наполягати на повному доступі до технічної інфраструктури, ігноруючи всі наведені аргументи.

Так, свого часу ми формально прибрали повністю відкритий вивід цілей в інструментах, але завжди чітко розуміли що це зупинить лише випадкових людей. До таких, очевидно, і належить згаданий адміністратор. Технічно приховати подібні речі неможливо, що ми і демонструємо зараз. І, на жаль, цим давно користувалися вороги.

Хто насправді стоїть за операціями?

Команда розробки та розвідки, яка відповідала за всі операції останні чотири роки, не знає жодної організаційної структури під назвою "IT Армія" окрім 1–2 адмінів чату, які завжди позиціонували себе як таких самих волонтерів. Тому заяви на кшталт "ми не можемо переконатися" розбиваються об просту реальність: жодного "ми" не існує. IT Армія завжди була розподіленою волонтерською спільнотою. Адміни каналу не мають жодного відношення ні до організації атак, ні до підтримки інструментів.

Адмін каналу зажадав повного доступу як до розвідки, так і до розробників, без жодного зрозумілого обґрунтування. Перед десятком розробників, які в ITAU з самого початку, він не зміг пояснити своїх намірів. Натомість пригрозив оголосити нам недовіру і самостійно зібрати нову команду. Ми вважаємо, що спільнота має знати про це.

Закиди щодо непрозорості це не більше ніж вигадка. Інструмент перед вами, цілі перед вами. Аудит доступний кожному прямо зараз.
Тож ми заохочуємо всіх до використання аудитору та підтримки наших ідеалів, чекаємо на ваші відгуки та коментарі.
Відкритість -  це не слабкість. Це наша сила.

### Оригінальна версія від 03.04.2026:

Утіліти IT ARMY а також команда розвідки в повному складі залишаються вірними патріотами України, які працюють проти ворога кожен день.
Всі розвідники і розробники утіліт, які працювали з вами всі 4+ років, залишаються єдиними в своїй позиції, без винятку.

Інформація про компрометацію нашої команди є ініціативою адміністратора ТГ-каналу, який, спираючись на непідтверджені зв’язки з МінЦифри, намагався отримати доступ до чутливого коду та конфігурації під виглядом необхідного аудиту, хоча багато років він цього аудиту не потребував.

Оскільки ця особа не підтвердила ані організацію, яку він представляє, ані мету своїх потреб, ми були вимушені відмовити задля безпеки.
Ми інформуємо вас через утіліти, бо не маємо доступу до офіційного каналу.

Якщо ви сумніваєтеся в поточних цілях, ви завжди можете подивитися, куди спрямовано трафік.
Ми просимо вас не зупиняти сервери, оскільки робота продовжується і від адміністратора ТГ каналу ви не отримаєте правдивої інформації.

Скоріше за все, ми будемо створювати новий канал. Очікуйте подальших новин.

Дякуємо за довіру. Слава Україні!


## ITAU ALERT ! UPD 


## Features

- uses proxies of all possible countries by default
- built-in support for tor exit nodes (refer to `--use-tor` flag)
- low CPU usage
- supports a large number of platforms
- automatic update of targets from ITArmy UA
- advanced methods of flooding

## Table of Contents

* **[Usage tips](#usage-tips)**<br>
* **[System optimizations](#system-optimizations)**<br>
* **[Installation](#installation)**<br>
    * **[x100](#x100)**<br>
    * **[linux](#linux)**<br>
    * **[macos](#macos)**<br>
    * **[windows](#windows)**<br>
    * **[docker](#docker)**<br>
* **[Community](#community)**<br>
* **[Output Description](#output-description)**<br>
* **[Help](#help)**<br>


## Usage tips

> **Warning**
> Be sure to use a VPN with the `--use-my-ip` option

> **Warning**
> Don't mix VPN with proxy as it can lead to poor performance

> **Warning**
> To make it run in the background, use the `screen` or `tmux` utilities

> **Warning**
> To run some advanced methods, you need to run the tool as an administrator

## System optimizations

> **Warning**
> Advanced users only

- [Linux TCP stack](https://linux2me.wordpress.com/2018/06/03/tuning-the-tcp-stack-system-administrator/)
- [tuned -p network-throughput -d](https://tuned-project.org/) (taken from previous link)

## Installation

#### x100

> **Note**
> X100+Distress is best used on VPS servers as it greatly reduces the chance of a ban.

Distress is integrated into the x100 tool, you can read the full documentation on setting up and
run [here](https://x100.vn.ua/docs/).

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
> preferably install the [Linux](#linux) version via [WSL](https://docs.microsoft.com/en-us/windows/wsl/install) as
> it is more stable and provides better performance

download and run [the latest binary](https://github.com/Yneth/distress-releases/releases/latest/download/distress_x86_64-pc-windows-msvc.exe)

#### Docker
> **Warning**
> Docker does not support auto updates


```bash
docker run --rm -it --pull always --network host ghcr.io/yneth/distress 
```

## Community

If you encounter errors while using `distress`, please refer
to [github issues](https://github.com/Yneth/distress-releases/issues)
or [telegram community](https://t.me/distress_support)

## Output Description

| Column                | Description                                                                                         
|-----------------------|-----------------------------------------------------------------------------------------------------|
| `active_connections`  | The number of successfully established connections performed by flood at the current moment         |
| `bps`                 | The average number of bits per second since the last log message read from the network interface    |
| `pps`                 | The average number of packets per second since the last log message read from the network interface |
| `requests`            | Queries made by the tool since the last log message                           |
| `bytes`               | Bytes sent by the tool since the last log message                              |
| `pending_connections` | The number of connections in pending state                                                          |

## Help

``` ./distress -h```
```
load-testing tool

Usage: distress [OPTIONS]

Options:
  -v, --verbose...
          Increase logging verbosity
  -q, --quiet...
          Decrease logging verbosity
  -t, --targets-path <TARGETS_PATH>
          path or url to get configuration from [default: itarmy_ua]
  -c, --concurrency <CONCURRENCY>
          number of tasks
      --use-my-ip <USE_MY_IP>
          hint to use your ip in % of requests from 0 to 100 inclusive works amazing with VPN [default: 0]
      --use-tor <USE_TOR>
          number of tor connections per target to use, max 100
      --disable-auto-update
          disables automatic updates
      --log-per-target
          Enables togging info for targets
      --log-interval-sec <LOG_INTERVAL_SEC>
          manages log frequency
      --json-logs
          print logs as json
      --user-id <USER_ID>
          send personalized user stats to receive rewards in future
      --interface <INTERFACE>
          advanced: comma separated socket interface names to use example: --interface eth0,lo0
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
          advanced: application stream buffer read size
      --buffer-write-size <BUFFER_WRITE_SIZE>
          advanced: application stream buffer write size
      --requests-per-conn <REQUESTS_PER_CONN>
          advanced: hint to send specific amount requests per single connection [default: 128]
      --so-send-buf <SO_SEND_BUF>
          advanced: socket SO_SNDBUF option, see linux man for more
      --so-recv-buf <SO_RECV_BUF>
          advanced: socket SO_RCVBUF option, see linux man for more
      --disable-so-buf
          advanced: disable so_send_buf, so_recv_buf
      --disable-so-nolinger
          advanced: disable so_linger(0)
      --disable-tcp-nodelay
          advanced: disable tcp_nodelay option
      --worker-threads <WORKER_THREADS>
          advanced: customize worker thread count for tokio scheduler
  -h, --help
          Print help information (use `--help` for more detail)
  -V, --version
          Print version information
```

Tweaked
```sh
postgres@pgsql:~$ pgbench -c 10 -j 2 -T 1200 -r mydb

pgbench (15.2 (Debian 15.2-1.pgdg110+1))
starting vacuum...end.
transaction type: <builtin: TPC-B (sort of)>
scaling factor: 2000
query mode: simple
number of clients: 10
number of threads: 2
maximum number of tries: 1
duration: 1200 s
number of transactions actually processed: 5527033
number of failed transactions: 0 (0.000%)
latency average = 2.171 ms
initial connection time = 13.478 ms
tps = 4605.843550 (without initial connection time)
```

Normal
```sh
postgres@pgsql:~$ pgbench -c 10 -j 2 -T 1200 -r mydb

pgbench (15.2 (Debian 15.2-1.pgdg110+1))
starting vacuum...end.
transaction type: <builtin: TPC-B (sort of)>
scaling factor: 2000
query mode: simple
number of clients: 10
number of threads: 2
maximum number of tries: 1
duration: 1200 s
number of transactions actually processed: 5450837
number of failed transactions: 0 (0.000%)
latency average = 2.201 ms
initial connection time = 12.875 ms
tps = 4542.385981 (without initial connection time)
```
---
Tweaked
```sh
postgres@pgsql:~$ pgbench -c 10 -j 2 -T 2400 -r mydb
pgbench (15.2 (Debian 15.2-1.pgdg110+1))
starting vacuum...end.
transaction type: <builtin: TPC-B (sort of)>
scaling factor: 2000
query mode: simple
number of clients: 10
number of threads: 2
maximum number of tries: 1
duration: 2400 s
number of transactions actually processed: 10399473
number of failed transactions: 0 (0.000%)
latency average = 2.308 ms
initial connection time = 11.681 ms
tps = 4333.132065 (without initial connection time)
```

Normal
```sh
postgres@pgsql:~$ pgbench -c 10 -j 2 -T 2400 -r mydb
pgbench (15.2 (Debian 15.2-1.pgdg110+1))
starting vacuum...end.
transaction type: <builtin: TPC-B (sort of)>
scaling factor: 2000
query mode: simple
number of clients: 10
number of threads: 2
maximum number of tries: 1
duration: 2400 s
number of transactions actually processed: 10257791
number of failed transactions: 0 (0.000%)
latency average = 2.340 ms
initial connection time = 13.369 ms
tps = 4274.099597 (without initial connection time)
```
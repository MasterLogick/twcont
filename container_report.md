`sysbench cpu --threads=100 --time=60 --cpu-max-prime=64000 run`

|     | CPU events/s | total time, s | total # of events | latency min | latency avg | latency max | latency 95p | latency sum | events avg | events stddev | exec time avg | exec time sttdev |
| --- | ------------ | ------------- | ----------------- | ----------- | ----------- | ----------- | ----------- | ----------- | ---------- | ------------- | ------------- | ---------------- |
| 1 | 3522.71 | 60.016 | 211420.0 | 2.3 | 28.33 | 184.48 | 59.99 | 5989005.83 | 2114.2 | 378.5 | 59.8901 | 0.07 |
| 2 | 3523.69 | 60.014 | 211472.0 | 2.36 | 28.34 | 200.5 | 59.99 | 5992747.9 | 2114.72 | 329.79 | 59.9275 | 0.05 |
| 3 | 3480.24 | 60.0174 | 208876.0 | 2.36 | 28.68 | 201.33 | 64.47 | 5991180.39 | 2088.76 | 458.93 | 59.9118 | 0.06 |
| 4 | 3498.53 | 60.0147 | 209964.0 | 2.36 | 28.54 | 209.2 | 59.99 | 5991716.79 | 2099.64 | 308.79 | 59.9172 | 0.06 |
| 5 | 3493.76 | 60.0168 | 209685.0 | 2.35 | 28.58 | 216.48 | 59.99 | 5993383.09 | 2096.85 | 343.46 | 59.9338 | 0.04 |
| Avg | 3503.7860 | 60.0158 | 210283.4000 | 2.3460 | 28.4940 | 202.3980 | 60.8860 | 5991606.8000 | 2102.8340 | 363.8940 | 59.9161 | 0.0560 |

`sysbench threads --threads=64 --thread-yields=100 --thread-locks=2 run`

|     | total time, s | total # of events | latency min | latency avg | latency max | latency 95p | latency sum | events avg | events stddev | exec time avg | exec time sttdev |
| --- | ------------- | ----------------- | ----------- | ----------- | ----------- | ----------- | ----------- | ---------- | ------------- | ------------- | ---------------- |
| 1 | 10.0023 | 231078.0 | 0.03 | 2.77 | 17.78 | 7.04 | 640026.29 | 3610.5938 | 57.85 | 10.0004 | 0.0 |
| 2 | 10.0023 | 231408.0 | 0.03 | 2.77 | 22.57 | 7.04 | 640026.18 | 3615.75 | 60.07 | 10.0004 | 0.0 |
| 3 | 10.0024 | 229563.0 | 0.03 | 2.79 | 25.57 | 7.04 | 640029.2 | 3586.9219 | 56.54 | 10.0005 | 0.0 |
| 4 | 10.0024 | 229037.0 | 0.03 | 2.79 | 22.74 | 7.04 | 640029.39 | 3578.7031 | 54.71 | 10.0005 | 0.0 |
| 5 | 10.0024 | 229863.0 | 0.03 | 2.78 | 25.75 | 7.04 | 640033.37 | 3591.6094 | 52.03 | 10.0005 | 0.0 |
| Avg | 10.0024 | 230189.8000 | 0.0300 | 2.7800 | 22.8820 | 7.0400 | 640028.8860 | 3596.7156 | 56.2400 | 10.0005 | 0.0000 |

`sysbench memory --threads=100 --time=60 --memory-oper=write run`

|     | Ops/s | Mem spped, MiB/s | total time, s | total # of events | latency min | latency avg | latency max | latency 95p | latency sum | events avg | events stddev | exec time avg | exec time sttdev |
| --- | ----- | ---------------- | ------------- | ----------------- | ----------- | ----------- | ----------- | ----------- | ----------- | ---------- | ------------- | ------------- | ---------------- |
| 1 | 21789717.84 | 21279.02 | 4.8119 | 104857600.0 | 0.0 | 0.0 | 147.98 | 0.0 | 355256.23 | 1048576.0 | 0.0 | 3.5526 | 0.7 |
| 2 | 21857739.04 | 21345.45 | 4.7969 | 104857600.0 | 0.0 | 0.0 | 148.01 | 0.0 | 366432.89 | 1048576.0 | 0.0 | 3.6643 | 0.54 |
| 3 | 22178396.01 | 21658.59 | 4.7276 | 104857600.0 | 0.0 | 0.0 | 203.7 | 0.0 | 353806.63 | 1048576.0 | 0.0 | 3.5381 | 0.79 |
| 4 | 22046023.57 | 21529.32 | 4.756 | 104857600.0 | 0.0 | 0.0 | 192.0 | 0.0 | 369187.57 | 1048576.0 | 0.0 | 3.6919 | 0.48 |
| 5 | 21981892.06 | 21466.69 | 4.7699 | 104857600.0 | 0.0 | 0.0 | 168.0 | 0.0 | 350500.04 | 1048576.0 | 0.0 | 3.505 | 0.64 |
| Avg | 21970753.7040 | 21455.8140 | 4.7725 | 104857600.0000 | 0.0000 | 0.0000 | 171.9380 | 0.0000 | 359036.6720 | 1048576.0000 | 0.0000 | 3.5904 | 0.6300 |

`sysbench memory --memory-block-size=1M --memory-total-size=10G run`

|     | Ops/s | Mem spped, MiB/s | total time, s | total # of events | latency min | latency avg | latency max | latency 95p | latency sum | events avg | events stddev | exec time avg | exec time sttdev |
| --- | ----- | ---------------- | ------------- | ----------------- | ----------- | ----------- | ----------- | ----------- | ----------- | ---------- | ------------- | ------------- | ---------------- |
| 1 | 38201.93 | 38201.93 | 0.2675 | 10240.0 | 0.02 | 0.03 | 0.2 | 0.03 | 265.93 | 10240.0 | 0.0 | 0.2659 | 0.0 |
| 2 | 38113.14 | 38113.14 | 0.2681 | 10240.0 | 0.02 | 0.03 | 0.13 | 0.03 | 266.69 | 10240.0 | 0.0 | 0.2667 | 0.0 |
| 3 | 36101.53 | 36101.53 | 0.2831 | 10240.0 | 0.03 | 0.03 | 0.15 | 0.04 | 281.51 | 10240.0 | 0.0 | 0.2815 | 0.0 |
| 4 | 38768.85 | 38768.85 | 0.2636 | 10240.0 | 0.02 | 0.03 | 0.05 | 0.03 | 262.2 | 10240.0 | 0.0 | 0.2622 | 0.0 |
| 5 | 38065.74 | 38065.74 | 0.2684 | 10240.0 | 0.03 | 0.03 | 0.12 | 0.03 | 266.95 | 10240.0 | 0.0 | 0.2669 | 0.0 |
| Avg | 37850.2380 | 37850.2380 | 0.2701 | 10240.0000 | 0.0240 | 0.0300 | 0.1300 | 0.0320 | 268.6560 | 10240.0000 | 0.0000 | 0.2686 | 0.0000 |

`sysbench fileio --file-total-size=10G --file-test-mode=rndrw --time=120 --time=300 --max-requests=0 run`

|     | ops reads/s | ops writes/s | ops fsyncs/s | throughput read, MiB/s | throughput write, MiB/s | total time, s | total # of events | latency min | latency avg | latency max | latency 95p | latency sum | events avg | events stddev | exec time avg | exec time sttdev |
| --- | ----------- | ------------ | ------------ | ---------------------- | ----------------------- | ------------- | ----------------- | ----------- | ----------- | ----------- | ----------- | ----------- | ---------- | ------------- | ------------- | ---------------- |
| 1 | 150.92 | 100.61 | 322.2 | 2.36 | 1.57 | 300.5654 | 172315.0 | 0.0 | 1.74 | 401.32 | 0.89 | 299949.87 | 172315.0 | 0.0 | 299.9499 | 0.0 |
| 2 | 119.29 | 79.53 | 254.73 | 1.86 | 1.24 | 300.2694 | 136061.0 | 0.0 | 2.21 | 402.19 | 0.89 | 300156.19 | 136061.0 | 0.0 | 300.1562 | 0.0 |
| 3 | 191.56 | 127.7 | 408.84 | 2.99 | 2.0 | 300.0675 | 218352.0 | 0.0 | 1.37 | 598.45 | 0.89 | 299931.51 | 218352.0 | 0.0 | 299.9315 | 0.0 |
| 4 | 156.57 | 104.38 | 334.35 | 2.45 | 1.63 | 300.0573 | 178496.0 | 0.0 | 1.68 | 401.05 | 0.89 | 299944.55 | 178496.0 | 0.0 | 299.9445 | 0.0 |
| 5 | 102.18 | 68.12 | 218.23 | 1.6 | 1.06 | 300.0613 | 116455.0 | 0.0 | 2.58 | 799.72 | 0.89 | 299963.62 | 116455.0 | 0.0 | 299.9636 | 0.0 |
| Avg | 144.1040 | 96.0680 | 307.6700 | 2.2520 | 1.5000 | 300.2042 | 164335.8000 | 0.0000 | 1.9160 | 520.5460 | 0.8900 | 299989.1480 | 164335.8000 | 0.0000 | 299.9891 | 0.0000 |

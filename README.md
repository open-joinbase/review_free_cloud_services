## Review

Deep reading: [Quick Review for Free Database Cloud Services or Demos on NYCT Dataset](https://joinbase.io/blog/clouds-quick-reivew/)

Notes: Just treat this as a quantitative analysis although we give out the quantitative results. Welcome to reproduce yourself.

## Results

* According to our `15-minute rule`, only three database services or demos are reviewed. But, it is welcome more PRs if someone likes to add more.
* Queries for all truely tested database services are listed in the directory [`queries`](/queries/).
* All queries run in 5+ times, and use the shortest reported elapsed time here.
* More about kinds of nyct dataset could be seen [in this article](https://joinbase.io/benchmark/#benchmark-model).
* Different datasets are used for different cloud services, and `JoinBase Cloud Preview` is used as an intermediate reference which is reviewed for all datasets. Because `ClickHouse Playground` is read only, and 1-billion-row nyct_strip dataset is too big to import into Timescale Cloud for its slow writing performance.

1. `JoinBase Cloud Preview` vs `Timescale Cloud` On nyct_lite dataset

the elapsed time is in the unit of milliseconds.

| Database Service | Q1 | Q2 | Dataset Size (rows) | 
| :----------- | :-------------- | :-------------- | :-------------- | 
| JoinBase Cloud Preview | 0.78 |  4.45   | 10M  |
| Timescale Cloud | 650.739  | 840.430 | 10M  |
| TS:JB Ratio | 834      |   189   | 1:1  | 

2. `JoinBase Cloud Preview` vs `ClickHouse Playground` on nyct_strip dataset

the elapsed time is in the unit of second.

| Database Service | Q1 |  Q2 | Q3 | Q4 | Dataset Size (rows) |
| :----------- | :-------------- | :-------------- | :-------------- | :-------------- |:-------------- |
| JoinBase Cloud Preview | 0.168  | 0.259 | 0.355 |  1.126  | 1 billion    | 
| ClickHouse Playground | 1.664  | 1.659 | 1.714  | 2.431  | 3.46 billion | 
| TS:JB Ratio | 9.9    | 6.4   | 4.8    | 2.16   |   3.46 |

## FAQ

We found some problem when reviewing services: 
1. JoinBase Cloud Preview in-browser execution submission timeout ("Unknown error occurred. Please try again later."). This may happen if you are in some area behind firewalls.
2. Too long (tens of seconds) for first JoinBase query. This is because we just use a relatively cheap EBS volume( IO throughput = 500M/s , IOPS < 3500). For cold loading on tens of GB dataset, the speed is just tens of seconds.
3. ClickHouse client or psql console connection sucks. This also may happen if you are in some area behind firewalls.

Please retry when you find these problem.
select avg(passenger_count),avg(total_amount),avg(trip_distance),max(passenger_count),max(total_amount),max(trip_distance),min(passenger_count),min(total_amount),min(trip_distance) from trips;
select date(pickup_datetime),avg(trip_distance) from trips group by date(pickup_datetime);
select date(pickup_datetime),avg(total_amount) FROM trips WHERE passenger_count = 1 GROUP BY date(pickup_datetime);
select vendor_id,cab_type,passenger_count,avg(total_amount),avg(trip_distance) from trips group by vendor_id,cab_type,passenger_count;
select sum(passenger_count) from nyct_lite;
SELECT rate_code, COUNT(vendor_id) AS num_trips FROM nyct_lite WHERE pickup_datetime < '2016-02-01' GROUP BY rate_code ORDER BY rate_code;
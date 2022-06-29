select sum(passenger_count) from nyct_lite
SELECT rate_code, COUNT(vendor_id) num_trips FROM nyct_lite WHERE pickup_datetime < dt'2016-02-01 00:00:00' GROUP BY rate_code ORDER BY rate_code
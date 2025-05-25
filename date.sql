--Show TimeZone
SHOW timezone;

--Timestamp
SELECT now();

--Creating table for timezone
CREATE TABLE timeZ(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT INTO timeZ(ts, tsZ) VALUES(
    '2024-01-12 10:45:00 ',
    '2024-01-12 10:45:00 '
)

SELECT * from timeZ;

--Select current date only
SELECT CURRENT_DATE;
SELECT now()::date;

--Select only current time
SELECT NOW()::time;

--Select date with custom format
SELECT to_char(now(), 'dd-mm-yyyy');
--visit postgrees documentation for mor format


--Interval
SELECT CURRENT_DATE - INTERVAL '1 year';
SELECT CURRENT_DATE + INTERVAL '1 year';
SELECT CURRENT_DATE + INTERVAL '1 year 6 month';
SELECT CURRENT_DATE - INTERVAL '5 year 2 month 3 day';


-- Student first name capitalize run time
SELECT upper(first_name) as first_name_upper FROM students;


--Concat
SELECT concat(first_name,' ', last_name) FROM students;



--Scaler:  এটি প্রতি রো এর জন্য একবার করে ইন্ডিপেন্ডন্টলি রান করবে অর্থাৎ আগের রো এর সাথে এর কোনো কানেকশন থাকবে না এবং প্রতি রো এর জন্য একটি ভাল্যু দিবে।

SELECT concat(first_name, ' ',last_name) FROM students;
--উপরের কনকেট ফাংসন টি একটি স্কেলার ফাংসন কারন এটি প্রত্যেক টি রো এর জন্য একবার করে রান করেছে। এবং প্রতি রো এর জন্য একবার ডাটা দিচ্ছে।


--স্কেলার ফাংসন কল করলে মাল্টিপল ভ্যালু পাওয়া যাবে।

upper()
lower()
concat()
length()




--Aggregate function: এটি সকল ভ্যালু এর সেট নিয়ে কাজ করে এবং একটি সিঙ্গেল অউটপুট প্রদান করে।

--avg()
SELECT avg(age) FROM students;

--max()
SELECT max(age) FROM students;

--min()
SELECT min(age) FROM students;

--sum()
SELECT sum(age) FROM students;

--count()
SELECT count(*) FROM students;



SELECT max(length(first_name)) FROM students;
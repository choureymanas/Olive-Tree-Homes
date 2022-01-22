DROP DATABASE IF EXISTS olive_tree_apartment;
CREATE DATABASE olive_tree_apartment;
use olive_tree_apartment;

CREATE TABLE employee(
emp_phone CHAR(10),
emp_fname VARCHAR(20),
emp_lname VARCHAR(20),
emp_email VARCHAR(20),
emp_address VARCHAR(70),
emp_dob DATE,
PRIMARY KEY (emp_phone)
);

INSERT INTO employee VALUES('2234567890','Benjamin','Stewart','emp1@hh.com',"2803 Worthington Drive, Richardson, Texas, US - 75081", '1976-01-28')
,('2234567891','Justin','Anderson','emp2@hh.com',"520 Wilson Avenue, Richardson, Texas, US - 75080", '1976-07-11')
,('2234567892','Thomas','Hernandex','emp3@hh.com',"3564 Fancher Drive, Richardson, Texas, US - 75081", '1978-11-14')
,('2234567893','Eric','Simmons','emp4@hh.com',"4980 Oakridge Lane, Richardson, Texas, US - 75081", '1978-12-01')
,('2234567894','Henry','Young','emp5@hh.com',"5020 Brown Street, Richardson, Texas, US - 75081", '1982-08-23')
,('2234567895','Lois','Lane','emp6@hh.com',"2536 Giraffe Hill Drive, Richardson, Texas, US - 75081", '1982-07-27')
,('2234567896','Shawn','Taylor','emp7@hh.com',"142 Willson Avenue, Richardson, Texas, US - 75081", '1984-01-06')
,('2234567897','Chris','Vogues','emp8@hh.com',"777 Charla Lane, Richardson, Texas, US - 75081", '1989-10-21')
,('2234567898','Bobby','Ward','emp9@hh.com',"192 Stoney Lane, Richardson, Texas, US - 75081", '1991-12-16')
,('2234567899','Fred','Henderson','emp10@hh.com',"1425 Willson Avenue, Richardson, Texas, US - 75081", '1994-11-08')
,('2234567900','Andy','Hughes','emp11@hh.com',"2305 Washington Drive, Richardson, Texas, US - 75081", '1993-12-11');

SELECT * FROM employee;

CREATE TABLE prospective_residents(
pros_phone CHAR(10),
pros_email VARCHAR(20),
floor_plan VARCHAR(10),
tentv_lease_dt DATE,
quote_id VARCHAR(10),
quote_date DATE,
emp_phone CHAR(10),
PRIMARY KEY (pros_phone),
FOREIGN KEY (emp_phone) REFERENCES employee(emp_phone)
);

Insert Into prospective_residents values("1234567890", "cust1@hh.com", "E1", "2011-10-01", "16311", "2010-03-14", "2234567890")
,("1234567891", "cust2@hh.com", "E2", "2013-03-11", "14068", "2012-03-14", "2234567891")
,("1234567892", "cust3@hh.com", "E3", "2014-04-12", "12172", "2013-03-17", "2234567892")
,("1234567893", "cust4@hh.com", "E4", "2015-07-13", "13625", "2016-03-14", "2234567893")
,("1234567894", "cust5@hh.com", "E5", "2017-09-14", "13942", "2018-03-19", "2234567894")
,("1234567895", "cust6@hh.com", "E1", "2018-11-15", "10747", "2017-07-14", "2234567895")
,("1234567896", "cust7@hh.com", "E2", "2019-10-16", "18491", "2020-08-04", "2234567896")
,("1234567897", "cust8@hh.com", "E3", "2012-03-17", "17725", "2011-06-20", "2234567897")
,("1234567898", "cust9@hh.com", "E4", "2020-05-18", "12678", "2019-03-14", "2234567898")
,("1234567899", "cust10@hh.com", "E5", "2021-06-19", "14986", "2020-01-19", "2234567899")
,("1234567900", "cust11@hh.com", "E1", "2020-08-20", "19888", "2019-03-14", "2234567900")
,("1234567901", "cust12@hh.com", "E1", "2020-08-21", "19889", "2019-03-14", "2234567893");

SELECT * FROM prospective_residents;

CREATE TABLE maintenance_workers(
wrk_phone VARCHAR(10),
wrk_email VARCHAR(20),
wrk_fname VARCHAR(20),
work_lname VARCHAR(20),
wrk_dob DATE,
wrk_type CHAR(10),
emp_phone CHAR(10),
PRIMARY KEY (wrk_phone),
FOREIGN KEY (emp_phone) REFERENCES employee (emp_phone)
);

INSERT INTO maintenance_workers VALUES('9876543210','wrk1@hh.com','Kevin ','Alen','1986-11-17','A','2234567890')
,('9876543211','wrk2@hh.com','Anne','Christine',	'1990-10-15','B','2234567891')
,('9876543212','wrk3@hh.com','Roby','Slin',			'1982-01-09','C','2234567892')
,('9876543213','wrk4@hh.com','Gordino','Pistachio',	'1980-09-21','A','2234567893')
,('9876543214','wrk5@hh.com','Henry','Louis',		'1988-03-19','B','2234567894')
,('9876543215','wrk6@hh.com','Sara','Mcglen',		'1978-07-14','C','2234567895')
,('9876543216','wrk7@hh.com','Stephne','Borris',	'1975-08-04','A','2234567896')
,('9876543217','wrk8@hh.com','Eric','Cheng',		'1984-06-20','B','2234567897')
,('9876543218','wrk9@hh.com','Alen','Wang',			'1981-03-27','C','2234567898')
,('9876543219','wrk10@hh.com','Taylor','Bush',		'1980-01-17','A','2234567899')
,('9876543221','wrk11@hh.com','David','Johnson',	'1976-07-14','B','2234567900')
,('6734839393','wrk12@hh.com','Tommy','Brussolo',	'1976-07-29','C','2234567890')
,('5643874934','wrk13@hh.com','Julia','Srivastava',	'1988-03-02','A','2234567891');

SELECT * FROM maintenance_workers;

CREATE TABLE residents(
res_phone CHAR(10),
apt_id VARCHAR(10),
res_fname CHAR(10),
res_lname CHAR(10),
res_email VARCHAR(20),
res_dob DATE,
PRIMARY KEY (res_phone, apt_id)
);

INSERT INTO residents VALUES('8765432109','8120','John','Travol','res1@hh.com',	'1977-01-28')
,('8765432108','8121','Jacob','Black','res2@hh.com',		'1980-07-11')
,('8765432107','8122','Trevor','','res3@hh.com',			'1992-11-14')
,('8765432106','8123','Carter','Blue','res4@hh.com',		'1988-12-01')
,('7843884394','8124','Dipti','Mehra','res13@hh.com',		'1981-12-17')
,('8765432104','8125','Michael','Bofield','res7@hh.com',	'1975-01-06')
,('8765432104','8126','Michael','Bofield','res7@hh.com',	'1975-01-06')
,('8765432102','8127','Chris','Jemsworth','res8@hh.com',	'1990-10-21')
,('8765432101','8128','Robert','Howney','res9@hh.com',		'1981-12-16')
,('8765432111','8129','Jimmy','Falcon','res10@hh.com',		'1972-11-08')
,('8765432112','8130','Kevin','Crazy','res11@hh.com',		'1974-12-11')
,('6473843942','8131','Namita','Tandon','res12@hh.com',		'1981-12-18')
,('7843884394','8132','Dipti','Mehra','res13@hh.com',		'1981-12-17');

SELECT * FROM residents;

CREATE TABLE apartment(
apt_id VARCHAR(10),
res_phone CHAR(10),
floor_plan VARCHAR(10),
floor_size VARCHAR(10),
lease_str DATE,
lease_end DATE,
PRIMARY KEY (apt_id),
FOREIGN KEY (res_phone) REFERENCES residents (res_phone)
);

Insert into Apartment values("8120", "8765432109", "E1", "282 Sq.ft", "2011-01-10", "2012-01-10");
Insert into Apartment values("8121", "8765432108", "E2", "300 Sq.ft", "2013-03-11", "2014-03-11");
Insert into Apartment values("8122", "8765432107", "E3", "500 Sq.ft", "2014-04-12", "2015-04-12");
Insert into Apartment values("8123", "8765432106", "E4", "969 Sq.ft", "2015-07-13", "2016-07-13");
Insert into Apartment values("8124", "7843884394", "E5", "1212 Sq.ft", "2017-09-14", "2018-09-14");
Insert into Apartment values("8125", "8765432104", "E1", "282 Sq.ft", "2018-11-15", "2019-11-15" );
Insert into Apartment values("8126", "8765432104", "E2", "300 Sq.ft", "2019-10-16", "2020-10-16" );
Insert into Apartment values("8127", "8765432102", "E3", "500 Sq.ft", "2012-03-17", "2013-03-17" );
Insert into Apartment values("8128", "8765432101", "E4", "969 Sq.ft", "2020-05-18", "2021-05-18" );
Insert into Apartment values("8129", "8765432111", "E5", "1212 Sq.ft", "2021-06-19", "2022-06-19");
Insert into Apartment values("8130", "8765432112", "E1", "282 Sq.ft", "2020-08-20", "2021-08-20" );
Insert into Apartment values("8131", "6473843942", "E4", "969 Sq.ft", "2020-05-19", "2021-05-22" );
Insert into Apartment values("8132", "7843884394", "E5", "1212 Sq.ft", "2017-09-24", "2018-09-27");
Insert into Apartment values("8133", NULL, "E2", "300 Sq.ft", NULL, NULL);
Insert into Apartment values("8134", NULL, "E2", "300 Sq.ft", NULL,NULL);

SELECT * FROM apartment;

CREATE TABLE service_request(
serv_no INT,
apt_id VARCHAR(10),
res_phone CHAR(10),
wrk_phone CHAR(10),
cre_date DATE,
res_date DATE,
PRIMARY KEY (serv_no),
FOREIGN KEY (apt_id) REFERENCES apartment (apt_id),
FOREIGN KEY (res_phone) REFERENCES residents (res_phone),
FOREIGN KEY (wrk_phone) REFERENCES maintenance_workers (wrk_phone)
);
 
 INSERT INTO service_request VALUES('141','8120','8765432109','9876543210','2011-01-11','2011-03-11')
,('142','8121','8765432108','9876543211','2013-03-12','2013-03-17')
,('143','8122','8765432107','9876543212','2014-09-12','2014-09-14')
,('144','8123','8765432106','9876543213','2015-08-13','2015-08-15')
,('145','8124','7843884394','9876543214','2017-09-14','2017-09-17')
,('146','8125','8765432104','9876543215','2018-11-15','2018-11-19')
,('147','8126','8765432104','9876543216','2019-10-16','2019-10-19')
,('148','8127','8765432102','9876543217','2012-03-17','2012-03-20')
,('149','8128','8765432101','9876543218','2020-05-18','2020-05-21')
,('140','8129','8765432111','9876543219','2021-06-19','2021-06-23')
,('150','8130','8765432112','9876543221','2020-08-20','2020-08-24')
,('151','8131','6473843942','5643874934','2020-06-20','2020-06-24')
,('152','8132','7843884394','9876543217','2020-05-22','2020-05-25');

SELECT * FROM service_request;

CREATE TABLE renters_insurance(
ins_no INT,
apt_id VARCHAR(10),
res_phone CHAR(10),
ins_str_dt DATE,
ins_end_dt DATE,
provider_name VARCHAR(10),
PRIMARY KEY (ins_no),
FOREIGN KEY (apt_id) REFERENCES apartment (apt_id),
FOREIGN KEY (res_phone) REFERENCES residents (res_phone)
);

Insert into renters_insurance VALUES("143818","8120","8765432109","2011-01-10","2012-01-10","Ventra" );
Insert into renters_insurance VALUES("143675","8121","8765432108","2013-03-11","2014-03-11","Spectrum" );
Insert into renters_insurance VALUES("143677","8122","8765432107","2013-03-12","2014-03-12","Purifiers" );
Insert into renters_insurance VALUES("143678","8123","8765432106","2011-01-09","2012-01-09","Simmoni" );
Insert into renters_insurance VALUES("143656","8124","7843884394","2011-01-07","2012-01-07","Tmobile" );
Insert into renters_insurance VALUES("143641","8125","8765432104","2011-01-10","2012-01-10","Purifiers" );
Insert into renters_insurance VALUES("151878","8129","8765432111","2021-06-19","2022-06-19","Diodino" );
Insert into renters_insurance VALUES("133922","8130","8765432112","2020-08-20","2021-08-20","AT&T" );

SELECT * FROM renters_insurance;

CREATE TABLE utility(
bill_id INT,
apt_id VARCHAR(10),
bill_amt decimal(10,2),
PRIMARY KEY (bill_id),
FOREIGN KEY (apt_id) REFERENCES apartment (apt_id)
);

Insert into Utility values(12340, "8120", 260);
Insert into Utility values(12341, "8121", 389);
Insert into Utility values(12342, "8122", 367);
Insert into Utility values(12343, "8123", 334);
Insert into Utility values(12344, "8124", 307);
Insert into Utility values(12345, "8125", 354);
Insert into Utility values(12346, "8126", 281);
Insert into Utility values(12347, "8127", 374);
Insert into Utility values(12348, "8128", 324);
Insert into Utility values(12349, "8129", 371);
Insert into Utility values(12350, "8130", 435);
Insert into Utility values(12351, "8131", 394);
Insert into Utility values(12352, "8132", 306);

SELECT * FROM utility;

CREATE TABLE payments(
payment_id INT,
apt_id VARCHAR(10),
res_phone CHAR(10),
bill_id int,
bill_amt decimal(10,2),
rent decimal(10,2),
total_amount decimal (10,2),
PRIMARY KEY (payment_id),
FOREIGN KEY (apt_id) REFERENCES apartment (apt_id),
FOREIGN KEY (res_phone) REFERENCES residents (res_phone),
FOREIGN KEY (bill_id) REFERENCES utility (bill_id)
);

Insert into payments values("123450","8120","8765432109","12340",260,4400,4660);
Insert into payments values("123451","8121","8765432108","12341",389,4400,4789);
Insert into payments values("123452","8122","8765432107","12342",367,4400,4767);
Insert into payments values("123453","8123","8765432106","12343",334,4400,4734);
Insert into payments values("123454","8124","7843884394","12344",307,3300,3607);
Insert into payments values("123455","8125","8765432104","12345",354,3300,3654);
Insert into payments values("123456","8126","8765432104","12346",281,3300,3581);
Insert into payments values("123457","8127","8765432102","12347",374,3300,3674);
Insert into payments values("123458","8128","8765432101","12348",324,3300,3624);
Insert into payments values("123459","8129","8765432111","12349",371,3300,3671);
Insert into payments values("123460","8130","8765432112","12350",435,4400,4835);
Insert into payments values("123461","8131","6473843942","12351",394,3300,3694);
Insert into payments values("123462","8132","7843884394","12352",306,3300,3606);

SELECT * FROM payments;

CREATE TABLE electricity(
elec_bill_id INT,
bill_id INT,
elec_plan VARCHAR(10),
chrgs_per_unit DECIMAL(10,2),
units INT,
elec_amount DECIMAL(10,2),
PRIMARY KEY (elec_bill_id),
FOREIGN KEY (bill_id) REFERENCES utility (bill_id)
);

Insert into electricity values( 101,12340, "Gold", 10, 20, 200 );
Insert into electricity values( 102,12341, "Silver", 12, 22, 264 );
Insert into electricity values( 103,12342, "Plantinum", 8, 34, 272 );
Insert into electricity values( 104,12343, "Silver", 12, 22, 264 );
Insert into electricity values( 105,12344, "Gold", 10, 20, 200 );
Insert into electricity values( 106,12345, "Silver", 12, 22, 264 );
Insert into electricity values( 107,12346, "Gold", 10, 20, 200 );
Insert into electricity values( 108,12347, "Plantinum", 8, 34, 272 );
Insert into electricity values( 109,12348, "Gold", 10, 20, 200 );
Insert into electricity values( 110,12349, "Silver", 12, 22, 264 );
Insert into electricity values( 111,12350, "Plantinum", 8, 34, 272 );
Insert into electricity values( 112,12351, "Plantinum", 8, 34, 272 );
Insert into electricity values( 113,12352, "Gold", 10, 20, 200 );

SELECT * FROM electricity;

CREATE TABLE water(
water_bill_id INT,
bill_id INT,
water_usage VARCHAR(20),
water_amount DECIMAL(10,2),
PRIMARY KEY (water_bill_id),
FOREIGN KEY (bill_id) REFERENCES utility (bill_id)
);

Insert into water values(131,12340,15,20);
Insert into water values(132,12341,30,70);
Insert into water values(133,12342,25,50);
Insert into water values(134,12343,18,25);
Insert into water values(135,12344,19,28);
Insert into water values(136,12345,20,45);
Insert into water values(137,12346,23,29);
Insert into water values(138,12347,25,50);
Insert into water values(139,12348,30,70);
Insert into water values(140,12349,27,55);
Insert into water values(141,12350,32,75);
Insert into water values(142,12351,33,78);
Insert into water values(143,12352,12,18);

SELECT * FROM water;

CREATE TABLE wifi(
wifi_id INT,
bill_id INT,
wifi_plan VARCHAR(20),
wifi_amount DECIMAL(10,2),
PRIMARY KEY (wifi_id),
FOREIGN KEY (bill_id) REFERENCES utility (bill_id)
);

Insert into wifi values(166,12340,"A",40);
Insert into wifi values(167,12341,"A",55);
Insert into wifi values(168,12342,"A",45);
Insert into wifi values(169,12343,"C",45);
Insert into wifi values(170,12344,"B",79);
Insert into wifi values(171,12345,"B",45);
Insert into wifi values(172,12346,"C",52);
Insert into wifi values(173,12347,"C",52);
Insert into wifi values(174,12348,"A",54);
Insert into wifi values(175,12349,"C",52);
Insert into wifi values(176,12350,"A",88);
Insert into wifi values(177,12351,"B",44);
Insert into wifi values(178,12352,"A",88);

SELECT * FROM wifi;

/*
Left outer join
Purpose: How many maintenance workers are working under an employee with first Name 'Henry'
*/

SELECT  e.emp_fname,
		count(w.wrk_phone) AS num_workers
FROM employee e
LEFT OUTER JOIN maintenance_workers w
ON e.emp_phone = w.emp_phone
WHERE e.emp_fname = 'Justin'
GROUP BY e.emp_fname;

/*
Inner JOIN
Purpose: How many service requests were created for apartment 8122
*/

SELECT  a.apt_id,
		a.floor_plan,
        count(distinct s.serv_no) AS service_request_count
FROM apartment a
INNER JOIN service_request s
ON a.apt_id = s.apt_id
WHERE a.apt_id = '8122'
GROUP BY a.apt_id,
		 a.floor_plan;

/* Right outer Join
Purpose: Get the details of the residents for whom the renter's insurance is expiring in June 2022?
*/

SELECT  r.res_phone,
		r.res_fname,
        r.apt_id,
        i.ins_no,
        i.ins_str_dt,
        i.ins_end_dt
FROM renters_insurance i
RIGHT OUTER JOIN residents r
ON i.res_phone = r.res_phone
WHERE i.ins_end_dt BETWEEN '2022-06-01' AND '2022-06-30';

/*
Intersect
Purpose: Fetch the total amount for apartments with floor size more than 500 sq ft
*/

SELECT  count(distinct apt_id) AS number_apartments
FROM apartment
WHERE apt_id IN (SELECT apt_id FROM apartment WHERE floor_size > 500);

/*
Full Join
Purpose: Get the list of apartments and their respective tenants
*/

SELECT  a.apt_id,
		a.lease_str,
        a.lease_end,
        a.res_phone,
        concat(r.res_fname, " ", r.res_lname) AS Name,
        r.res_email
FROM apartment a
LEFT JOIN residents r
ON a.res_phone = r.res_phone
UNION
SELECT  a.apt_id,
		a.lease_str,
        a.lease_end,
        a.res_phone,
        concat(r.res_fname, " ", r.res_lname) AS Name,
        r.res_email
FROM apartment a
RIGHT JOIN residents r
ON a.res_phone = r.res_phone;

/*
Union
Purpose: Get the electricity, water & wifi bill amount for bill 12340
*/

SELECT  e.elec_bill_id AS bill_id,
        e.elec_amount AS amount,
        'Electricity' AS type
FROM electricity e
WHERE e.bill_id = 12340
UNION
SELECT  w.water_bill_id AS bill_id,
		w.water_amount AS amount,
        'Water' AS type
FROM water w
WHERE w.bill_id = 12340
UNION
SELECT  wi.wifi_id AS bill_id,
		wi.wifi_amount AS amount,
        'WiFi' AS type
FROM wifi wi
WHERE wi.bill_id = 12340;

/*
Except
Purpose: Get the list of apartments that have no service requests
*/

SELECT  apt_id,
		COALESCE(res_phone, 'No resident') AS res_phone
FROM apartment
WHERE apt_id NOT IN (SELECT distinct apt_id FROM service_request);





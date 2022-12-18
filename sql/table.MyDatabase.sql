-- 
-- Editor SQL for DB table MyDatabase
-- Created by http://editor.datatables.net/generator
-- 

CREATE TABLE IF NOT EXISTS `MyDatabase` (
	`id` int(10) NOT NULL auto_increment,
	`inbound_date` date,
	`inbound_time` time,
	`license_plate` varchar(255),
	`truck_number` numeric(9,2),
	`company_name` varchar(255),
	`driver_name` varchar(255),
	`destination` varchar(255),
	`comments` varchar(255),
	`outbound_date` date,
	`outbound_time` time,
	PRIMARY KEY( `id` )
);
-- IoT-Based Smart Home Automation System --

create database Smart_Home_Automation_System;

use Smart_Home_Automation_System;


create table Users (
user_id int primary key auto_increment,
name varchar(40),
email varchar(40) unique,
password varchar(40),
role enum('Admin', 'User'),
created_at timestamp default current_timestamp
);


insert into Users (name, email, password, role) values
('Arun Kumar', 'arun.kumar@example.com', '123456', 'Admin'),
('Vigneshwaran', 'vignesh@example.com', '234567', 'User'),
('Praveen Raj', 'praveen.raj@example.com', '345678', 'User'),
('Senthil Nathan', 'senthil@example.com', '456789', 'User'),
('Karthikeyan', 'karthik@example.com', '567890', 'Admin'),
('Dinesh Kumar', 'dinesh@example.com', '678901', 'User'),
('Saravanan', 'saravanan@example.com', '789012', 'User'),
('Gopinath', 'gopinath@example.com', '890123', 'User'),
('Balasubramaniam', 'bala@example.com', '901234', 'Admin'),
('Manikandan', 'mani@example.com', '123987', 'User'),
('Ravichandran', 'ravi@example.com', '234876', 'User'),
('Ramesh Kumar', 'ramesh@example.com', '345765', 'Admin'),
('Sivakumar', 'siva@example.com', '456654', 'User'),
('Muthukumar', 'muthu@example.com', '567543', 'User'),
('Vasanth Kumar', 'vasanth@example.com', '678432', 'User'),
('Ramachandran', 'ram@example.com', '789321', 'Admin'),
('Jeganathan', 'jegan@example.com', '890210', 'User'),
('Thirumalai', 'thiru@example.com', '901109', 'User'),
('Muruganandam', 'murugan@example.com', '112233', 'Admin'),
('Sundararajan', 'sundar@example.com', '223344', 'User'),
('Sakthivel', 'sakthi@example.com', '334455', 'User'),
('Rajendran', 'raj@example.com', '445566', 'User'),
('Kumaravel', 'kumar@example.com', '556677', 'Admin'),
('Vetri Selvan', 'vetri@example.com', '667788', 'User'),
('Elangovan', 'elangovan@example.com', '778899', 'User'),
('Parthiban', 'parthi@example.com', '889900', 'User'),
('Udayakumar', 'udaya@example.com', '990011', 'Admin'),
('Sampath Kumar', 'sampath@example.com', '101112', 'User'),
('Ilango', 'ilango@example.com', '121314', 'User'),
('Velmurugan', 'vel@example.com', '131415', 'User'),
('Jeyaprakash', 'jeyaprakash@example.com', '141516', 'User'),
('Gowtham', 'gowtham@example.com', '151617', 'Admin'),
('Aravind', 'aravind@example.com', '161718', 'User'),
('Madhavan', 'madhavan@example.com', '171819', 'User'),
('Natarajan', 'natarajan@example.com', '181920', 'User');


select * from Users;


create table Rooms (
room_id int primary key auto_increment,
room_name varchar(40),
floor int
);


insert into Rooms (room_name, floor) values
('Living Room', 1),
('Master Bedroom', 1),
('Guest Bedroom', 1),
('Kitchen', 1),
('Dining Room', 1),
('Bathroom 1', 1),
('Bathroom 2', 1),
('Balcony', 1),
('Home Office', 2),
('Study Room', 2),
('Kids Bedroom', 2),
('Library', 2),
('Prayer Room', 2),
('Gym Room', 2),
('Laundry Room', 2),
('Entertainment Room', 2),
('Storage Room', 2),
('Garage', 0),
('Basement', 0),
('Attic', 3),
('Terrace', 3),
('Hallway', 1),
('Corridor', 2),
('Guest Room 2', 2),
('Game Room', 3),
('Meditation Room', 3),
('Security Room', 0),
('Server Room', 0),
('Pantry', 1),
('Wine Cellar', 0),
('Conference Room', 2),
('Music Room', 2),
('Art Studio', 3),
('Garden Room', 1),
('Theater Room', 3);


select * from Rooms;


create table Devices (
device_id int primary key auto_increment,
device_name varchar(40),
device_type enum('Light', 'Thermostat', 'Camera', 'Door Lock', 'Fan'),
status enum('On', 'Off'),
room_id int,
user_id int,
foreign key (room_id) references Rooms(room_id),
foreign key (user_id) references Users(user_id)
);


insert into Devices (device_name, device_type, status, room_id, user_id) values 
('Living Room Light', 'Light', 'On', 1, 1),
('Master Bedroom Light', 'Light', 'Off', 2, 2),
('Kitchen Light', 'Light', 'On', 4, 1),
('Dining Room Light', 'Light', 'Off', 5, 3),
('Bathroom Heater', 'Thermostat', 'On', 6, 4),
('Guest Room Light', 'Light', 'On', 3, 5),
('Balcony Fan', 'Fan', 'Off', 8, 6),
('Home Office Light', 'Light', 'On', 9, 2),
('Study Room Light', 'Light', 'Off', 10, 3),
('Kids Room Night Lamp', 'Light', 'On', 11, 4),
('Library Light', 'Light', 'Off', 12, 5),
('Prayer Room Light', 'Light', 'On', 13, 6),
('Gym Room AC', 'Thermostat', 'On', 14, 1),
('Laundry Room Light', 'Light', 'Off', 15, 2),
('Entertainment Room Light', 'Light', 'On', 16, 3),
('Storage Room Light', 'Light', 'Off', 17, 4),
('Garage Door Lock', 'Door Lock', 'On', 18, 5),
('Basement Security Camera', 'Camera', 'On', 19, 6),
('Attic Light', 'Light', 'Off', 20, 1),
('Terrace Fan', 'Fan', 'On', 21, 2),
('Hallway Light', 'Light', 'Off', 22, 3),
('Corridor Light', 'Light', 'On', 23, 4),
('Guest Room 2 Light', 'Light', 'Off', 24, 5),
('Game Room Light', 'Light', 'On', 25, 6),
('Meditation Room Light', 'Light', 'Off', 26, 1),
('Security Room Camera', 'Camera', 'On', 27, 2),
('Server Room Cooling System', 'Thermostat', 'On', 28, 3),
('Pantry Light', 'Light', 'Off', 29, 4),
('Wine Cellar Door Lock', 'Door Lock', 'On', 30, 5),
('Conference Room Light', 'Light', 'Off', 31, 6),
('Music Room Speaker System', 'Light', 'On', 32, 1),
('Art Studio Light', 'Light', 'Off', 33, 2),
('Garden Room Fan', 'Fan', 'On', 34, 3),
('Theater Room Projector', 'Light', 'Off', 35, 4);


select * from Devices;


create table Device_Status (
status_id int primary key auto_increment,
device_id int,
status enum('On','Off'),
updated_at timestamp default current_timestamp,
foreign key (device_id) references Devices(device_id) 
);


insert into Device_Status (device_id, status) values
(1, 'On'),
(2, 'Off'),
(3, 'On'), 
(4, 'Off'), 
(5, 'On'), 
(6, 'On'), 
(7, 'Off'), 
(8, 'On'), 
(9, 'Off'), 
(10, 'On'),
(11, 'Off'), 
(12, 'On'), 
(13, 'On'), 
(14, 'Off'), 
(15, 'On'), 
(16, 'Off'), 
(17, 'On'), 
(18, 'On'), 
(19, 'Off'), 
(20, 'On'),
(21, 'Off'), 
(22, 'On'), 
(23, 'Off'), 
(24, 'On'), 
(25, 'On'),
(26, 'Off'), 
(27, 'On'), 
(28, 'On'), 
(29, 'Off'), 
(30, 'On'),
(31, 'Off'),
(32, 'On'), 
(33, 'Off'),
(34, 'On');


select * from  Device_Status;


create table Energy_Consumption (
energy_id int primary key auto_increment,
device_id int,
energy_used decimal(5,2), -- kWh
recorded_at timestamp default current_timestamp,
foreign key (device_id) references Devices (device_id) 
);


insert into  Energy_Consumption (device_id, energy_used) values
(1, 2.5),
(2, 1.8),
(3, 3.2),
(4, 2.1),
(5, 4.5),
(6, 1.2),
(7, 0.8),
(8, 2.9),
(9, 3.6),
(10, 1.5),
(11, 0.9),
(12, 4.2),
(13, 5.0),
(14, 1.7),
(15, 3.1),
(16, 2.4),
(17, 6.3),
(18, 4.8),
(19, 2.6),
(20, 3.9),
(21, 1.1),
(22, 2.7),
(23, 0.5),
(24, 3.0),
(25, 1.6),
(26, 4.1),
(27, 3.8),
(28, 5.2),
(29, 0.7),
(30, 4.4),
(31, 2.3),
(32, 3.5),
(33, 1.4),
(34, 2.2);


select * from Energy_Consumption;


create table Security_Logs (
log_id int primary key auto_increment,
device_id int,
event varchar(40),
timestamp timestamp default current_timestamp,
foreign key (device_id) references Devices(device_id)
);


insert into  Security_Logs (device_id, event) values
(1, 'Door Opened'), 
(2, 'Motion Detected'), 
(3, 'Temperature High'), 
(4, 'Camera Offline'), 
(5, 'Door Locked'), 
(6, 'Fan Turned On'),
(7, 'Light Off'), 
(8, 'Alarm Triggered'), 
(9, 'Camera Recording'),
(10, 'Smoke Detected'), 
(11, 'Gas Leak'), 
(12, 'Thermostat Adjusted'),
(13, 'Window Opened'), 
(14, 'Unauthorized Access'), 
(15, 'Power Failure'),
(16, 'Battery Low'), 
(17, 'System Restarted'), 
(18, 'Sensor Triggered'),
(19, 'Doorbell Ring'), 
(20, 'Siren Activated'), 
(21, 'Temperature Low'),
(22, 'Light On'), 
(23, 'Water Leak Detected'), 
(24, 'Security Breach'),
(25, 'Night Mode Activated'), 
(26, 'Day Mode Activated'), 
(27, 'Motion Cleared'),
(28, 'Glass Break Detected'), 
(29, 'Fire Alarm'), 
(30, 'Garage Opened'),
(31, 'Garage Closed'), 
(32, 'Manual Override'), 
(33, 'Backup Power On'),
(34, 'Backup Power Off');


select * from Security_Logs;


create table Schedules (
schedule_id int primary key auto_increment,
device_id int,
start_time time,
end_time time,
repeat_days varchar(40), 
foreign key (device_id) references Devices(device_id)
);


insert into Schedules (device_id, start_time, end_time, repeat_days) values
(1, '18:00:00', '22:00:00', 'Monday,Wednesday,Friday'),
(2, '06:00:00', '07:30:00', 'Daily'),
(3, '22:00:00', '06:00:00', 'Daily'),
(4, '19:00:00', '22:30:00', 'Weekends'),
(5, '05:30:00', '07:00:00', 'Monday-Friday'),
(6, '07:00:00', '09:00:00', 'Saturday,Sunday'),
(7, '12:00:00', '14:00:00', 'Daily'),
(8, '08:00:00', '10:00:00', 'Monday-Friday'),
(9, '20:00:00', '22:30:00', 'Weekends'),
(10, '23:00:00', '05:30:00', 'Daily'),
(11, '18:30:00', '21:00:00', 'Monday,Wednesday'),
(12, '07:45:00', '08:30:00', 'Daily'),
(13, '06:00:00', '07:00:00', 'Monday-Friday'),
(14, '20:15:00', '22:45:00', 'Weekends'),
(15, '17:00:00', '20:00:00', 'Daily'),
(16, '22:00:00', '06:30:00', 'Monday-Friday'),
(17, '05:00:00', '06:30:00', 'Saturday,Sunday'),
(18, '08:00:00', '09:00:00', 'Daily'),
(19, '18:45:00', '20:15:00', 'Monday,Wednesday,Friday'),
(20, '06:30:00', '08:00:00', 'Daily'),
(21, '09:00:00', '11:00:00', 'Weekends'),
(22, '21:00:00', '23:00:00', 'Monday-Friday'),
(23, '14:00:00', '16:00:00', 'Daily'),
(24, '12:30:00', '14:00:00', 'Saturday,Sunday'),
(25, '19:00:00', '21:30:00', 'Weekends'),
(26, '20:00:00', '22:00:00', 'Monday-Friday'),
(27, '06:00:00', '07:00:00', 'Daily'),
(28, '17:30:00', '19:00:00', 'Monday,Wednesday,Friday'),
(29, '07:30:00', '09:30:00', 'Saturday,Sunday'),
(30, '15:00:00', '17:00:00', 'Daily'),
(31, '18:15:00', '19:45:00', 'Monday-Friday'),
(32, '08:45:00', '10:15:00', 'Weekends'),
(33, '19:30:00', '21:00:00', 'Daily'),
(34, '22:30:00', '00:00:00', 'Monday,Wednesday,Friday');


select * from Schedules;


create table Notifications (
notification_id int primary key auto_increment,
user_id int,
message text,
timestamp timestamp default current_timestamp,
foreign key (user_id) references Users(user_id)
);


insert into Notifications (user_id, message) values
(1, 'Your Living Room Light was turned off automatically'),
(2, 'Bedroom AC turned on at scheduled time'),
(3, 'Motion detected in the backyard at 2:15 AM'),
(4, 'Front door unlocked by user at 7:45 AM'),
(5, 'Garage door opened manually'),
(6, 'Security Camera recorded movement in the basement'),
(7, 'Kitchen Light turned off after inactivity'),
(8, 'Thermostat adjusted to 22°C automatically'),
(9, 'Smart Fan turned off due to low temperature'),
(10, 'Wine Cellar Door Lock secured at 11:00 PM'),
(11, 'Entertainment Room Projector turned on'),
(12, 'Music System volume reduced at 10:30 PM'),
(13, 'Security Alert: Unauthorized access attempt detected'),
(14, 'Garden Room Fan turned off due to scheduled time'),
(15, 'Guest Bedroom Light switched on at sunset'),
(16, 'Balcony Light turned off automatically'),
(17, 'Study Room AC turned on at 5:00 PM'),
(18, 'Server Room Cooling System activated'),
(19, 'Theater Room Projector turned off at midnight'),
(20, 'Garage Door Lock engaged at 10:00 PM'),
(21, 'Prayer Room Light switched off at 9:00 PM'),
(22, 'Corridor Light turned off automatically'),
(23, 'Pantry Light turned on at scheduled time'),
(24, 'Meditation Room Light dimmed automatically'),
(25, 'Hallway Light turned off after 10 minutes of inactivity'),
(26, 'Security System armed at 11:30 PM'),
(27, 'Music Room Speaker turned off at 8:00 PM'),
(28, 'Motion detected near the front door at 3:20 AM'),
(29, 'Basement Camera detected unusual movement'),
(30, 'Smart Lock activated at 7:00 AM'),
(31, 'Kids Room Night Lamp turned on at bedtime'),
(32, 'Laundry Room Light turned off automatically'),
(33, 'Terrace Fan switched off due to low wind speed'),
(34, 'Security Alert: Motion detected in driveway at 2:45 AM');


select * from Notifications;


-- 1. All Devices in a Specific Room
select device_name, device_type, status 
from Devices 
where room_id = (select room_id 
from Rooms
where room_name = 'Home Office');


-- 2. Devices That Are Currently "On"
select device_name, room_id 
from Devices 
where status = 'On';


-- 3. Using HAVING Clause
select Rooms.room_name, sum(Energy_Consumption.energy_used) as total_energy
from Devices
join Rooms on Devices.room_id = Rooms.room_id
join Energy_Consumption on Devices.device_id = Energy_Consumption.device_id
group by Rooms.room_name
having total_energy > 5;


-- 4. Energy Consumption Report (Last 7 Days)
select d.device_name, sum(e.energy_used) as total_energy
from Energy_Consumption e
join Devices d on e.device_id = d.device_id
where e.recorded_at >= NOW() - interval 7 day
group by d.device_name;


-- 5 Using GROUP BY Clause
select Devices.device_type, sum(Energy_Consumption.energy_used) as total_energy
from Devices
join Energy_Consumption on Devices.device_id = Energy_Consumption.device_id
group by Devices.device_type;


-- 6. Using JOIN Clause
select Devices.device_name, Rooms.room_name, Users.name
from Devices
join Rooms on Devices.room_id = Rooms.room_id
join Users on Devices.user_id = Users.user_id;


-- 7. Using Subquery with Aggregate Function
select Users.name
from Users
where user_id in (
    select Devices.user_id
    from Devices
    join Energy_Consumption on Devices.device_id = Energy_Consumption.device_id
    group by Devices.user_id
    having sum(Energy_Consumption.energy_used) > 10
);

-- 8. Using Stored Procedure
delimiter //

create procedure GetDevicesByRoom(in room_name varchar(40))
begin
    select Devices.device_name, Devices.device_type
    from Devices
    join Rooms on Devices.room_id = Rooms.room_id
    where Rooms.room_name = room_name;
end //

delimiter ;

-- Call the procedure

call GetDevicesByRoom('Living Room');


-- 9. Using View
create view DeviceEnergyConsumption as
select Devices.device_type, sum(Energy_Consumption.energy_used) as total_energy
from Devices
join Energy_Consumption on Devices.device_id = Energy_Consumption.device_id
group by  Devices.device_type;

-- Using the view
select * from DeviceEnergyConsumption;


-- 10. Using DISTINCT Clause
select distinct device_type
from Devices;


-- 11. Using LIMIT Clause
select * from Security_Logs
order by timestamp desc
limit 5;



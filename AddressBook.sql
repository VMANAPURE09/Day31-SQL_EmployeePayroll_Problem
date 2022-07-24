--Welcome to Address Book System Problem

--Creating the Address Book Service data base
CREATE DATABASE Address_Book_Service

use Address_Book_Service

--Create AddressBook Table
CREATE TABLE AddressBook
(
FirstName Varchar(20),
LastName Varchar(15),
Address Varchar(50),
City Varchar(20),
State Varchar(20),
ZIP int,
PhoneNumber Varchar(15),
Email Varchar(20)
)

--To View the AddressBook Table
SELECT * FROM AddressBook

--UC3--
--Insert COntacts into AddressBook
INSERT INTO AddressBook Values 
('Vaibhav','Manapure','Wardha','Nagpur', 'Maharashtra','442305','9764510067','manapure.vaibhav542@gmail.com'),
('sanjay','walke','Gondia','Nagpur', 'Maharashtra','581336','8945231256','sanjaywakle@gmail.com'),
('Vasanth','Pai','Sirsi','Sirsi', 'Karnataka','581336','9482615957','vasanthpai@gmail.com'),
('Git','Pai','Sirsi','amravati', 'Maharashtra','581336','6284519537','gitpai@gmail.com');

--UC4-Edit the existing data in the table
UPDATE AddressBook
set Address = 'nagpur', City = 'nagpur' where FirstName = 'Abhijeet' ;

--UC5-Delete person using persons name--
DELETE AddressBook WHERE FirstName = 'Vasanth'

--UC6-Retrieve the persons city / State by using persons name
Select City, State from AddressBook where FirstName = 'vaibhav'

--UC7-Size of Addressbook by City / State
select COUNT(City) FROM AddressBook
select COUNT(State) FROM AddressBook

INSERT INTO AddressBook Values
('Sita','Sai','Shegaon','jalgaon', 'Maharshtra','443207','9884519537','sitasai@gmail.com'),
('Navnath','korde','kolhapur','Kolhapur', 'Maharashtra','581441','6824531296','navnath@gmail.com'),
('Abhijeet','Kamath','Sagar','Sagar', 'Karnataka','581477','9173842682','abhijeet@gmail.com');

--UC8-Sort Persons Name Alphabetically for a given city
SELECT * FROM AddressBook WHERE City = 'nagpur' ORDER by FirstName ASC

--UC9-Identify the address book by Name and Type
ALTER TABLE AddressBook ADD AddressBookName varchar (20),AddressBookType varchar (20);

--Update AddressBook Contact
update AddressBook SET AddressBookName = 'Sita', AddressBookType = 'Family' where FirstName = 'Sita'
update AddressBook SET AddressBookName = 'Prateeksha', AddressBookType = 'Friend' where FirstName = 'Prateeksha'
update AddressBook SET AddressBookName = 'Navanth', AddressBookType = 'Family' where FirstName = 'Navanth'
update AddressBook SET AddressBookName = 'Geetha', AddressBookType = 'Family' where FirstName = 'Geetha'
update AddressBook SET AddressBookName = 'Abhijeet', AddressBookType = 'Friend' where FirstName = 'Abhijeet'

--Get number of contact persons i.e count by type
SELECT AddressBookType,  COUNT(AddressBookType) from AddressBook group by AddressBookType

--Adding AddressBookID for AddressBook Table to Assign AddressBooktype
AlTER table AddressBook drop column AddressBookID

--Adding COnstraints to AddressBook Table
Alter table AddressBook add AddressBookID int foreign key references AddressBookCategory

--Creating the AddressBookCategory table to differentiate Family, Friend and Profession
CREATE TABLE AddressBookCategory(
AddressBookID int primary key, 
AddressBookType varchar(20)
)

SELECt * FROM AddressBookCategory
SELECT * FROM AddressBook
--Assigning Id to Family, Friend and Profession
Insert into AddressBookCategory values (1,'Family'),(2,'Friend'),(3,'Profession')

--UC11-Add person to both Friend and Family
update AddressBook SET AddressBookID =1  where FirstName = 'Sita'
update AddressBook SET AddressBookID =2  where FirstName = 'Prateeksha'
update AddressBook SET AddressBookID =1  where FirstName = 'Navnath'
update AddressBook SET AddressBookID = 1 where FirstName = 'Geetha'
update AddressBook SET AddressBookID = 2 where FirstName = 'Abhijeet'

--UC12--
--E-R Diagram
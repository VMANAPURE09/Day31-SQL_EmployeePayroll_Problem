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
set Address = 'nagpur', City = 'nagpur' where FirstName = 'Prateeksha' ;

--UC5-Delete person using persons name--
DELETE AddressBook WHERE FirstName = 'Vasanth'

--UC6-Retrieve the persons city / State by using persons name
Select City, State from AddressBook where FirstName = 'vaibhav'

--UC7-Size of Addressbook by City / State
select COUNT(City) FROM AddressBook
select COUNT(State) FROM AddressBook

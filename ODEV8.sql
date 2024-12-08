-- ÖDEV 8 

-- 1-test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE Employee (
	id SERIAL PRIMARY KEY ,
	name VARCHAR(50) NOT NULL ,
	birthday DATE ,
	email VARCHAR(100)
);

-- 2-Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim
insert into Employee (name, birthday, email) values ('Jody', null, 'jkloisner0@ft.com');
insert into Employee (name, birthday, email) values ('Halette', '1914-01-14', 'hcoutts1@wikipedia.org');
insert into Employee (name, birthday, email) values ('Demetrius', '1985-01-08', 'dperillio2@chicagotribune.com');
insert into Employee (name, birthday, email) values ('Berte', '1997-05-13', 'bkornel3@tuttocitta.it');
...
insert into Employee (name, birthday, email) values ('Roberto', null, 'rdredge1b@vkontakte.ru');
insert into Employee (name, birthday, email) values ('Amata', '1912-08-21', null);
insert into Employee (name, birthday, email) values ('Valerye', null, 'vorhtmann1d@ucsd.edu');

-- 3-Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE Employee
SET name='update 1',
	birthday='1598-4-15',
	email='update1@gmail.com'
WHERE id = 10
RETURNING * ;

UPDATE Employee
SET name='update 2',
	birthday='1689-6-6',
	email='update2@gmail.com'
WHERE name LIKE 'B%'
RETURNING *;

UPDATE Employee
SET name='update3',
	birthday='1988-8-27',
	email='update3@gmail.com'
WHERE name LIKE 'A%' AND id >40
RETURNING *;

UPDATE Employee
SET name='update4',
	birthday='2004-7-3',
	email='update4@gmail.com'
WHERE id < 5
RETURNING *;

UPDATE Employee
SET name='update5',
	birthday='1647-8-17',
	email='update5@gmail.com'
WHERE email IS NULL 
RETURNING *;

-- 4-Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım
DELETE FROM Employee
WHERE id <10
RETURNING *;

DELETE FROM Employee
WHERE birthday IS NULL 
RETURNING *;

DELETE FROM Employee
WHERE name LIKE 'P%'
RETURNING *;

DELETE FROM Employee
WHERE  name  LIKE '%y' OR id=43
RETURNING *;

DELETE FROM Employee
WHERE name LIKE '___l'
RETURNING *;

Insert INTO Student_Faculty
Values
('1001',	'abc123',	'Abdelrauof Nasser',	'Male','1999-05-15',	 'Abdelrauof1001@example.com', 'Computer Science'),

('1002',	'def456',	'Mohamed Ragab',	'Male','2001-02-20',	 'Mohamed1002@example.com', 'Business Administration'),

('1003',	'ghi789',	'Sarah Ahmed',	    'Female','2000-09-01',	 'Sarah1003@example.com', 'Electrical Engineering'),

('1004',	'jkl012',	'Youssef Emad',	'Male','1998-12-31',	 'Youssef1004@example.com', 'Psychology'),

('1005',	'olp235',	'Mia Harper',	'Female',	'2002-10-02',	'Mia1005@example.com',	'Civil Engineering'),

('1006',	'kjh542',	'Ousmane Dembele',	'Male',	'1995-10-06',	'Ousmane1006@example.com',	'Dentistry');
Insert INTO Genre
Values
('Fantasy'),
('Romance'),
('Mystery'),
('Historical Fiction');
Insert INTO Book
Values
('9780747532743', 	'Harry Potter and the Philosophers Stone',	'Bloomsbury',	'1st','Fantasy'),

('9780316067928', 	'Eclipse',	'Little, Brown and Company',	'3rd','Romance'),

('9780385504201',    	'The Da Vinci Code',	'Doubleday',	'2nd','Mystery'),

('9781594480003',    	'The Kite Runner',	'Riverhead Books',	'1st','Historical Fiction');
INSERT INTO Author (B_ISBN, Author_Name)
Values
('9780747532743'	,'J.K. Rowling'),

('9780316067928','Stephenie Meyer'),

('9780385504201' ,	'Dan Brown'),

('9781594480003'   ,	'Khaled Hosseini');
Insert Into Keywords
Values
('Fantasy'	,'Magic'),
('Fantasy',	'Mythical creatures'),
('Fantasy'	,'Supernatural powers'),
('Romance'	,'Love stories'),
('Romance'	,'Relationships'),
('Romance'	,'Emotional intensity'),
('Mystery'	,'Suspense'),
('Mystery'	,'Plot twists'),
('Mystery'	,'Thrilling action'),
('Historical Fiction',	'Historical events'),
('Historical Fiction',	'Real people or places'),
('Historical Fiction',	'Cultural or social contexts');
Insert into Book_copy
Values
('1'	,'Yes',	'No',	'9780747532743'),
('2'	,'No',	'Yes',	'9780316067928'),
('3','Yes'	,'Yes',	'9780385504201'),
('4','No',	'No',	'9781594480003');
Insert Into Borrow
Values
('1001',	'2022-06-10',	'2022-07-10'	,'2022-07-15'	,'1'	,'9780747532743' ,	'1'),
('1002'	,'2021-12-15',	'2022-01-15',	'2022-01-20',	'2'	,'9780316067928','2'),
('1003'	,'2023-02-02',	'2023-03-02'	,'2023-03-07',	'3',	'9780385504201'  , '3'),
('1004'	,'2022-09-20'	,'2022-10-20',	'2022-10-25',	'4'	,'9781594480003'  , '4');
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Adding 2 records to be total 6 records or more per each table as required in the task
Insert into Book
Values
('9780525533184',	'Where the Crawdads Sing',	'G.P. Putnams Sons',	'1st','Fiction'),

('9780062982455','The Hill We Climb: An Inaugural Poem for the Country'	,'Viking Books'	,'1st','Poetry');
Insert INTO Genre (Name)
Values
('Fiction'),
('Poetry');
INSERT INTO Author (B_ISBN, Author_Name)
Values
('9780525533184'	,'Delia Owens'),

('9780062982455','Amanda Gorman');

Insert into Keywords
Values
('Fiction',	'Nature'),
('Poetry',	'Politics');
Insert Into Book_copy
Values
('5','No'	,'Yes'	,'9780525533184'),
('6',	'Yes'	,'No'	,'9780062982455');
Insert Into Borrow
Values
('1005','2022-04-06',	'2022-05-12',	'2022-05-17',	'5',	'9780525533184',	'5'	),
('1006',	'2021-11-17'	,'2022-01-15'	,'2022-01-20'	,'6'	,'9780062982455',	'6');
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Adding records to test the queries properly
Insert into Book
Values
('9972254484484',	'Leaves Of Grass',	'Heisenberg',	'3rd','Mystery');

Insert into Author
Values
('9972254484484',	'J.K. Rowling'),
('9780316067928',	'Jissy Pinkman');

Insert into Book_copy
Values
('8'	,'Yes',	'No',	'9780316067928'),
('3'	,'No',	'No',	'9780747532743 '),
('1','No',	'No',	'9972254484484');

Insert Into Borrow
Values
('1001',	'2022-10-11'	,'2022-12-11',	'2022-12-16',	'7'	,'9972254484484'	,'1'),
('1003'	,'2022-02-01'	,'2022-03-05',	'2022-03-09',	'8'	,'9780316067928',	'8'),
('1006',	'2022-09-20'	,'2022-10-20',	'2022-10-25'	,'9'	,'9780747532743' ,	'3');
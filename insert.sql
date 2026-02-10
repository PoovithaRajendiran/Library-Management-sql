USE library_db;

INSERT INTO Publisher VALUES
(1,'ABC Publications','Chennai'),
(2,'Sun Publisher','Madurai');

INSERT INTO Books VALUES
(101,'DBMS','Karthik',450,'Yes',1),
(102,'Java','James',550,'Yes',2),
(103,'Python','Ravi',400,'No',1);

INSERT INTO Member VALUES
(1,'Arun','Chennai','Student','2026-01-01','2027-01-01'),
(2,'Divya','Madurai','Student','2026-01-10','2027-01-10');

INSERT INTO Borrow(Book_ID,Member_ID,Issue_date,Due_date,Return_date) VALUES
(101,1,'2026-02-01','2026-02-10','2026-02-09'),
(103,2,'2026-02-05','2026-02-15',NULL);

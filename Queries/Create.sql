SET SCHEMA FN45297;


CREATE TABLE CandidateStudent (
Id INT NOT NULL,
FirstName CHAR(30),
LastName CHAR(30) 
);

CREATE TABLE Faculty (
Id INT NOT NULL,
Name CHAR(30),
Address VARCHAR(255)
);

CREATE TABLE Exam (
IdExam INT NOT NULL,
IdFaculty INT,
Name CHAR(30),
Duration Int ,
StartDare Date,
StartHour Time
);

CREATE TABLE Request (
IdStudent INT NOT NULL,
IdExam INT NOT NULL,
DateSub Date,
Mark Decimal(4,3),
Session Int);

ALTER TABLE CandidateStudent ADD CONSTRAINT PK_CandidateStudent PRIMARY KEY (Id);

ALTER TABLE Faculty ADD CONSTRAINT PK_Faculty PRIMARY KEY (Id);

ALTER TABLE Exam ADD CONSTRAINT PK_Exam PRIMARY KEY (IdExam);

ALTER TABLE Request ADD CONSTRAINT PK_Request PRIMARY KEY (IdStudent,IdExam);


ALTER TABLE Exam ADD CONSTRAINT FK_Exam FOREIGN KEY (IdFaculty) 
REFERENCES CandidateStudent(Id);

ALTER TABLE Request ADD CONSTRAINT FK_Request1 FOREIGN KEY (IdStudent) 
REFERENCES Faculty(Id);

ALTER TABLE Request ADD CONSTRAINT FK_Request2 FOREIGN KEY (IdExam) 
REFERENCES Exam(IdExam);

ALTER TABLE Request ADD CONSTRAINT FK_Request2 FOREIGN KEY (IdExam) 
REFERENCES Exam(IdExam);

ALTER TABLE Request ADD CONSTRAINT CHECK_Request CHECK (Mark in (2.00,6.00));



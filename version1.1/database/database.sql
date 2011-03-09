DROP TABLE IF EXISTS `Ninja`;
CREATE TABLE IF NOT EXISTS `Ninja` (
    Id BIGINT NOT NULL  AUTO_INCREMENT,
    UserName varchar(255) NOT NULL  ,
    Password varchar(255) NOT NULL  ,
    Name varchar(255) NOT NULL  ,
		Email varchar(255) NOT NULL,
		Phone int(10) NOT NULL,
    Heading varchar(255) NOT NULL ,
		FacebookId varchar(255) NOT NULL,
    Description text NOT NULL ,
		Rating float(3,2) NOT NULL DEFAULT 0,
		Skills varchar(255),
		RegisteredOn Date NOT NULL,
		PRIMARY KEY (Id)
) ENGINE=INNODB;

insert into Ninja (UserName,Name,Email,Heading,Description,Rating,RegisteredOn) VALUES ("test","Ashish","test@test.com","some heading","some description","9.5","2010-01-01");
insert into Ninja (UserName,Name,Email,Heading,Description,Rating,RegisteredOn) VALUES ("test","Ashish","test@test.com","some heading","some description","9.5","2010-01-01");

DROP TABLE IF EXISTS `Startup`;
CREATE TABLE IF NOT EXISTS `Startup` (
    Id BIGINT NOT NULL  AUTO_INCREMENT,
    UserName varchar(255) NOT NULL  ,
    Password varchar(255) NOT NULL  ,
    Name varchar(255) NOT NULL  ,
		Email varchar(255) NOT NULL,
		Phone int(10) NOT NULL,
    Heading varchar(255) NOT NULL ,
    Description text NOT NULL ,
		FacebookId varchar(255) NOT NULL,
		Rating float(3,2) NOT NULL DEFAULT 0,
		RegisteredOn Date NOT NULL,
		PRIMARY KEY (Id)
) ENGINE=INNODB;

insert into Startup (UserName,Name,Email,Heading,Description,Rating,RegisteredOn) VALUES ("test","Stalkninja","test@test.com","some heading","some description","9.5","2010-01-01");

DROP TABLE IF EXISTS `Project`;
CREATE TABLE IF NOT EXISTS `Project` (
    Id BIGINT NOT NULL  AUTO_INCREMENT,
    Heading varchar(255) NOT NULL ,
		Status enum("open","in-progress","completed", "cancelled") NOT NULL DEFAULT 'open',
		Budget int NOT NULL,
		Duration int NOT NULL,
		StartupId BIGINT NOT NULL,
		DateCreated Date NOT NULL,
		DateAwarded Date,
		DateCompleted Date,
		Description text NOT NULL,
		Deliverable text NOT NULL,
		Task text NOT NULL,
		Skills varchar(255) NOT NULL,
		ProgressSheet text,
		PRIMARY KEY (Id)
) ENGINE=INNODB;

Insert into Project (Heading, Budget, Duration, StartupId, DateCreated, DateCompleted, Description, Skills, Status) VALUES ("some heading",1000,5,1,"2010-01-01","2010-01-01","some description","some skills", "in-progress"); 

DROP TABLE IF EXISTS `Project_Ninja`;
CREATE TABLE IF NOT EXISTS `Project_Ninja` (
    Id BIGINT NOT NULL  AUTO_INCREMENT,
		BidDate Date NOT NULL,
		ProjectId BIGINT NOT NULL,
		NinjaId BIGINT NOT NULL,
		Bid text NOT NULL,
		Status enum("open","in-progress","completed", "cancelled") NOT NULL DEFAULT 'open',
		StartupReview text,
		NinjaReview text,
		StartupRating float(3,2) NOT NULL DEFAULT 0,
		NinjaRating float(3,2) NOT NULL DEFAULT 0,
		PRIMARY KEY (Id)
) ENGINE=INNODB;

insert into Project_Ninja (BidDate, ProjectId, NinjaId, Bid, StartupReview, NinjaReview, StartupRating, NinjaRating, Status) VALUES ("2010-10-10",1,1,"temporary bid","some review from the startup","some review from the ninja",10,5, "in-progress");
insert into Project_Ninja (BidDate, ProjectId, NinjaId, Bid, StartupReview, NinjaReview, StartupRating, NinjaRating, Status) VALUES ("2010-10-10",1,2,"temporary bid","some review from the startup","some review from the ninja",10,5, "in-progress");

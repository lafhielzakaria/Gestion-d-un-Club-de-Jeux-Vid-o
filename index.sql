add forign key of subscribe in table of memebers

USE gamingclub;
CREATE TABLE subscribes(
    subscribeId INT PRIMARY KEY,
    subscribetype TEXT,
    startingdate DATE,
    endingdate DATE
);
CREATE TABLE clubMembers (
userId INT PRIMARY KEY,
userName VARCHAR (10),
    email VARCHAR (20),
    phone VARCHAR (10),
    integrationDate DATE,
     subscribeId INT,
    FOREIGN KEY (subscribeId)  REFERENCES subscribes(subscribeId)
);
CREATE TABLE turnements (
turnementId INT PRIMARY KEY,
turnementName VARCHAR (10)

);

CREATE TABLE games (
gameId INT PRIMARY KEY,
    gameName VARCHAR(10),
    studio VARCHAR (10),
    releaseDate DATE,
    category VARCHAR(10),
    turnementId INT,
    FOREIGN KEY (turnementId)  REFERENCES turnements(turnementId)
);
CREATE TABLE lendings(
    lendingdate DATE,
    returndate DATE,
    userId INT,
    gameId INT,
    FOREIGN KEY(userId) REFERENCES clubMembers(userId),
    FOREIGN KEY(gameId) REFERENCES games(gameId)
);
CREATE TABLE turnementhistory (
turnementId INT,
    winner VARCHAR(10),
    startingdate DATE,
    endingdate DATE,
    FOREIGN KEY (turnementId) REFERENCES turnements(turnementId)
    
);

/*fake data*/
insert into clubMembers(userId,userName,email,phone,integrationDate)
values (2,"zakaria","lafhielzakaria@gmail.com","0123456789","2007-02-03");
select * from clubMembers
insert into clubMembers(userId,userName,email,phone,integrationDate)
values (3,"ismail","lafhielismail@gmail.com","0123456789","2004-02-03");
select * from clubMembers
insert into clubMembers(userId,userName,email,phone,integrationDate)
values (4,"yahya","yahyayahya@gmail.com","0123456782","2002-02-03");
select * from clubMembers
insert into clubMembers(userId,userName,email,phone,integrationDate)
values (10,"saad","saadsaad@gmail.com","0123456782","2002-02-03");
select * from clubMembers
/*some practics*/
/*------------------------------------------*/
/*select all memebers but by order (desc)*/
select * from clubMembers order by userName desc
/*select all memebers but by order (asc)*/
select * from clubMembers order by userName asc
/*delete*/
delete from clubMembers where userId = 10;
select * from clubMembers
/*some modifications in games tables*/
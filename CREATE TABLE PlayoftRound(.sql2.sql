CREATE TABLE PlayoftRound(
id int (16) NOT NULL
team1id int (13) NOT NULL,
team2id int (13) NOT NULL,
startTime date NOT NULL,
endtime date NOT NULL,
rounNum int (14) NOT NULL,
PRIMARY KEY (id, startTime)
);

CREATE TABLE RoundStats(
id INT (16) PRIMARY KEY,
numShutouts INT (5) NOT NULL,
goalLeaderId INT (10) NOT NULL,
assistLeaderId INT (10) NOT NULL,
penaltyLeaderId INT (10) NOT NULL,
plusMinusLeaderId INT (10) NOT NULL,
faceoffWonLeaderId INT (10) NOT NULL,
sogLeaderId INT (10) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE UserStatPicks(
id INT (16) PRIMARY KEY,
roundId INT (14) NOT NULL,
goalLeaderId INT (10) NOT NULL,
assistLeaderId INT (10) NOT NULL,
plusMinusLeaderId INT (10) NOT NULL,
faceoffWonLeaderId INT (10) NOT NULL,
sogLeaderId INT (10) NOT NULL,
numShutouts INT (5) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE HockeyGame(
id INT (16) PRIMARY KEY,
roundId INT (14) NOT NULL,
startTime DATETIME NOT NULL,
description VARCHAR(255) NOT NULL,
team1Id INT (16) NOT NULL,
team2Id INT (13) NOT NULL,
PRIMARY KEY (id, roundId)
);

CREATE TABLE HockeyTeam(
id INT (16) PRIMARY KEY,
name VARCHAR(255) NOT NULL,
logo VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE User(
id INT (16) PRIMARY KEY,
username VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE UserScorePicks(
id INT (16) PRIMARY KEY,
hockeyGameId INT (14) NOT NULL,
team1score INT (3) NOT NULL,
team2score INT (3) NOT NULL,
userId INT (10) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE GameScores(
id INT (16) PRIMARY KEY,
hockeyGameId INT (14) NOT NULL,
team1score INT (3) NOT NULL,
team2score INT (3) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE HockeyTeamPlayer(
id INT (16) PRIMARY KEY,
hockeyTeamId INT (10) NOT NULL,
firstName VARCHAR(255) NOT NULL,
lastName VARCHAR(255) NOT NULL,
jerseyNum INT (2) NOT NULL,
position VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);
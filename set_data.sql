DROP TABLE IF EXISTS Quotes, Authors;

CREATE TABLE IF NOT EXISTS Authors(Id INT PRIMARY KEY AUTO_INCREMENT, 
        Name VARCHAR(25)) ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS Quotes(Id INT PRIMARY KEY AUTO_INCREMENT, 
        AuthorID INT, Quote VARCHAR(100),
        FOREIGN KEY(AuthorID) REFERENCES Authors(Id) ON DELETE CASCADE) 
        ENGINE=InnoDB;
        
INSERT INTO Authors(Id, Name) VALUES(1, 'Bruce Lee');
INSERT INTO Authors(Id, Name) VALUES(2, 'Mr Miyagi');
INSERT INTO Authors(Id, Name) VALUES(3, 'Rocky Balboa');
INSERT INTO Authors(Id, Name) VALUES(4, 'Hannibal Smith');
INSERT INTO Authors(Id, Name) VALUES(5, 'BA Baracas');

INSERT INTO Quotes(Id, AuthorID, Quote) VALUES(1, 1, 'Whammo');
INSERT INTO Quotes(Id, AuthorID, Quote) VALUES(2, 2, 'Wax on');
INSERT INTO Quotes(Id, AuthorID, Quote) VALUES(3, 3, 'Adrian!!!');
INSERT INTO Quotes(Id, AuthorID, Quote) VALUES(4, 4, 'I love it when a plan comes together.');
INSERT INTO Quotes(Id, AuthorID, Quote) VALUES(5, 5, 'I pity the fool!');
INSERT INTO Quotes(Id, AuthorID, Quote) VALUES(6, 5, 'I aint flying in no plane, sucka!');
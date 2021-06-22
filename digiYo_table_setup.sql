USE digiYoCards;

DROP TABLE IF EXISTS wrestling;
DROP TABLE IF EXISTS moves;
DROP TABLE IF EXISTS moves_metadata;
DROP Table IF EXISTS wearables;
DROP Table IF EXISTS training;

CREATE TABLE wrestling 
(serial_number bigint NOT NULL UNIQUE,
nft_id varchar(8000),
card_type varchar(8000),
[name] varchar(8000),
rarity varchar(8000) NOT NULL,
URI varchar(8000) NOT NULL,
num_cards_minted bigint,
card_id varchar(8000),
[description] varchar(8000),
PRIMARY KEY (serial_number)
);

INSERT INTO wrestling VALUES (110010000001, '0121 000001/777777', 'move', 'Wrestling_move_example1', 'common', 'QmdTzRu6cP1cWGDZzW93yFCnkCRuSzCju4J3N83TbMVPiM', 10, '001', 'This is a test')
INSERT INTO wrestling VALUES (110010000002, '0121 000002/777777', 'move', 'Wrestling_move_example2', 'common', 'QmdTzRu6cP1cWGDZzW93yFCnkCRuSzCju4J3N83TbMVPiM', 10, '002', 'This is a test2')
INSERT INTO wrestling VALUES (110010000003, '0121 000004/777777', 'training', 'Wrestling_training_example1', 'common', 'QmdTzRu6cP1cWGDZzW93yFCnkCRuSzCju4J3N83TbMVPiM', 10, '004', 'This is a test.training1')
INSERT INTO wrestling VALUES (110010000005, '0121 000004/777777', 'training', 'Wrestling_training_example2', 'common', 'QmdTzRu6cP1cWGDZzW93yFCnkCRuSzCju4J3N83TbMVPiM', 10, '005', 'This is a test.training2')
INSERT INTO wrestling VALUES (110010000006, '0121 000004/777777', 'wearables', 'Wrestling_wearables_example1', 'common', 'QmdTzRu6cP1cWGDZzW93yFCnkCRuSzCju4J3N83TbMVPiM', 10, '006', 'This is a test.wearables1')
INSERT INTO wrestling VALUES (110010000007, '0121 000004/777777', 'wearables', 'Wrestling_wearables_example2', 'common', 'QmdTzRu6cP1cWGDZzW93yFCnkCRuSzCju4J3N83TbMVPiM', 10, '007', 'This is a test.wearables2')

CREATE TABLE moves
( move_name varchar (8000) NOT NULL UNIQUE,
rarity varchar(8000) NOT NULL,
URI varchar(8000) NOT NULL,
num_cards_minted bigint,
[description] varchar(8000),
);

INSERT INTO moves
SELECT  [name], rarity, URI, num_cards_minted, [description]
FROM  wrestling
WHERE wrestling.card_type = 'move';


CREATE TABLE training
( training_name varchar (8000) NOT NULL UNIQUE,
rarity varchar(8000) NOT NULL,
URI varchar(8000) NOT NULL,
num_cards_minted bigint,
[description] varchar(8000),
); 

INSERT INTO training
SELECT  [name], rarity, URI, num_cards_minted, [description]
FROM  wrestling
WHERE wrestling.card_type = 'training';

CREATE TABLE wearables
( wearables_name varchar (8000) NOT NULL UNIQUE,
rarity varchar(8000) NOT NULL,
URI varchar(8000) NOT NULL,
num_cards_minted bigint,
[description] varchar(8000),
); 

INSERT INTO wearables
SELECT  [name], rarity, URI, num_cards_minted, [description]
FROM  wrestling
WHERE wrestling.card_type = 'wearables';

CREATE TABLE moves_metadata 
([Name] varchar (8000) NOT NULL UNIQUE,
[status] varchar(8000),
single_v_partner varchar(8000),
position_category varchar(8000),
rarity varchar(8000),
points bigint,
URI varchar(8000) NOT NULL,
beginning_state varchar(8000),
end_state varchar(8000),
[space] varchar(8000),
funk varchar(8000)
PRIMARY KEY (Name)
);

SELECT * FROM wrestling;
SELECT * FROM moves;
SELECT * FROM moves_metadata;
SELECT * FROM wearables;
SELECT * FROM training;




-- 'Name', 'Status', 'Single v Partner', 'Position/Category', 'Rarity',
--        'Date', 'DigiYo Type', 'Points', 'Notes', 'Beginning State',
--        'End State', 'Space', 'Funk'],
--       dtype='object'

-- INSERT INTO cardsMetadata VALUES ('TD003/200L', 'TakeDownExample', 'BlondMale', 'TakeDown', 'Legendary', 'QmdTzRu6cP1cWGDZzW93yFCnkCRuSzCju4J3N83TbMVPiM', 200, 3)
-- SELECT * FROM cardsMetadata;
-- DROP TABLE IF EXISTS accounts;
-- CREATE DATABASE digiYoCards;
-- CREATE TABLE accounts (
--     id int IDENTITY(1,1) PRIMARY KEY CLUSTERED NOT NULL
--     , userId nvarchar(50) NOT NULL
--     , title nvarchar(200) NOT NULL
--     , [description] nvarchar(1000) NULL
--     , startDate date NOT NULL
--     , startTime time(0) NULL
--     , endDate date NULL
--     , endTime time(0) NULL
--     , INDEX idx_transactions_userId (userId)
-- )


-- INSERT INTO accounts (userId, title, [description], startDate, startTime, endDate, endTime)
-- VALUES('user1234', N'appointment', N'description stuff', '2021-05-25', '12:01', NULL, NULL)
-- , ('user1234', N'online conference', N'', '2021-06-22', NULL, '2021-07-14', NULL)  


/*
Author : Sahil Nanavaty
Title  : DataQuest Project
Course : IST659 M400
Term   : December, 2021
*/

-- DDL STATEMENTS
-- Drop tables (when needed)
DROP TABLE CharacterGuild
DROP TABLE Guild
DROP TABLE Character
DROP TABLE Account

-- Creating the Account table
CREATE TABLE Account (
	AccountID int identity PRIMARY KEY,
	AccountName varchar(30) not null UNIQUE, 
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	EmailAddress varchar(50) not null UNIQUE,
	PhoneNumber varchar(20) not null UNIQUE,
	Age int not null,
	Tier char(1) not null,
)
-- End creating the Account table

-- Creating the Character table
CREATE TABLE Character (
	CharacterID int identity PRIMARY KEY,
	CharacterName varchar(20) not null,
	Race varchar(20) not null,
	Experience varchar(20) not null, 
	AccountID int not null FOREIGN KEY REFERENCES Account(AccountID), 
)
-- End creating the Character table

-- Creating the Guild table
CREATE TABLE Guild (
	GuildID int identity PRIMARY KEY,
	GuildName varchar(50) not null UNIQUE,
	Description varchar(200), 
)
-- End creating the Guild table

-- Creating the CharacterGuild table
CREATE TABLE CharacterGuild (
	CharacterGuildID int identity PRIMARY KEY,
	CharacterID int not null FOREIGN KEY REFERENCES Character(CharacterID),
	GuildID int not null FOREIGN KEY REFERENCES Guild(GuildID),
)
-- End creating the CharacterGuild table

-- INSERT STATEMENTS
-- Insert data into Account table
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('rwhardley0', 'Raynor', 'Whardley', 'rwhardley0@t.co', '819-964-0827', 19, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('ichaffin1', 'Ilsa', 'Chaffin', 'ichaffin1@alexa.com', '755-977-9471', 29, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('apena2', 'Aridatha', 'Pena', 'apena2@cargocollective.com', '602-256-4074', 22, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('mfollen3', 'Maryanna', 'Follen', 'mfollen3@apache.org', '206-757-0639', 24, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('hmacfarland4', 'Heddie', 'MacFarland', 'hmacfarland4@comcast.net', '327-712-4366', 17, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('fmoggach5', 'Freddy', 'Moggach', 'fmoggach5@360.cn', '875-510-3189', 24, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('lmackibbon6', 'Letitia', 'MacKibbon', 'lmackibbon6@meetup.com', '465-214-8915', 25, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('dscriven7', 'Doralia', 'Scriven', 'dscriven7@newsvine.com', '602-528-6005', 24, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('triggert8', 'Tyrone', 'Riggert', 'triggert8@eventbrite.com', '572-272-8814', 19, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('mbrunicke9', 'Mandie', 'Brunicke', 'mbrunicke9@yolasite.com', '853-654-2387', 28, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('rpyera', 'Ronda', 'Pyer', 'rpyera@desdev.cn', '697-635-5742', 28, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('aguernerb', 'Astra', 'Guerner', 'aguernerb@mozilla.com', '509-460-7057', 21, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('mtrehearnec', 'Marcy', 'Trehearne', 'mtrehearnec@tiny.cc', '704-694-3816', 30, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('ldawnayd', 'Lay', 'Dawnay', 'ldawnayd@google.ru', '801-497-0288', 18, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('jfrusharde', 'Janith', 'Frushard', 'jfrusharde@mediafire.com', '674-162-5994', 17, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('mketchellf', 'Marlowe', 'Ketchell', 'mketchellf@godaddy.com', '123-113-7910', 26, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('cpellmang', 'Cacilie', 'Pellman', 'cpellmang@dailymotion.com', '112-370-6629', 19, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('ddunkinsonh', 'Dew', 'Dunkinson', 'ddunkinsonh@creativecommons.org', '627-159-1416', 19, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('mflaxoni', 'Marlane', 'Flaxon', 'mflaxoni@ifeng.com', '616-956-9215', 17, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('bpapaj', 'Brynna', 'Papa', 'bpapaj@paginegialle.it', '194-597-0600', 17, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('tdessantk', 'Tedman', 'Dessant', 'tdessantk@jimdo.com', '582-692-0557', 22, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('fmyriel', 'Frazier', 'Myrie', 'fmyriel@state.gov', '192-830-7802', 29, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('cdurnanm', 'Cecilius', 'Durnan', 'cdurnanm@simplemachines.org', '939-467-3068', 19, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('epartnern', 'Elysha', 'Partner', 'epartnern@symantec.com', '904-792-9798', 27, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('pfollano', 'Perkin', 'Follan', 'pfollano@ezinearticles.com', '687-377-1207', 22, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('ncaslakep', 'Nell', 'Caslake', 'ncaslakep@mayoclinic.com', '704-914-4565', 22, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('dgillaspyq', 'Darline', 'Gillaspy', 'dgillaspyq@typepad.com', '829-966-0051', 29, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('wcorderoyr', 'Wendeline', 'Corderoy', 'wcorderoyr@yellowbook.com', '150-841-6909', 21, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('bhammants', 'Brittaney', 'Hammant', 'bhammants@cloudflare.com', '270-106-7536', 26, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('gboleswortht', 'Gerek', 'Bolesworth', 'gboleswortht@hugedomains.com', '690-160-1504', 30, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('qdarnodyu', 'Quintina', 'Darnody', 'qdarnodyu@cdc.gov', '283-880-4918', 29, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('ayacobsohnv', 'Alikee', 'Yacobsohn', 'ayacobsohnv@unblog.fr', '359-473-4584', 24, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('astobbew', 'Antonin', 'Stobbe', 'astobbew@furl.net', '269-967-9201', 18, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('jrowlandsx', 'Jarvis', 'Rowlands', 'jrowlandsx@livejournal.com', '469-982-6916', 29, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('tchucky', 'Talbert', 'Chuck', 'tchucky@ihg.com', '549-657-0825', 28, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('lkinkeadz', 'Loni', 'Kinkead', 'lkinkeadz@nature.com', '890-934-9562', 29, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('bfrenchum10', 'Bruis', 'Frenchum', 'bfrenchum10@bloglines.com', '758-339-8941', 29, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('kcosgriff11', 'Kali', 'Cosgriff', 'kcosgriff11@examiner.com', '449-998-7600', 24, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('lcarrick12', 'Linn', 'Carrick', 'lcarrick12@washington.edu', '293-969-6501', 19, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('aspurgin13', 'Almeria', 'Spurgin', 'aspurgin13@dyndns.org', '794-493-3877', 24, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('aminot14', 'Alis', 'Minot', 'aminot14@tamu.edu', '700-785-4876', 23, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('nwyvill15', 'Nicholas', 'Wyvill', 'nwyvill15@1688.com', '944-986-0162', 17, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('oorniz16', 'Oralia', 'Orniz', 'oorniz16@toplist.cz', '102-465-1938', 30, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('rhamlin17', 'Ryley', 'Hamlin', 'rhamlin17@simplemachines.org', '272-283-3494', 19, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('bodell18', 'Birgit', 'O''dell', 'bodell18@omniture.com', '534-961-2802', 17, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('aambrogiotti19', 'Aldus', 'Ambrogiotti', 'aambrogiotti19@goodreads.com', '387-151-8724', 30, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('kwaleran1a', 'Killian', 'Waleran', 'kwaleran1a@fc2.com', '256-898-1062', 19, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('klessmare1b', 'Kimball', 'Lessmare', 'klessmare1b@google.ru', '290-334-7248', 26, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('efebry1c', 'Edi', 'Febry', 'efebry1c@dailymotion.com', '399-175-1506', 27, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('dlyddy1d', 'Dyana', 'Lyddy', 'dlyddy1d@ft.com', '834-750-7447', 17, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('amcauslene1e', 'Agnes', 'McAuslene', 'amcauslene1e@utexas.edu', '742-819-1632', 30, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('memms1f', 'Mamie', 'Emms', 'memms1f@berkeley.edu', '812-451-5694', 20, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('mtremollet1g', 'Mallissa', 'Tremollet', 'mtremollet1g@umn.edu', '103-187-5057', 19, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('agoodlip1h', 'Arnold', 'Goodlip', 'agoodlip1h@google.ca', '548-116-6077', 24, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('oclover1i', 'Othilie', 'Clover', 'oclover1i@china.com.cn', '570-257-6776', 25, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('eraigatt1j', 'Emelen', 'Raigatt', 'eraigatt1j@elegantthemes.com', '877-750-1957', 28, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('mchatfield1k', 'Melisandra', 'Chatfield', 'mchatfield1k@google.co.uk', '254-661-2387', 23, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('imcvie1l', 'Ingaberg', 'McVie', 'imcvie1l@pinterest.com', '552-621-1274', 20, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('tmannakee1m', 'Trixi', 'Mannakee', 'tmannakee1m@xinhuanet.com', '887-650-9308', 24, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('bmcgoon1n', 'Bernardine', 'McGoon', 'bmcgoon1n@telegraph.co.uk', '695-631-9966', 28, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('wchimes1o', 'Wilona', 'Chimes', 'wchimes1o@sciencedaily.com', '397-695-4034', 24, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('rmilnes1p', 'Ragnar', 'Milnes', 'rmilnes1p@cyberchimps.com', '363-495-8825', 23, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('cbalwin1q', 'Cheston', 'Balwin', 'cbalwin1q@de.vu', '544-804-1190', 29, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('cczajkowska1r', 'Christabel', 'Czajkowska', 'cczajkowska1r@xing.com', '738-433-5467', 24, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('ppurrington1s', 'Prudence', 'Purrington', 'ppurrington1s@abc.net.au', '694-599-4982', 19, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('cdumbrill1t', 'Cecil', 'Dumbrill', 'cdumbrill1t@ucoz.ru', '259-969-7255', 17, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('jdupre1u', 'Jeromy', 'Dupre', 'jdupre1u@tamu.edu', '375-727-4077', 17, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('mplayer1v', 'Maurizia', 'Player', 'mplayer1v@yellowbook.com', '349-824-7030', 30, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('edomoney1w', 'Elysee', 'Domoney', 'edomoney1w@jugem.jp', '925-280-9306', 29, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('jmyhan1x', 'Jerry', 'Myhan', 'jmyhan1x@harvard.edu', '111-450-0165', 26, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('eblaszczyk1y', 'Elvyn', 'Blaszczyk', 'eblaszczyk1y@storify.com', '223-450-1815', 28, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('fabbey1z', 'Ferdinande', 'Abbey', 'fabbey1z@nyu.edu', '618-529-9468', 28, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('lenterlein20', 'Lauryn', 'Enterlein', 'lenterlein20@exblog.jp', '932-733-3888', 25, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('lbugbird21', 'Laurie', 'Bugbird', 'lbugbird21@reverbnation.com', '436-392-1824', 17, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('jgiabuzzi22', 'Jean', 'Giabuzzi', 'jgiabuzzi22@wordpress.com', '413-532-6299', 20, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('igrayham23', 'Ibrahim', 'Grayham', 'igrayham23@networkadvertising.org', '760-528-7283', 29, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('nsewley24', 'Ninetta', 'Sewley', 'nsewley24@sphinn.com', '991-354-1005', 27, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('cclemenzi25', 'Cathe', 'Clemenzi', 'cclemenzi25@friendfeed.com', '523-613-2804', 20, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('kpurviss26', 'Kinnie', 'Purviss', 'kpurviss26@answers.com', '740-557-0783', 22, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('nliven27', 'Nikolaos', 'Liven', 'nliven27@examiner.com', '345-951-2602', 21, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('creeveley28', 'Christiana', 'Reeveley', 'creeveley28@pinterest.com', '528-962-8142', 28, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('nmccumskay29', 'Neile', 'McCumskay', 'nmccumskay29@sitemeter.com', '754-478-8705', 21, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('bkensley2a', 'Brien', 'Kensley', 'bkensley2a@cdc.gov', '245-325-9222', 17, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('lfridaye2b', 'Linzy', 'Fridaye', 'lfridaye2b@4shared.com', '840-347-8374', 21, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('gmcgowing2c', 'Gerianna', 'McGowing', 'gmcgowing2c@naver.com', '129-403-6633', 28, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('tbrewood2d', 'Tessie', 'Brewood', 'tbrewood2d@instagram.com', '397-930-0229', 26, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('pmuncer2e', 'Pauletta', 'Muncer', 'pmuncer2e@chron.com', '496-409-3125', 17, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('lduffrie2f', 'Libby', 'Duffrie', 'lduffrie2f@diigo.com', '439-305-7006', 23, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('apodmore2g', 'Abrahan', 'Podmore', 'apodmore2g@printfriendly.com', '933-198-2419', 20, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('akobierra2h', 'Aron', 'Kobierra', 'akobierra2h@cmu.edu', '605-547-5376', 23, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('lcarnaman2i', 'Lotta', 'Carnaman', 'lcarnaman2i@clickbank.net', '892-990-4769', 24, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('mblackford2j', 'Modestine', 'Blackford', 'mblackford2j@ustream.tv', '284-356-1029', 18, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('oyeoland2k', 'Olivette', 'Yeoland', 'oyeoland2k@nih.gov', '138-435-9138', 18, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('eedgeson2l', 'Englebert', 'Edgeson', 'eedgeson2l@umn.edu', '485-108-5503', 25, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('nmaclaughlin2m', 'Noel', 'MacLaughlin', 'nmaclaughlin2m@dailymail.co.uk', '459-794-7653', 23, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('tbruyntjes2n', 'Terry', 'Bruyntjes', 'tbruyntjes2n@unesco.org', '948-336-0922', 24, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('mpattinson2o', 'Marcile', 'Pattinson', 'mpattinson2o@yolasite.com', '617-496-1875', 20, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('ksaterweyte2p', 'Karlik', 'Saterweyte', 'ksaterweyte2p@parallels.com', '502-739-3793', 18, 2);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('acastiglioni2q', 'Annemarie', 'Castiglioni', 'acastiglioni2q@ebay.com', '751-717-9864', 22, 1);
INSERT INTO Account (AccountName, FirstName, LastName, EmailAddress, PhoneNumber, Age, Tier) VALUES ('afildes2r', 'Allegra', 'Fildes', 'afildes2r@google.cn', '567-150-6834', 20, 1);

-- Insert data into Character table
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mgawthorpe0', 'Dwarf', 65, 32);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('lpettiford1', 'Orc', 2, 65);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('sgiberd2', 'Orc', 32, 59);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('bbrownsey3', 'Orc', 48, 73);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('rburton4', 'Dwarf', 59, 28);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('gdemaria5', 'Human', 7, 28);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('tglader6', 'Elf', 70, 62);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('astarie7', 'Elf', 80, 24);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ecoffee8', 'Elf', 94, 63);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('hivashev9', 'Dwarf', 42, 63);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('crollingsa', 'Elf', 97, 42);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('jwildenb', 'Dwarf', 9, 94);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('smaciaszczykc', 'Human', 99, 74);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('bdeabilld', 'Dwarf', 69, 3);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mcoadye', 'Human', 47, 37);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('rscarfef', 'Orc', 11, 9);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('drontschg', 'Orc', 95, 23);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('bjedrzejewiczh', 'Elf', 74, 15);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('hkeedwelli', 'Human', 14, 9);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('jtampinj', 'Human', 54, 74);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('vfreddik', 'Orc', 67, 4);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mstoylel', 'Elf', 24, 60);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('atithecottm', 'Orc', 74, 13);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('kbuftonn', 'Orc', 87, 7);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('tcoilso', 'Orc', 98, 53);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('rbaughnp', 'Dwarf', 94, 87);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('dghidettiq', 'Human', 33, 66);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('jalfr', 'Elf', 44, 15);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('vembras', 'Elf', 74, 17);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('phuncoott', 'Dwarf', 51, 85);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('draittieu', 'Dwarf', 77, 79);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('aoverellv', 'Dwarf', 27, 20);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('tridelw', 'Orc', 81, 11);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('aglasscoex', 'Human', 49, 15);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mbartholiny', 'Dwarf', 4, 19);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('scamelliz', 'Dwarf', 50, 81);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('cleaburn10', 'Orc', 63, 63);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('jfettes11', 'Elf', 49, 53);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('njordan12', 'Elf', 81, 38);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('vburfield13', 'Orc', 70, 38);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('fhaygreen14', 'Dwarf', 52, 37);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('alouisot15', 'Elf', 20, 6);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('dmendenhall16', 'Orc', 56, 25);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('lmckerley17', 'Orc', 81, 21);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mbridgwood18', 'Orc', 49, 21);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('kbergeon19', 'Orc', 82, 83);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('jrottcher1a', 'Orc', 82, 40);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('scrosbie1b', 'Human', 6, 84);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('cberkowitz1c', 'Dwarf', 28, 9);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ekauscher1d', 'Dwarf', 9, 96);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('kparchment1e', 'Elf', 75, 20);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ccassedy1f', 'Dwarf', 40, 85);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('arichens1g', 'Dwarf', 41, 100);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ttoe1h', 'Orc', 78, 48);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('sslograve1i', 'Elf', 71, 67);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('rnazair1j', 'Elf', 62, 62);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('kbedrosian1k', 'Orc', 24, 21);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('jkohrs1l', 'Orc', 38, 36);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('dthick1m', 'Elf', 99, 64);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('aties1n', 'Dwarf', 14, 63);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ybartoshevich1o', 'Orc', 92, 11);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('dmacknocker1p', 'Orc', 83, 24);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('lmcpeice1q', 'Elf', 38, 9);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('bpantridge1r', 'Orc', 56, 46);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ahoutby1s', 'Elf', 45, 43);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('npriestman1t', 'Human', 90, 30);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ilafrentz1u', 'Elf', 97, 3);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mtabb1v', 'Dwarf', 1, 18);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('wrignold1w', 'Orc', 41, 41);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('sgoldsworthy1x', 'Human', 31, 11);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('nbuxy1y', 'Human', 94, 16);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('rrosentholer1z', 'Human', 38, 9);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('dmcginley20', 'Elf', 32, 38);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('cdeppe21', 'Dwarf', 99, 59);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('pgrimditch22', 'Orc', 13, 67);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ablewis23', 'Dwarf', 90, 18);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('hstorror24', 'Human', 32, 12);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('kcheetam25', 'Orc', 35, 96);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('dkarolyi26', 'Dwarf', 96, 64);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('bboyce27', 'Human', 86, 62);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('thayton28', 'Orc', 8, 95);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mcordelet29', 'Elf', 66, 35);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('cmcquillin2a', 'Human', 51, 97);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ekingerby2b', 'Dwarf', 90, 17);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('dollivier2c', 'Dwarf', 45, 67);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ejaffray2d', 'Elf', 88, 27);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('maldersea2e', 'Human', 4, 38);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('bmacguigan2f', 'Orc', 47, 84);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('bsecrett2g', 'Orc', 2, 5);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('cmereweather2h', 'Human', 47, 99);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mtakle2i', 'Dwarf', 40, 64);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ljacquot2j', 'Elf', 32, 89);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('xwelfair2k', 'Human', 10, 83);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('gcreed2l', 'Orc', 36, 19);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('tleadstone2m', 'Human', 91, 32);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ascaice2n', 'Human', 82, 67);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('gletcher2o', 'Orc', 91, 52);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('acrookshank2p', 'Orc', 32, 90);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('pnewland2q', 'Dwarf', 18, 24);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('grizzardi2r', 'Elf', 38, 64);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mscrowby2s', 'Orc', 6, 51);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('spittock2t', 'Dwarf', 13, 39);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('oshropshire2u', 'Orc', 98, 83);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('lmarchetti2v', 'Human', 53, 47);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('vbuttriss2w', 'Dwarf', 10, 20);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('cjanuszkiewicz2x', 'Dwarf', 86, 48);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mdungay2y', 'Human', 56, 44);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('abrislan2z', 'Dwarf', 53, 95);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('zraynton30', 'Orc', 16, 92);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('kchampneys31', 'Orc', 11, 40);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('cragbourne32', 'Orc', 25, 10);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('jslay33', 'Dwarf', 94, 53);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ajowett34', 'Orc', 25, 60);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('wjosskoviz35', 'Elf', 63, 32);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('dstquintin36', 'Human', 8, 25);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('kleap37', 'Human', 27, 3);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mdougherty38', 'Dwarf', 38, 18);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ekainz39', 'Dwarf', 25, 3);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('idenial3a', 'Human', 68, 51);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('eduguid3b', 'Dwarf', 12, 45);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mwaplington3c', 'Human', 54, 22);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('rferreira3d', 'Elf', 41, 78);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('sbraisher3e', 'Human', 98, 28);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('cpfeffer3f', 'Dwarf', 74, 22);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('vgilmore3g', 'Human', 41, 16);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('bfort3h', 'Dwarf', 54, 37);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('smunehay3i', 'Human', 9, 12);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('cfrantsev3j', 'Human', 47, 23);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('jantyukhin3k', 'Orc', 70, 65);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('lgelling3l', 'Dwarf', 48, 13);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('gduplock3m', 'Orc', 98, 99);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('rscarffe3n', 'Orc', 49, 4);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('ssmaile3o', 'Elf', 70, 69);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('vcastree3p', 'Elf', 97, 7);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('fjestico3q', 'Orc', 65, 96);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('lembleton3r', 'Orc', 100, 83);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('jschenfisch3s', 'Elf', 95, 81);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('wtitherington3t', 'Elf', 84, 59);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('bbocke3u', 'Elf', 87, 35);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('eclemmen3v', 'Human', 95, 84);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('tbreckwell3w', 'Human', 34, 60);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('dalban3x', 'Orc', 63, 8);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('lpascall3y', 'Dwarf', 69, 27);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('shawlgarth3z', 'Dwarf', 51, 64);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('rlaxtonne40', 'Dwarf', 89, 98);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('cattwooll41', 'Human', 32, 59);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('jgidley42', 'Elf', 54, 49);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('bquinnet43', 'Elf', 90, 81);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mmacgaughey44', 'Human', 13, 11);
INSERT INTO Character (CharacterName, Race, Experience, AccountID) VALUES ('mblaisdell45', 'Dwarf', 58, 90);

-- Insert data into Guild table
INSERT INTO Guild (GuildName, Description) VALUES ('Champion Clan', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.');
INSERT INTO Guild (GuildName, Description) VALUES ('Goblin Gang', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.');
INSERT INTO Guild (GuildName, Description) VALUES ('Scholar Society', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.');
INSERT INTO Guild (GuildName, Description) VALUES ('Mage ''Migos', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO Guild (GuildName, Description) VALUES ('Soldier Squadron', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.');
INSERT INTO Guild (GuildName, Description) VALUES ('Knight Knation', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO Guild (GuildName, Description) VALUES ('Thief Team', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO Guild (GuildName, Description) VALUES ('Pirate Party', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.');
INSERT INTO Guild (GuildName, Description) VALUES ('Crook Company', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO Guild (GuildName, Description) VALUES ('Paladin Posse', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.');
INSERT INTO Guild (GuildName, Description) VALUES ('Bard Buddies', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.');
INSERT INTO Guild (GuildName, Description) VALUES ('Ranger Regiment', 'In hac habitasse platea dictumst.');
INSERT INTO Guild (GuildName, Description) VALUES ('Archer Array', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.');
INSERT INTO Guild (GuildName, Description) VALUES ('Barbarian Band', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.');
INSERT INTO Guild (GuildName, Description) VALUES ('Monk Mob', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.');
INSERT INTO Guild (GuildName, Description) VALUES ('Crusader Clique', 'Integer ac neque. Duis bibendum.');
INSERT INTO Guild (GuildName, Description) VALUES ('Gnome Group', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.');
INSERT INTO Guild (GuildName, Description) VALUES ('Druid Dudes', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.');
INSERT INTO Guild (GuildName, Description) VALUES ('Psycho Platoon', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.');
INSERT INTO Guild (GuildName, Description) VALUES ('Builder Bunch', 'Nam dui.');

-- Insert data into CharacterGuild table
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (70, 2);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (20, 13);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (95, 8);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (102, 16);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (40, 12);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (119, 12);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (22, 3);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (4, 20);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (111, 19);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (50, 4);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (13, 15);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (94, 9);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (138, 17);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (33, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (34, 19);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (128, 15);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (96, 6);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (51, 13);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (106, 6);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (7, 5);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (17, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (86, 2);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (12, 4);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (84, 9);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (52, 2);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (121, 3);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (95, 9);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (12, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (53, 10);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (26, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (146, 5);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (112, 18);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (99, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (9, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (100, 11);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (130, 13);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (21, 17);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (14, 20);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (93, 20);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (1, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (33, 3);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (111, 10);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (37, 15);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (94, 11);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (147, 5);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (117, 5);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (113, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (49, 6);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (133, 16);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (101, 5);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (10, 20);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (128, 12);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (124, 5);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (27, 3);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (136, 18);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (66, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (11, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (99, 19);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (23, 19);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (93, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (144, 11);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (107, 3);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (85, 18);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (45, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (119, 14);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (84, 6);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (114, 13);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (71, 17);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (95, 15);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (96, 3);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (49, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (150, 16);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (128, 11);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (144, 9);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (142, 5);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (144, 15);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (47, 14);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (39, 18);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (124, 16);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (28, 14);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (100, 3);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (143, 18);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (150, 10);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (81, 11);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (69, 2);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (47, 16);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (34, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (148, 20);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (129, 12);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (46, 8);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (11, 20);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (21, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (20, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (136, 12);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (5, 6);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (111, 9);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (112, 20);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (90, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (124, 4);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (142, 5);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (27, 9);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (92, 19);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (108, 14);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (69, 16);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (145, 12);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (101, 12);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (134, 8);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (79, 13);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (52, 16);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (96, 10);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (67, 8);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (142, 16);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (104, 14);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (75, 9);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (15, 13);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (71, 9);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (142, 12);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (111, 11);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (25, 15);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (116, 20);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (139, 9);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (3, 4);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (70, 13);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (31, 16);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (36, 17);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (134, 20);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (49, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (44, 4);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (64, 4);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (106, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (60, 18);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (93, 13);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (57, 16);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (32, 8);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (142, 5);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (130, 13);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (71, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (62, 3);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (147, 3);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (55, 6);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (65, 6);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (47, 1);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (49, 9);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (92, 19);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (75, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (110, 10);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (100, 13);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (25, 7);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (121, 17);
INSERT INTO CharacterGuild (CharacterID, GuildID) VALUES (91, 20);

-- DATA QUESTIONS
-- Who are DataQuest's players and what is their contact information? 
SELECT
	Account.AccountName
	, Account.FirstName
	, Account.LastName
	, Account.EmailAddress
	, Account.PhoneNumber
FROM Account

-- What is the average age of DataQuest's players?
SELECT
	AVG(Account.Age) AS AvgAccountAge
FROM Account

-- What are the account names, email addresses, and character names of DataQuest's free-to-play players (Tier 2 accounts)?
SELECT 
	Account.AccountName
	, Account.EmailAddress
	, Character.CharacterName
	, Account.Tier
FROM Account 
JOIN Character ON Account.AccountID = Character.AccountID
WHERE Tier = 2

-- Are there characters not subscribed to any guilds and, if so, what are their character names and IDs?
SELECT
	Character.CharacterID
	, Character.CharacterName
FROM Character
WHERE CharacterID NOT IN (SELECT CharacterID FROM CharacterGuild)

-- VIEWS
-- Contact information of DataQuest's players
CREATE VIEW AccountContactInfo AS
	SELECT
		Account.AccountName
		, Account.FirstName
		, Account.LastName
		, Account.EmailAddress
		, Account.PhoneNumber
	FROM Account
GO

SELECT * FROM AccountContactInfo

-- Account names, email addresses, and character names of DataQuest's free-to-play players (Tier 2 accounts)
CREATE VIEW AccountFreeToPlay AS
	SELECT 
		Account.AccountName
		, Account.EmailAddress
		, Character.CharacterName
		, Account.Tier
	FROM Account 
	JOIN Character ON Account.AccountID = Character.AccountID
	WHERE Tier = 2
GO

SELECT * FROM AccountFreeToPlay

-- Character names and IDs of characters not subscribed to any guilds
CREATE VIEW CharacterNoGuild AS
	SELECT
		Character.CharacterID
		, Character.CharacterName
	FROM Character
	WHERE CharacterID NOT IN (SELECT CharacterID FROM CharacterGuild)
GO

SELECT * FROM CharacterNoGuild

-- FUNCTIONS
-- Retrieve an Account ID for a given Account Name
CREATE FUNCTION AccountIDLookup(@accountName varchar(30))
RETURNS int AS
BEGIN
	DECLARE @returnValue int

	SELECT @returnValue = AccountID
	FROM Account
	WHERE AccountName = @accountName

	RETURN @returnValue
END
GO

SELECT 'The AccountID for this account is:' , dbo.AccountIDLookup('bpapaj')

-- Retrieve a Guild Description for a given Guild Name
CREATE FUNCTION GuildDescriptionLookup(@guildName varchar(50))
RETURNS varchar(200) AS
BEGIN
	DECLARE @returnValue varchar(200)

	SELECT @returnValue = Description
	FROM Guild
	WHERE GuildName = @guildName

	RETURN @returnValue
END
GO

SELECT 'The description for this guild reads:' , dbo.GuildDescriptionLookup('Goblin Gang')
DELETE FROM SongArtistBridge;
DELETE FROM SongGenreBridge;
DELETE FROM RecentlyPlayedSongs;
DELETE FROM SubscriptionInvoice;
DELETE FROM Song;
DELETE FROM Album;
DELETE FROM Customer;
DELETE FROM BankDetails;
DELETE FROM Artist;
DELETE FROM Genre;

-- Insert Albums
INSERT INTO Album (AlbumID, Name, ReleaseDate) VALUES (1, 'Echoes of Eternity', '2021-08-15');
INSERT INTO Album (AlbumID, Name, ReleaseDate) VALUES (2, 'Waves of Silence', '2019-06-20');
INSERT INTO Album (AlbumID, Name, ReleaseDate) VALUES (3, 'Midnight Melodies', '2020-11-10');
INSERT INTO Album (AlbumID, Name, ReleaseDate) VALUES (4, 'Rising Sun', '2018-03-25');
INSERT INTO Album (AlbumID, Name, ReleaseDate) VALUES (5, 'Northern Lights', '2022-01-13');
INSERT INTO Album (AlbumID, Name, ReleaseDate) VALUES (6, 'Mystic Rhythms', '2021-05-12');
INSERT INTO Album (AlbumID, Name, ReleaseDate) VALUES (7, 'Celestial Dreams', '2022-07-21');
INSERT INTO Album (AlbumID, Name, ReleaseDate) VALUES (8, 'Ocean Waves', '2023-02-18');

-- Insert Songs
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (1, 'Eternal Echo', 240, 1, '2021-08-15');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (2, 'Whispering Winds', 255, 1, '2021-08-15');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (3, 'Horizon Beyond', 230, 1, '2021-08-15');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (4, 'Mystical River', 215, 1, '2021-08-15');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (5, 'Echoes of Time', 245, 1, '2021-08-15');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (6, 'The Journey Begins', 220, 1, '2021-08-15');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (7, 'Silent Moments', 250, 1, '2021-08-15');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (8, 'Endless Road', 260, 1, '2021-08-15');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (9, 'Reflections', 235, 1, '2021-08-15');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (10, 'Final Destination', 270, 1, '2021-08-15');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (11, 'Silent Sea', 300, 2, '2019-06-20');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (12, 'Deep Blue', 320, 2, '2019-06-20');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (13, 'Waves and Whispers', 310, 2, '2019-06-20');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (14, 'Ocean Serenity', 305, 2, '2019-06-20');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (15, 'Calm Tides', 295, 2, '2019-06-20');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (16, 'Moonlit Shore', 285, 2, '2019-06-20');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (17, 'Oceanic Journey', 275, 2, '2019-06-20');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (18, 'Tranquil Waters', 265, 2, '2019-06-20');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (19, 'Hidden Depths', 280, 2, '2019-06-20');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (20, 'Mysterious Currents', 290, 2, '2019-06-20');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (21, 'Midnight Dream', 180, 3, '2020-11-10');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (22, 'Starlight Serenade', 200, 3, '2020-11-10');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (23, 'Lunar Dance', 220, 3, '2020-11-10');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (24, 'Nightfall', 210, 3, '2020-11-10');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (25, 'Cosmic Journey', 195, 3, '2020-11-10');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (26, 'Dream Weaver', 205, 3, '2020-11-10');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (27, 'Nebula', 230, 3, '2020-11-10');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (28, 'Galactic Echo', 240, 3, '2020-11-10');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (29, 'Interstellar', 250, 3, '2020-11-10');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (30, 'Final Star', 260, 3, '2020-11-10');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (31, 'Sunrise Symphony', 210, 4, '2018-03-25');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (32, 'Morning Glow', 200, 4, '2018-03-25');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (33, 'Dawn Chorus', 220, 4, '2018-03-25');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (34, 'First Light', 230, 4, '2018-03-25');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (35, 'Daybreak', 240, 4, '2018-03-25');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (36, 'Golden Rays', 250, 4, '2018-03-25');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (37, 'Aurora', 260, 4, '2018-03-25');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (38, 'Bright Horizon', 270, 4, '2018-03-25');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (39, 'Sunlit Meadows', 280, 4, '2018-03-25');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (40, 'Final Dawn', 290, 4, '2018-03-25');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (41, 'Aurora Borealis', 270, 5, '2022-01-13');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (42, 'Frozen Sky', 280, 5, '2022-01-13');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (43, 'Northern Glow', 260, 5, '2022-01-13');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (44, 'Polar Night', 250, 5, '2022-01-13');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (45, 'Frosted Peaks', 240, 5, '2022-01-13');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (46, 'Ice Crystals', 230, 5, '2022-01-13');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (47, 'Chilled Breezes', 220, 5, '2022-01-13');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (48, 'Arctic Echo', 210, 5, '2022-01-13');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (49, 'Winter Night', 200, 5, '2022-01-13');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (50, 'Final Frost', 290, 5, '2022-01-13');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (51, 'Mystic Melody', 200, 6, '2021-05-12');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (52, 'Rhythm of the Night', 215, 6, '2021-05-12');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (53, 'Secret Harmony', 225, 6, '2021-05-12');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (54, 'Echoing Dreams', 235, 6, '2021-05-12');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (55, 'Mystical Beats', 245, 6, '2021-05-12');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (56, 'Soul Rhythms', 255, 6, '2021-05-12');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (57, 'Ethereal Pulse', 265, 6, '2021-05-12');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (58, 'Spiritual Vibes', 275, 6, '2021-05-12');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (59, 'Transcendent Beats', 285, 6, '2021-05-12');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (60, 'Final Melody', 295, 6, '2021-05-12');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (61, 'Dreamscape', 310, 7, '2022-07-21');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (62, 'Ethereal Dreams', 320, 7, '2022-07-21');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (63, 'Lunar Visions', 330, 7, '2022-07-21');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (64, 'Celestial Path', 340, 7, '2022-07-21');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (65, 'Stardust', 350, 7, '2022-07-21');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (66, 'Astral Journey', 360, 7, '2022-07-21');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (67, 'Cosmic Dance', 370, 7, '2022-07-21');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (68, 'Galaxy Song', 380, 7, '2022-07-21');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (69, 'Astral Projection', 390, 7, '2022-07-21');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (70, 'Final Dream', 400, 7, '2022-07-21');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (71, 'Ocean Dream', 300, 8, '2023-02-18');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (72, 'Seaside Breeze', 280, 8, '2023-02-18');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (73, 'Underwater Symphony', 260, 8, '2023-02-18');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (74, 'Tidal Waves', 240, 8, '2023-02-18');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (75, 'Coral Reefs', 220, 8, '2023-02-18');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (76, 'Deep Ocean', 300, 8, '2023-02-18');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (77, 'Blue Lagoon', 280, 8, '2023-02-18');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (78, 'Mystic Seas', 260, 8, '2023-02-18');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (79, 'Nautical Nights', 240, 8, '2023-02-18');
INSERT INTO Song (SongID, Name, Length, AlbumID, ReleaseDate) VALUES (80, 'Final Wave', 220, 8, '2023-02-18');

-- Insert BankDetails
INSERT INTO BankDetails (CardNumber, CardHolderName, ExpirationDate, CVV) VALUES (1234567890123456, 'John Doe', '2025-12-31', 123);
INSERT INTO BankDetails (CardNumber, CardHolderName, ExpirationDate, CVV) VALUES (2345678901234567, 'Jane Smith', '2024-11-30', 456);
INSERT INTO BankDetails (CardNumber, CardHolderName, ExpirationDate, CVV) VALUES (3456789012345678, 'Alice Johnson', '2026-10-31', 789);
INSERT INTO BankDetails (CardNumber, CardHolderName, ExpirationDate, CVV) VALUES (4567890123456789, 'Bob Brown', '2023-09-30', 101);
INSERT INTO BankDetails (CardNumber, CardHolderName, ExpirationDate, CVV) VALUES (5678901234567890, 'Charlie Green', '2027-08-31', 202);

-- Insert Customers
INSERT INTO Customer (Username, BankDetailsID, Email, Password) VALUES ('johndoe', 1, 'johndoe@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');
INSERT INTO Customer (Username, BankDetailsID, Email, Password) VALUES ('janesmith', 2, 'janesmith@hotmail.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e');
INSERT INTO Customer (Username, BankDetailsID, Email, Password) VALUES ('alicejohnson', 3, 'alicejohnson@icloud.com', 'b3d17ebbe4f2b75d27b6309cfaae1487b667301a73951e7d523a039cd2dfe110');
INSERT INTO Customer (Username, BankDetailsID, Email, Password) VALUES ('bobbrown', 4, 'bobbrown@gmail.com', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f');
INSERT INTO Customer (Username, BankDetailsID, Email, Password) VALUES ('charliegreen', 5, 'charliegreen@outlook.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');

-- Insert Artists
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (1, 'Echo Smith', 'John', 'Doe');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (2, 'Mystic Melody', 'Jane', 'Smith');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (3, 'Lunar Beats', 'Emily', 'Johnson');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (4, 'Northern Light', 'Michael', 'Brown');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (5, 'Ocean Breeze', 'Chris', 'Davis');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (6, 'Galactic Sound', 'Patricia', 'Martinez');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (7, 'Sunrise Symphony', 'David', 'Garcia');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (8, 'Waves of Time', 'Jennifer', 'Rodriguez');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (9, 'Stardust Melody', 'James', 'Wilson');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (10, 'Aurora Sound', 'Linda', 'Lopez');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (11, 'Dream Weaver', 'Robert', 'Lee');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (12, 'Echoing Horizon', 'Barbara', 'Gonzalez');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (13, 'Mystic Waves', 'William', 'Hernandez');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (14, 'Northern Echo', 'Elizabeth', 'Moore');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (15, 'Celestial Beats', 'Charles', 'Martin');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (16, 'Oceanic Symphony', 'Susan', 'White');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (17, 'Galactic Vibes', 'Joseph', 'Thompson');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (18, 'Sunset Sound', 'Karen', 'Martinez');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (19, 'Aurora Dream', 'Thomas', 'Clark');
INSERT INTO Artist (ArtistID, StageName, FirstName, LastName) VALUES (20, 'Final Horizon', 'Margaret', 'Rodriguez');


-- Insert Genres
INSERT INTO Genre (GenreID, Name) VALUES (1, 'Ambient');
INSERT INTO Genre (GenreID, Name) VALUES (2, 'Classical');
INSERT INTO Genre (GenreID, Name) VALUES (3, 'Jazz');
INSERT INTO Genre (GenreID, Name) VALUES (4, 'Electronic');
INSERT INTO Genre (GenreID, Name) VALUES (5, 'Rock');

-- Insert SongArtistBridge
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (1, 1);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (1, 2);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (1, 3);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (1, 4);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (1, 5);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (2, 6);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (2, 7);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (2, 8);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (2, 9);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (2, 10);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (3, 11);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (3, 12);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (3, 13);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (3, 14);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (3, 15);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (4, 16);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (4, 17);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (4, 18);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (4, 19);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (4, 20);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (5, 21);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (5, 22);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (5, 23);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (5, 24);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (5, 25);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (6, 26);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (6, 27);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (6, 28);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (6, 29);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (6, 30);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (7, 31);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (7, 32);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (7, 33);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (7, 34);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (7, 35);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (8, 36);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (8, 37);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (8, 38);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (8, 39);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (8, 40);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (9, 41);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (9, 42);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (9, 43);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (9, 44);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (9, 45);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (10, 46);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (10, 47);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (10, 48);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (10, 49);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (10, 50);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (11, 51);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (11, 52);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (11, 53);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (11, 54);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (11, 55);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (12, 56);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (12, 57);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (12, 58);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (12, 59);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (12, 60);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (13, 61);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (13, 62);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (13, 63);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (13, 64);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (13, 65);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (14, 66);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (14, 67);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (14, 68);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (14, 69);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (14, 70);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (15, 71);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (15, 72);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (15, 73);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (15, 74);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (15, 75);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (16, 76);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (16, 77);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (16, 78);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (16, 79);
INSERT INTO SongArtistBridge (ArtistID, SongID) VALUES (16, 80);


-- Insert SongGenreBridge
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (1, 1, 1);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (2, 1, 2);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (3, 1, 3);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (4, 1, 4);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (5, 1, 5);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (6, 1, 6);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (7, 1, 7);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (8, 1, 8);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (9, 1, 9);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (10, 1, 10);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (11, 2, 11);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (12, 2, 12);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (13, 2, 13);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (14, 2, 14);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (15, 2, 15);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (16, 2, 16);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (17, 2, 17);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (18, 2, 18);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (19, 2, 19);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (20, 2, 20);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (21, 3, 21);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (22, 3, 22);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (23, 3, 23);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (24, 3, 24);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (25, 3, 25);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (26, 3, 26);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (27, 3, 27);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (28, 3, 28);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (29, 3, 29);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (30, 3, 30);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (31, 4, 31);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (32, 4, 32);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (33, 4, 33);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (34, 4, 34);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (35, 4, 35);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (36, 4, 36);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (37, 4, 37);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (38, 4, 38);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (39, 4, 39);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (40, 4, 40);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (41, 5, 41);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (42, 5, 42);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (43, 5, 43);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (44, 5, 44);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (45, 5, 45);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (46, 5, 46);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (47, 5, 47);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (48, 5, 48);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (49, 5, 49);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (50, 5, 50);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (101, 2, 1);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (102, 3, 2);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (103, 4, 3);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (104, 5, 4);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (105, 1, 5);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (106, 2, 6);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (107, 3, 7);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (108, 4, 8);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (109, 5, 9);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (110, 1, 10);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (111, 3, 11);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (112, 4, 12);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (113, 5, 13);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (114, 1, 14);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (115, 2, 15);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (116, 3, 16);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (117, 4, 17);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (118, 5, 18);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (119, 1, 19);
INSERT INTO SongGenreBridge (BridgeID, GenreID, SongID) VALUES (120, 2, 20);

-- Insert RecentlyPlayedSongs
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));
INSERT INTO RecentlyPlayedSongs (SongID, CustomerID, DateListenedTo) VALUES (abs(random()) % 79 +1, abs(random()) % 4 + 1, date(strftime('%s', '2023-01-01 00:00:00') +abs(random() % (strftime('%s', '2024-08-20 00:00:00') - strftime('%s', '2023-01-01 00:00:00'))),'unixepoch'));

-- Insert SubscriptionInvoices
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (1, 1, '2023-01-01', 48, 12);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (2, 2, '2023-01-01', 96, 24);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (3, 3, '2023-01-01', 24, 6);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (4, 4, '2023-01-01', 12, 3);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (5, 5, '2023-01-01', 4, 1);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (1, 1, '2024-01-01', 48, 12);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (3, 3, '2023-07-01', 24, 6);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (3, 3, '2024-01-01', 24, 6);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (3, 3, '2024-07-01', 24, 6);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (4, 4, '2023-04-01', 36, 9);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (4, 4, '2024-01-01', 36, 9);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (5, 5, '2023-02-01', 4, 1);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (5, 5, '2023-03-01', 4, 1);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (5, 5, '2023-04-01', 4, 1);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (5, 5, '2023-05-01', 12, 3);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (5, 5, '2023-08-01', 12, 3);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (5, 5, '2023-11-01', 12, 3);
INSERT INTO SubscriptionInvoice (BankDetailsID, CustomerID, SaleDate, AmountCharged, SubscriptionLengthBought) 
VALUES (5, 5, '2024-02-01', 48, 12);
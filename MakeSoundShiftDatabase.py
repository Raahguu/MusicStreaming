import sqlite3

#connects to the existing database, or 
# if said database does not exist, creates a new one
conn = sqlite3.connect("SoundShift.db")
cursor = conn.cursor()

cursor.executescript('''
    DROP TABLE IF EXISTS SongArtistBridge;
    DROP TABLE IF EXISTS SongGenreBridge;
    DROP TABLE IF EXISTS RecentlyPlayedSongs;
    DROP TABLE IF EXISTS SubscriptionInvoice;
    DROP TABLE IF EXISTS Song;
    DROP TABLE IF EXISTS Album;
    DROP TABLE IF EXISTS Customer;
    DROP TABLE IF EXISTS BankDetails;
    DROP TABLE IF EXISTS Artist;
    DROP TABLE IF EXISTS Genre;
    DROP TABLE IF EXISTS SubscriptionPrices;
''')

cursor.execute('''
CREATE TABLE Album (
    AlbumID INTEGER PRIMARY KEY UNIQUE NOT NULL UNIQUE,
    Name TEXT NOT NULL,
    ReleaseDate TEXT,
    CONSTRAINT Name CHECK (LENGTH(Name) <= 50)
)''')

cursor.execute('''
CREATE TABLE Song (
    SongID INTEGER PRIMARY KEY UNIQUE NOT NULL UNIQUE,
    Name TEXT NOT NULL,
    Length INT,
    AlbumID INTEGER,
    ReleaseDate TEXT,
    FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID),
    CONSTRAINT Length CHECK (Length > 0),
    CONSTRAINT Name CHECK (LENGTH(Name) <= 50)
)
''')

cursor.execute('''
CREATE TABLE BankDetails (
    BankDetailsID INTEGER PRIMARY KEY UNIQUE NOT NULL,
    CardNumber INTEGER NOT NULL CHECK (LENGTH(CardNumber) <= 19 AND LENGTH(CardNumber) >= 8), 
    CardHolderName TEXT NOT NULL CHECK (LENGTH(CardHolderName) <= 50), 
    ExpirationDate TEXT NOT NULL, 
    CVV INTEGER NOT NULL CHECK (LENGTH(CVV) <= 4 AND LENGTH(CVV) >= 3)
)
''')

cursor.execute('''
CREATE TABLE Customer (
    CustomerID INTEGER PRIMARY KEY UNIQUE NOT NULL,
    Username TEXT NOT NULL UNIQUE CHECK (LENGTH(UserName) <= 20),
    BankDetailsID INTEGER,
    Email Text NOT NULL CHECK (Email LIKE '%@%'),
    Password TEXT NOT NULL CHECK (LENGTH(Password) = 64),
    SignedUp INTEGER NOT NULL CHECK (SignedUp >= 0 AND SignedUp <= 1),
    CONSTRAINT BankDetailsID FOREIGN KEY (BankDetailsID) REFERENCES BankDetails(BankDetailsID)
)''')

cursor.execute('''
CREATE TABLE RecentlyPlayedSongs (
    BridgeID INTEGER PRIMARY KEY UNIQUE NOT NULL,
    SongID INTEGER,
    CustomerID INTEGER,
    DateListenedTo TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (SongID) REFERENCES Song(SongID)
)''')

cursor.execute('''
CREATE TABLE Artist (
    ArtistID INTEGER PRIMARY KEY UNIQUE NOT NULL,
    StageName TEXT NOT NULL CHECK (LENGTH(StageName) <= 50),
    FirstName TEXT CHECK (LENGTH(FirstName) <= 50),
    LastName TEXT CHECK (LENGTH(LastName) <= 50)
)''')

cursor.execute('''
CREATE TABLE Genre (
    GenreID INTEGER PRIMARY KEY UNIQUE NOT NULL,
    Name TEXT NOT NULL CHECK (LENGTH(Name) <= 50)
)''')

cursor.execute('''
CREATE TABLE SongArtistBridge (
    BridgeID INTEGER PRIMARY KEY UNIQUE NOT NULL,
    ArtistID INTEGER,
    SongID INTEGER,
    CONSTRAINT SongID FOREIGN KEY (SongID) REFERENCES Song(SongID),
    CONSTRAINT ArtistID FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
)''')

cursor.execute('''
CREATE TABLE SubscriptionInvoice (
    InvoiceID INTEGER PRIMARY KEY UNIQUE NOT NULL,
    BankDetailsID INTEGER,
    CustomerID INTEGER,
    SaleDate TEXT NOT NULL,
    SubscriptionLengthBought INTEGER NOT NULL CHECK (SubscriptionLengthBought > 0),
    CONSTRAINT CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    CONSTRAINT BankDetailsID FOREIGN KEY (BankDetailsID) REFERENCES BankDetails(BankDetailsID)
)''')

cursor.execute('''
CREATE TABLE SongGenreBridge (
    BridgeID INTEGER PRIMARY KEY UNIQUE NOT NULL,
    GenreID INTEGER,
    SongID INTEGER,
    CONSTRAINT SongID FOREIGN KEY (SongID) REFERENCES Song(SongID),
    CONSTRAINT GenreID FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
)''')

cursor.execute('''
CREATE TABLE SubscriptionPrices (
    PriceID INTEGER PRIMARY KEY UNIQUE NOT NULL,
    DateSet TEXT NOT NULL,
    DateEnd TEXT NOT NULL,
    Price NUMBER NOT NULL CHECK(Price >= 0)
)''')

conn.commit()
cursor.close()
conn.close()

import PopulateSoundShiftDatabaseWithData as populate

populate.main()
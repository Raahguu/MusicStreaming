import sqlite3

conn = sqlite3.connect("SoundShift.db")
cursor = conn.cursor()

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
    BankDetailsID INTEGER PRIMARY KEY UNIQUE NOT NULL UNIQUE,
    CardNumber INTEGER NOT NULL CHECK (LENGTH(CardNumber) <= 19), 
    CardHolderName TEXT NOT NULL CHECK (LENGTH(CardHolderName) <= 50), 
    ExpirationDate TEXT NOT NULL, 
    CVV INTEGER NOT NULL CHECK (LENGTH(CVV) <= 4)
)
''')

cursor.execute('''
CREATE TABLE Customer (
    CustomerID INTEGER PRIMARY KEY UNIQUE NOT NULL,
    Username TEXT NOT NULL CHECK (LENGTH(UserName) <= 20),
    BankDetailsID INTEGER,
    Email Text NOT NULL CHECK (Email LIKE '%@%'),
    Password TEXT NOT NULL CHECK (LENGTH(Password) = 64),
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
    AmountCharged NUMBER NOT NULL CHECK (AmountCharged > 0 AND ROUND(AmountCharged, 2) = AmountCharged),
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

conn.commit()
cursor.close()
conn.close()
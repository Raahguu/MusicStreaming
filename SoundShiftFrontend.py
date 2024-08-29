#!/usr/bin/env python3
import sqlite3
import os
from hashlib import sha256
import sys
import pandas as pd
import datetime
import time

global conn
global cursor

class Customer:
    CustomerID : int = -1
    Username : str
    Email : str
    SignedUp : bool

def Title(pageTitle : str):
    os.system("cls")
    print("\033[37m" + pageTitle + "\033[0m")
    print("-" * 100)

def ErrorDisplay(errorMessage):
    print("\033[1;31mError: ")
    print(errorMessage)
    print("\033[37mPress any key to quit the program\033[0m")
    os.system("pause > nul")
    sys.exit()

def closeProgram():
    conn.commit()
    cursor.close()
    conn.close()
    sys.exit()

def AscendingOrDescending(title: str):
    while True:
        Title(title)
        print("How would you like to sort it: ")
        print("(A)scending ")
        print("(D)escending")
        inp = input().lower().strip()
        match inp:
            case "a": 
                return "ASC"
            case "d": 
                return"DESC"
            case _:
                print("I'm sorry, I didn't recognise that command, please try again")
                print("Press any key to try again")
                os.system("pause > nul")

def LogIn():
    while True:
        Title("Login")
        print("Welcome")
        print("Please login")
        username = input("Username: ")
        password = sha256(input("Password: ").encode('utf-8')).hexdigest()
        cursor.execute('''
            SELECT CustomerID FROM Customer
            WHERE Username = ? AND Password = ?
        ''', [username, password])
        answer = cursor.fetchall()
        if(answer == []):
            print("Incorrect Username or Password")
            print("Press any key to attempt to login again")
            os.system("pause > nul")
        else:
            return answer[0][0]

def GetCustomerDetails():
    if (customer.CustomerID < 0 or type(customer.CustomerID) is not int):
        ErrorDisplay("The Customer has not logged in yet, and so their customer details cannot be found")
    cursor.execute('''
        SELECT Username, Email, SignedUp FROM Customer
        WHERE CustomerID = ?
    ''', [customer.CustomerID])
    answer = cursor.fetchall()
    customer.Username = answer[0][0]
    customer.Email = answer[0][1]
    customer.SignedUp = bool(int(answer[0][2]))

def DisplayQueries(query : str):
    columnData = cursor.execute(query)
    columns = [column[0] for column in columnData.description] #get all the coloumn names

    answer = cursor.fetchall()

    data = {} #get the data in the correct format for pandas
    for c in columns:
        data[c] = []
    for i in answer:
        for j in range(len(i)):
            data[str(columns[j])] += [i[j]]
    
    df = pd.DataFrame(data)
    df.index += 1 # start the row indexs at '1'
    pd.set_option('display.max_rows', None) # make sure all rows are showed
    pd.set_option('display.max_columns', None) # display all columns
    pd.set_option('display.max_colwidth', None) # allow all columns to  be any width
    pd.set_option('display.width', 1000) # make the whole table be displayed, and not cut off width wise
    df.fillna("",inplace=True) #display Nones with blank spaces
    print(df)
    
    #wait until  the say okay
    print("\n\033[1mPress \'Enter\' to close the table\033[0m")
    input()
    
def BrowseSongs():
    sortTerm = ""
    #get how the user wants their songs sorted
    while True:
        Title("Songs")
        print("What would you like to sort the songs based on: ")
        print("(T)itle")
        print("(A)rtist")
        print("(G)enre")
        print("(L)P/Album")
        print("(D)ate Released")
        print("(W)hen you last listened to it")
        print("(H)ow long the song is")
        print("(B)ack to genral browsing")
        inp = input().lower().strip()
        match inp: # if the letter is one of the recognised few, then just move on, otherwise, continue asking how to sort it
            case "a": 
                sortTerm = "Artist.StageName"
                break
            case "g": 
                sortTerm = "Genre.Name"
                break
            case "l": 
                sortTerm = "Album.Name"
                break
            case "t": 
                sortTerm = "Song.Name"
                break
            case "w": 
                sortTerm = "RecentlyPlayedSongs.DateListenedTo"
                break
            case "h":
                sortTerm = "Song.Length"
                break
            case "b": return
            case _:
                print("I'm sorry, I didn't recognise that command, please try again")
                print("Press any key to try again")
                os.system("pause > nul")
    
    #Sorted Ascending or Descending
    AscOrDesc = AscendingOrDescending("Songs")
    
    Title("Songs")
    query = '''
                SELECT Song.Name AS Title, GROUP_CONCAT(DISTINCT Artist.StageName) AS Artist, 
				Album.Name AS Album, GROUP_CONCAT(DISTINCT Genre.Name) AS Genre, 
				strftime('%M:%S', time(Song.Length, 'unixepoch')) AS Length, Song.ReleaseDate AS "Release Date", 
                MAX(RecentlyPlayedSongs.DateListenedTo) AS "Last Listened To" FROM Song
                INNER JOIN Album ON Album.AlbumID = Song.AlbumID
                INNER JOIN SongArtistBridge ON SongArtistBridge.SongID = Song.SongID
                INNER JOIN Artist ON Artist.ArtistID = SongArtistBridge.ArtistID
                INNER JOIN SongGenreBridge ON Song.SongID = SongGenreBridge.SongID
                INNER JOIN Genre ON Genre.GenreID = SongGenreBridge.GenreID
                LEFT JOIN RecentlyPlayedSongs ON (RecentlyPlayedSongs.SongID = Song.SongID AND RecentlyPlayedSongs.CustomerID = ''' + \
                str(customer.CustomerID) +''')
				GROUP BY Song.Name
                ORDER BY ''' + sortTerm + ''' ''' + AscOrDesc

    DisplayQueries(query)

def BrowseArtists():
    sortTerm = ""
    #get how the user wants their artists sorted
    while True:
        Title("Artists")
        print("What would you like to sort the artists based off: ")
        print("(N)ame")
        print("(S)ong Number")
        print("(A)lbum Number")
        print("(W)hen you last listened to them")
        print("(H)ow long their total song time is")
        print("(B)ack to genral browsing")
        inp = input().lower().strip()
        match inp: # if the letter is one of the recognised few, then just move on, otherwise, continue asking how to sort it
            case "n": 
                sortTerm = "Artist.StageName"
                break
            case "s": 
                sortTerm = "COUNT(Song.SongID)"
                break
            case "a": 
                sortTerm = "COUNT(Album.AlbumID)"
                break
            case "w": 
                sortTerm = "MAX(RecentlyPlayedSongs.DateListenedTo)"
                break
            case "h":
                sortTerm = "SUM(Song.Length)"
                break
            case "b": return
            case _:
                print("I'm sorry, I didn't recognise that command, please try again")
                print("Press any key to try again")
                os.system("pause > nul")
    
    #Sorted Ascending or Descending
    AscOrDesc = AscendingOrDescending("Artists")
    
    Title("Artists")
    query = '''
                SELECT Artist.StageName AS "Stage Name", Artist.FirstName || ' ' || Artist.LastName AS "Actual Name",
                COUNT(DISTINCT Album.AlbumID) AS "Total Albums", 
				COUNT(DISTINCT Song.SongID) AS "Total Songs",
				SUM(Genre.Name) AS "Total Genres",
                strftime('%M:%S', time(SUM(Song.Length), 'unixepoch')) AS "Total Song Length",
                MAX(RecentlyPlayedSongs.DateListenedTo) AS "Last Listened To" FROM Song
                INNER JOIN Album ON Album.AlbumID = Song.AlbumID
                INNER JOIN SongArtistBridge ON SongArtistBridge.SongID = Song.SongID
                INNER JOIN Artist ON Artist.ArtistID = SongArtistBridge.ArtistID
                INNER JOIN SongGenreBridge ON Song.SongID = SongGenreBridge.SongID
                INNER JOIN Genre ON Genre.GenreID = SongGenreBridge.GenreID
                LEFT JOIN RecentlyPlayedSongs ON (RecentlyPlayedSongs.SongID = Song.SongID AND RecentlyPlayedSongs.CustomerID = ''' + \
                str(customer.CustomerID) +''')
                GROUP BY Artist.StageName
                ORDER BY ''' + sortTerm + ''' ''' + AscOrDesc

    DisplayQueries(query)

def BrowseAlbums():
    sortTerm = ""
    #get how the user wants their Albums sorted
    while True:
        Title("LPs/Albums")
        print("What would you like to sort the albums based on: ")
        print("(N)ame")
        print("(S)ong Number")
        print("(L)ength")
        print("(W)hen you last listened to them")
        print("(G)enres")
        print("(B)ack to genral browsing")
        inp = input().lower().strip()
        match inp: # if the letter is one of the recognised few, then just move on, otherwise, continue asking how to sort it
            case "n": 
                sortTerm = "Album.Name"
                break
            case "s": 
                sortTerm = "COUNT(Song.SongID)"
                break
            case "w": 
                sortTerm = "MAX(RecentlyPlayedSongs.DateListenedTo)"
                break
            case "l":
                sortTerm = "SUM(Song.Length)"
                break
            case "g":
                sortTerm = "Genre.Name"
                break
            case "b": return
            case _:
                print("I'm sorry, I didn't recognise that command, please try again")
                print("Press any key to try again")
                os.system("pause > nul")
    
    #Sorted Ascending or Descending
    AscOrDesc = AscendingOrDescending("LPs/Albums")
        
    
    Title("LPs/Albums")
    query = '''
                SELECT Album.Name AS Album, COUNT(DISTINCT Song.SongID) AS "Number of Songs",
				GROUP_CONCAT(DISTINCT Genre.Name) AS "Genres",
                strftime('%H:%M:%S', time(SUM(Song.Length), 'unixepoch')) AS "Total Length",
                MAX(RecentlyPlayedSongs.DateListenedTo) AS "Last Time Listened To" FROM Song
                INNER JOIN Album ON Album.AlbumID = Song.AlbumID
                INNER JOIN SongArtistBridge ON SongArtistBridge.SongID = Song.SongID
                INNER JOIN Artist ON Artist.ArtistID = SongArtistBridge.ArtistID
                INNER JOIN SongGenreBridge ON Song.SongID = SongGenreBridge.SongID
                INNER JOIN Genre ON Genre.GenreID = SongGenreBridge.GenreID
                LEFT JOIN RecentlyPlayedSongs ON (RecentlyPlayedSongs.SongID = Song.SongID AND RecentlyPlayedSongs.CustomerID = ''' + \
                str(customer.CustomerID) +''')
                GROUP BY Album.AlbumID
                ORDER BY ''' + sortTerm + ''' ''' + AscOrDesc

    DisplayQueries(query)

def BrowseGenres():
    sortTerm = ""
    #get how the user wants their Albums sorted
    while True:
        Title("Genres")
        print("What would you like to sort the genres based on: ")
        print("(N)ame")
        print("(S)ong Count")
        print("(T)otal Length")
        print("(W)hen you last listened to them")
        print("(L)P/Album count")
        print("(B)ack to genral browsing")
        inp = input().lower().strip()
        match inp: # if the letter is one of the recognised few, then just move on, otherwise, continue asking how to sort it
            case "n": 
                sortTerm = "Genre.Name"
                break
            case "s": 
                sortTerm = "COUNT(Song.SongID)"
                break
            case "w": 
                sortTerm = "MAX(RecentlyPlayedSongs.DateListenedTo)"
                break
            case "t":
                sortTerm = "SUM(Song.Length)"
                break
            case "l":
                sortTerm = "COUNT(Album.AlbumID)"
                break
            case "b": return
            case _:
                print("I'm sorry, I didn't recognise that command, please try again")
                print("Press any key to try again")
                os.system("pause > nul")
    
    #Sorted Ascending or Descending
    AscOrDesc = AscendingOrDescending("Genres")
    
    Title("Genres")
    query = '''
                SELECT Genre.Name AS Genre, COUNT(DISTINCT Song.SongID) AS "Song Count",
				COUNT(DISTINCT Album.AlbumID) AS "Album Count",
                strftime('%H:%M:%S', time(SUM(Song.Length), 'unixepoch')) AS "Total Length",
                MAX(RecentlyPlayedSongs.DateListenedTo) AS "Last Time Listened To" FROM Song
                INNER JOIN Album ON Album.AlbumID = Song.AlbumID
                INNER JOIN SongArtistBridge ON SongArtistBridge.SongID = Song.SongID
                INNER JOIN Artist ON Artist.ArtistID = SongArtistBridge.ArtistID
                INNER JOIN SongGenreBridge ON Song.SongID = SongGenreBridge.SongID
                INNER JOIN Genre ON Genre.GenreID = SongGenreBridge.GenreID
                LEFT JOIN RecentlyPlayedSongs ON (RecentlyPlayedSongs.SongID = Song.SongID AND RecentlyPlayedSongs.CustomerID = ''' + \
                str(customer.CustomerID) +''')
                GROUP BY Genre.GenreID
                ORDER BY ''' + sortTerm + ''' ''' + AscOrDesc

    DisplayQueries(query)

def Browse():
    while True:
        Title("Browse")
        print("What Would you like to browse: ")
        print("(S)ongs")
        print("(A)rtists")
        print("(G)enres")
        print("(L)Ps/Albums")
        print("(B)ack to main menu")
        inp = input().lower().strip()
        match inp:
            case "s": BrowseSongs()
            case "a": BrowseArtists()
            case "g": BrowseGenres()
            case "l": BrowseAlbums()
            case "b": return
            case _:
                print("I'm sorry, I didn't recognise that command, please try again")
                print("Press any key to try again")
                os.system("pause > nul")

def UserData(customer : Customer):
    while True:
        while True:
            Title("User Data")
            GetCustomerDetails()
            print("Username: " + customer.Username)
            print("Email: " + customer.Email)
            print("Subscribed to SoundShift: " + str(customer.SignedUp))
            print()
            print("What would you like to do: ")
            print("(E)dit data")
            print("(D)elete Account")
            print("(B)ack to Account Data")
            inp = input().lower().strip()
            match inp:
                case "e": break
                case "d":
                    print("Please input the words 'Delete Account' to delete your account")
                    inp = input()
                    if(inp != 'Delete Account'): continue
                    #just set the password to a value no one knows the hash of, 
                    # so no one can ever sign in as them, so no delete anomolies occur
                    cursor.execute('''UPDATE Customer SET Password = 
                                   "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" 
                                   WHERE CustomerID = ?''', [customer.CustomerID])
                    cursor.execute('''UPDATE Customer SET SignedUp = 0 WHERE CustomerID = ?''', [customer.CustomerID])
                    
                    customer = Customer
                    print("Account Deleted")
                    print("Press any key to close the progam")
                    os.system("pause > nul")
                    closeProgram()
                case "b": return
                case _:
                    print("I'm sorry, I didn't recognise that command, please try again")
                    print("Press any key to try again")
                    os.system("pause > nul")
        
        while True:
            Title("User Data")
            print("Edit\n")
            #get new username
            newUsername = input("          {}\rUsername: ".format(customer.Username)) #carriage return so they can edit existing username
            newUsername += customer.Username[len(newUsername):]
            newUsername = newUsername.strip()
            try:
                if('\"' in newUsername or "\'" in newUsername or " " in newUsername):
                    print("Usernames cannot contain a \", \', or a space ")
                    print("Press any key to try again")
                    os.system("pause > null")
                    continue
                if("" == newUsername):
                    print("Username cannot be null")
                    print("Press any key to try again")
                    os.system("pause > null")
                    continue
                cursor.execute("UPDATE Customer SET Username = ? WHERE CustomerID = ?", [newUsername, customer.CustomerID])
                break
            except:
                print("That username has already been taken")
                print("Press any key to try again")
                os.system("pause > null")
            
        
        while True:
            Title("User Data")
            print("Edit\n")
            #get new email
            newEmail = input("       {}\rEmail: ".format(customer.Email)) #carriage return so they can edit existing email
            newEmail += customer.Email[len(newEmail):]
            newEmail = newEmail.strip()
            try:
                if ('@' not in newEmail or '\"' in newEmail or "\'" in newEmail or " " in newEmail): raise TypeError
                if("@" == newEmail):
                    print("Emails cannot be null")
                    print("Press any key to try again")
                    os.system("pause > null")
                    continue
                cursor.execute("UPDATE Customer SET Email = ? WHERE CustomerID = ?", [newEmail, customer.CustomerID])
                break
            except:
                print("An email needs a '@' to be accepted")
                print("An email also cannot contain any spaces, \', or \"")
                print("Press any key to try again")
                os.system("pause > null")

        #do they want to continue the subscription
        while True:
            Title("User Data")
            print("Edit\n")
            print("Do you want to continue your subscription to SoundShift")
            print("(Saying No, will stop an autorenewal of your subscription): ")
            inp = input("(Y)es or (N)o: ").lower().strip()
            if (inp == "y"):
                cursor.execute("UPDATE Customer SET SignedUp = ? WHERE CustomerID = ?", [True, customer.CustomerID])
                break 
            elif (inp =="n"):
                cursor.execute("UPDATE Customer SET SignedUp = ? WHERE CustomerID = ?", [False, customer.CustomerID])
                break

            print("I'm sorry, I didn't recognise that command, please try again")
            print("Press any key to try again")
            os.system("pause > nul")
        
        #change password
        while True:
            inp = input("Do you want to change your password (Y/N): ").lower().strip()
            if (inp == "n"): break
            if (inp != "y"): 
                print("I'm sorry, I didn't recognise that command, please try again")
                print("Press any key to try again")
                os.system("pause > nul")
                continue
            while True:
                newPassword = input("What do you want to change it to: ")
                secondInput = input("Input the password a second time: ")
                if (newPassword != secondInput):
                    print("The two passwords were different")
                    print("Press any key to try again")
                    os.system("pause > nul")
                    continue
                if (len(newPassword) < 3):
                    print("The password must have a length of at least 3")
                    print("Press any key to try again")
                    os.system("pause > nul")
                    continue
                hashedPassword = sha256(newPassword.encode('utf-8')).hexdigest()
                cursor.execute("UPDATE Customer SET Password = ? WHERE CustomerID = ?", [hashedPassword, customer.CustomerID])
                break
            break
        
        conn.commit()
        GetCustomerDetails()

def BankingData(customer : Customer):
    while True:
        Title("Banking Data")
        try:
            cursor.execute('''
                        SELECT BankDetails.CardNumber, BankDetails.CardHolderName, 
                        BankDetails.ExpirationDate, BankDetails.CVV FROM BankDetails
                        INNER JOIN Customer ON BankDetails.BankDetailsID = Customer.BankDetailsID
                        WHERE Customer.CustomerID = ?
                        ''', [customer.CustomerID])
            bankingDetails = cursor.fetchall()[0]
            print("Card Number: " + str(bankingDetails[0]))
            print("Card Holder Name: " + bankingDetails[1])
            print("Card Expiration Date: " + bankingDetails[2])
            print("CVV: " + str(bankingDetails[3]))
            print()
            print("What would you like to do: ")
            print("(N)ew Bank Account")
            print("(D)elete Data")
            print("(B)ack to Account Data")
            inp = input().lower().strip()
            match inp:
                case "d":
                    #just set the foreign key to go to a new BankDetails record, so no delete anomolies occur
                    cursor.execute("UPDATE Customer SET BankDetailsID = NULL WHERE CustomerID = ?", [customer.CustomerID])
                    conn.commit()
                    return
                case "n":
                    break
                case "b": return
                case _:
                    print("I'm sorry, I didn't recognise that command, please try again")
                    print("Press any key to try again")
                    os.system("pause > nul")
        except:
            print("You account isn't linked to a bank account")
            while True:
                inp = input("Do you want to link a new bank account (Y/N): ").lower().strip()
                if (inp == "n"):
                    print("Click a key to go back to Account Data")
                    os.system("pause > nul")
                    return
                elif(inp != "y"):
                    print("I'm sorry, I didn't recognise that command, please try again")
                    print("Press any key to try again")
                    os.system("pause > nul")
                break
            break
    
    bankingDetails = []
    while True:
        Title("Banking Data")
        print("New Bank Card")
        inp = input("Card Number: ")
        if (len(inp) < 8 or len(inp) > 19): 
            print("Card number must be between 8-19 digits")
            print("Press any key to try again")
            os.system("pause > nul")
            continue
        try: 
            bankingDetails.append(int(inp))
            break
        except: 
            print("Card Number must be an integer with no spaces, or special symbols")
            print("Press any key to try again")
            os.system("pause > nul")
            continue
    
    while True:
        Title("Banking Data")
        print("New Bank Card")
        inp = input("Card Holder Name: ")
        if (len(inp) > 50): 
            print("The card holder name must be less than 50 characters")
            print("Press any key to try again")
            os.system("pause > nul")
            continue
        if('\"' in inp or "\'" in inp):
                    print("Card Holder Names cannot contain a \", or a \'")
                    print("Press any key to try again")
                    os.system("pause > null")
                    continue
        if ("" == inp):
            print("Card Holder Names cannot be null")
            print("Press any key to try again")
            os.system("pause > null")
            continue
        bankingDetails.append(inp)
        break
    
    while True:
        Title("Banking Data")
        print("New Bank Card")
        try:
            month = int(input("Card Expiration Date Month (as a number): "))
        except:
            print("The month must be inputted as an integer")
            print("Press any key to try again")
            os.system("pause > nul")
            continue
        if (month > 12 or month < 1): 
            print("The month must be between 1 and 12 inclusive")
            print("Press any key to try again")
            os.system("pause > nul")
            continue
        try:
            year = int(input("Card Expiration Date Year: "))
        except:
            print("The year must be inputted as an integer")
            print("Press any key to try again")
            os.system("pause > nul")
            continue
        date = "01/" + str(month) + "/" + str(year)      
        #check the date has not already passed, or it is not before 1970, as unix timestamps before 1970 cannot be found, also cannot be over 3000, as that throws another error
        if ((year <= 1970) or (year >= 3000) or (time.mktime(datetime.datetime.strptime(date,"%d/%m/%Y").timetuple()) < datetime.datetime.timestamp(datetime.datetime.now()))): 
            print("This date has already passed")
            print("Press any key to try again")
            os.system("pause > nul")
            continue
        bankingDetails.append(date)
        break
    
    while True:
        Title("Banking Data")
        print("New Bank Card")
        try:
            inp = int(input("CVV: "))
        except:
            print("The CVV must be an integer")
            print("Press any key to try again")
            os.system("pause > nul")
            continue
        if (len(str(inp)) > 4 or len(str(inp)) < 3):
            print("The CVV is to be between 3 and 4 digits inclusive")
            print("Press any key to try again")
            os.system("pause > nul")
            continue
        bankingDetails.append(inp)
        break

    #add new record
    cursor.execute('''INSERT INTO BankDetails (CardNumber, CardHolderName, ExpirationDate, CVV)
                        VALUES (?, ?, ?, ?)''', bankingDetails)
    #get ID of said record
    cursor.execute("SELECT COUNT(BankDetailsID) FROM BankDetails")
    id = cursor.fetchall()[0][0]
    #connect user to new record
    cursor.execute("UPDATE Customer SET BankDetailsID = ? WHERE CustomerID = ?", [id, customer.CustomerID])
    conn.commit()
    return

def Invoices(customer : Customer):
    Title("Invoices")
    query = '''
        SELECT BankDetails.CardNumber AS "Card Number", 
        Customer.Email AS "Email", SubscriptionInvoice.SaleDate AS "Purchase Date", 
        SubscriptionInvoice.SubscriptionLengthBought AS "Months of Subscription Bought",
        printf("$%.2f", SubscriptionInvoice.SubscriptionLengthBought * 4) AS "Price" FROM SubscriptionInvoice
        LEFT JOIN BankDetails ON SubscriptionInvoice.BankDetailsID = BankDetails.BankDetailsID
        LEFT JOIN Customer ON SubscriptionInvoice.CustomerID = Customer.CustomerID
        WHERE SubscriptionInvoice.CustomerID = ''' + str(customer.CustomerID) + '''
        ORDER BY SubscriptionInvoice.SaleDate DESC'''
    DisplayQueries(query)

def DeleteListeningHistory(customer : Customer):
    Title("Deleting Listening History")
    query = "DELETE FROM RecentlyPlayedSongs WHERE CustomerID = " + str(customer.CustomerID)
    try:
        print("Deleting Data")
        print("...")
        cursor.execute(query)
        conn.commit()
        print("Data Fully Deleted")
    except:
        print("I'm sorry, something went wrong")
        print("We couldn't delete your data")

    print("Press any key to go back to Account Data")
    os.system("pause > nul")


def AccountData():
    while True:
        Title("Account Data")
        print("Which account data do you want to look at: ")
        print("(U)ser Data")
        print("(B)anking Data")
        print("(I)nvoices")
        print("(D)elete Listening History")
        print("(R)eturn back to the Main Menu")
        inp = input().lower().strip()
        match inp:
            case "u": UserData(customer)
            case "b": BankingData(customer)
            case "i": Invoices(customer)
            case "d": DeleteListeningHistory(customer)
            case "r": return
            case _:
                    print("I'm sorry, I didn't recognise that command, please try again")
                    print("Press any key to try again")
                    os.system("pause > nul")

def main():
    global customer
    customer = Customer
    while True:
        if (customer.CustomerID < 0):
            customer.CustomerID = LogIn()
            GetCustomerDetails()
        Title("Main Menu")
        print("You are signed in as", customer.Username)
        print("What do you want to do: ")
        print("(B)rowse")
        print("(A)ccount Data")
        print("(L)og Out")
        print("(Q)uit")
        inp = input().lower().strip()
        match inp:
            case "b": Browse()
            case "a": AccountData()
            case "l": customer.CustomerID = -1
            case "q": closeProgram()
            case _: 
                print("I'm sorry, I didn't recognise that command, please try again")
                print("Press any key to try again")
                os.system("pause > nul")

if (__name__ == "__main__"):
    os.system("title SoundShift")
    try:
        conn = sqlite3.connect("file:SoundShift.db?mode=rw", uri = True)
    except:
        ErrorDisplay("The SoundShift database cannot be accessed.")
    cursor = conn.cursor()
    main()
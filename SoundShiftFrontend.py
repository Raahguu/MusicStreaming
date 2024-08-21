#!/usr/bin/env python3
import sqlite3
import os
from hashlib import sha256
import sys


global conn
global cursor
global CustomerID

CustomerID = None
LoggedIn = False

def Title():
    os.system("cls")
    print("SoundShift")
    print("-" * 50)

def ErrorDisplay(errorMessage):
    print("\033[1;31mError: ")
    print(errorMessage)
    print("\033[37mPress any key to quit the program")
    os.system("pause > nul")
    sys.exit()

def LogIn():
    Title()
    print("Welcome")
    print("Please login")
    username = input("Username: ")
    password = sha256(input("Password: ").encode('utf-8')).hexdigest()
    cursor.execute('''
        SELECT CustomerID FROM Customer
        WHERE Username = ? AND Password = ?
    ''', (username, password))
    CustomerID = cursor.fetchall()
    if(CustomerID == []):
        print("Incorrect Username or Password")
        print("Press any key to attempt to login again")
        os.system("pause > nul")
        LogIn()

def main():
    while True:
        Title()
        if (LoggedIn == False):
            LogIn()
        ErrorDisplay("I haven't made anything after this point")
        break

if (__name__ == "__main__"):
    os.system("title SoundShift")
    try:
        conn = sqlite3.connect("SoundShift.db")
    except:
        ErrorDisplay("The SoundShift database cannot be accessed.")
    cursor = conn.cursor()
    main()
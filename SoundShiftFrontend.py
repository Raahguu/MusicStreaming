#!/usr/bin/env python3
import sqlite3
import os
from hashlib import sha256
import sys


global conn
global cursor

class Customer:
    CustomerID : int = -1
    Username : str
    Email : str

def Title(pageTitle : str):
    os.system("cls")
    print("\033[37m]" + pageTitle + "\033[0m]")
    print("-" * 50)

def ErrorDisplay(errorMessage):
    print("\033[1;31mError: ")
    print(errorMessage)
    print("\033[37mPress any key to quit the program\033[0m")
    os.system("pause > nul")
    sys.exit()

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

def GetCustomerDetails(customer : Customer):
    if (customer.CustomerID < 0 or type(customer.CustomerID) is not int):
        ErrorDisplay("The Customer has not logged in yet, and so their customer details cannot be found")
    cursor.execute('''
        SELECT Username, Email FROM Customer
        WHERE CustomerID = ?
    ''', [customer.CustomerID])
    answer = cursor.fetchall()
    customer.Username = answer[0][0]
    customer.Email = answer[0][1]
    return customer

def BrowseSongs():
    sortTerm = ""
    AscOrDesc = ""
    while True:
        Title("Songs")
        print("How would you like to sort the songs based on: ")
        print("(A)rtist")
        print("(G)enre")
        print("(L)P/Album")
        print("(D)ate Released")
        print("(T)itle")
        print("(W)hen you last listened to it")
        print("(B)ack to genral browsing")
        inp = input().lower()
        match inp:
            case "a": pass
            case "g": pass
            case "l": pass
            case "t": pass
            case "w": pass
            case "b": return
            case _:
                print("I'm sorry, I didn't recognise that command, please try again")
                print("Press any key to try again")
                os.system("pause > nul")

def Browse():
    while True:
        Title("Browse")
        print("What Would you like to browse: ")
        print("(S)ongs")
        print("(A)rtists")
        print("(G)enres")
        print("(L)Ps/Albums")
        print("(R)ecently Playes Songs")
        print("(B)ack to main menu")
        inp = input().lower()
        match inp:
            case "s": BrowseSongs()
            case "a": pass
            case "g": pass
            case "l": pass
            case "r": pass
            case "b": return
            case _:
                print("I'm sorry, I didn't recognise that command, please try again")
                print("Press any key to try again")
                os.system("pause > nul")

def main():
    customer = Customer
    while True:
        if (customer.CustomerID < 0):
            customer.CustomerID = LogIn()
            customer = GetCustomerDetails(customer)
        Title("Main Menu")
        print("You are signed in as", customer.Username)
        print("What do you want to do: ")
        print("(B)rowse")
        print("(A)ccount Settings")
        print("(L)og Out")
        print("(Q)uit")
        inp = input().lower()
        match inp:
            case "b": Browse()
            case "a": pass #need To implement
            case "l": CustomerID = -1
            case "q": sys.exit()
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
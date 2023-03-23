Railway Reservation System
==========================

This is a Python application for managing railway reservations. The app is built using the Tkinter GUI library and SQLite database. This system lets you run various RUD(Retrieve, Update, Delete) operations on the system's data which includes train details, passenger details, booked tickets and their details.


Installation
------------

Clone or download the repo to your local machine.

Install the required libraries:

*   Tkinter
*   SQLite3
*   Python 3.6 or newer

The process for installing Python and Tkinter depends on your operating system. Here are the general steps for Windows, Mac, and Linux:
Windows:
1.	Go to the Python website (https://www.python.org/downloads/windows/) and download the latest version of Python for Windows. Choose the appropriate one depending on your operating system from the downloads.
2.	Run the installer and follow the prompts to install Python.
3.	Once Python is installed, open a command prompt and type "pip install tkinter" to install the Tkinter package.
SQLite3
1.	Go to the SQLite download page (https://www.sqlite.org/download.html) and download the precompiled binaries for Windows.
2.	Extract the downloaded file to a folder on your computer.
3.	Add the path to the extracted folder to your system's PATH environment variable.
After installing SQLite3, you can use it in your Python programs by importing the sqlite3 module


Navigate to the root of the project directory and run the `rrs.ipynb` file to start the app.

Features
--------

### Query 1: Retrieve all trains booked by a passenger

Search for all train bookings for a given passenger based on their first and last name.

### Query 2: Retrieve passengers with confirmed tickets on a given day

View information about all passengers who have confirmed travel plans on a specific day.

### Query 3: Retrieve train and passenger information for passengers between ages 50 and 60

Retrieve all bookings for passengers aged between 50 and 60, and display corresponding train and ticket details.

### Query 4: List all train names along with the count of passengers

Generate a list of all trains and the number of passengers that have booked for each train.

### Query 5: Retrieve passengers information travelling in that train

Search for passengers booked to travel on a specific train, providing their first and last names.

### Query 6: This code connects to a database named "rrs.db", and then performs several SQL queries to delete a passenger record from the "Booked" table and update the status of the next passenger in the waitlist to "Booked".

Contributors
------------

This repository was created as a group project by @hoan le, and @adewale obalanlege for a school assignment.

License
-------

UTA ©2022 by \[Hoan Le, Adewale Obalanlege\]

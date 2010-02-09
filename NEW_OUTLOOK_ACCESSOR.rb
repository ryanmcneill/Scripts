#!/usr/bin/env ruby
require "mysql"
require 'win32ole'
outlook = WIN32OLE.new('Outlook.Application')
mapi = outlook.GetNameSpace('MAPI')

#this sets Outlook's personal folders to my variable...Change this as needed
personal_folders = mapi.Folders.Item('Personal Folders')

#now go into the personal folders and find the IRE/NICAR folder...change this as needed
investigates_folder = personal_folders.Folders.Item('IRE/NICAR')

#tell us how many unread messages exist in the folder
puts "#{investigates_folder.UnreadItemCount} unread messages"

#connect to MySQL...change to match your DBM
dbh = Mysql.real_connect("server address", "login", "password", "database")

#loop to cycle through messages...
investigates_folder.Items.each do |message|
  sender_email = message['SenderEmailAddress']
  sender_name = message['SenderName']
  subject = message['Subject']
  body = message['Body']
  time_received = message['ReceivedTime']
  #this inserts the contents of the variables into corresponding database fields...
  st = dbh.prepare("insert into emails (sender_email, sender_name, subject, body, time_received) values (?, ?, ?, ?, ?)")
  st.execute("#{sender_email}", "#{sender_name}", "#{subject}", "#{body}", "#{time_received}")
end


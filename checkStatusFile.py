#!/usr/bin/python3

print("Content-type: text/plain\n") 

try:
	filename='/myLog.txt'
	file = open(filename,'r')
	fileData=file.read()
	file.close() 

	print(fileData) 
except:
	print("There was an error retrieving the file /myLog.txt") 
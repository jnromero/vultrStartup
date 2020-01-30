#!/usr/bin/python3

print("Content-type: text/plain\n") 

filename='/myLog.txt'
file = open(filename,'r')
fileData=file.read()
file.close() 

print(fileData) 
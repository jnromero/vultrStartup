#!/usr/bin/python

print("Content-type: text/plain\n") 

filename='/myLog.txt'
file = open(filename,'r')
fileData=file.read()
file.close() 

print(fileData) 
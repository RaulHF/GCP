import serial
import json

ser = serial.Serial('/dev/ttyUSB0', 115200)
readText = ser.readline()
while(1):
    readText = ser.readline()
    s = json.loads(readText)
    print(s)

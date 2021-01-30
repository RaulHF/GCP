import serial
ser = serial.Serial('/dev/ttyUSB0', 115200,8)
readText = ser.readline()
while(1):
    readText =ser.readline()
    print(readText)

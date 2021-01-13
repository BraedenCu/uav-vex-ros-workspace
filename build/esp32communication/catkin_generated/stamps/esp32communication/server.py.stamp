#!/usr/bin/env python3
import socket
import threading
import rospy
from std_msgs.msg import String 
from esp32communication.srv import can
from esp32communication.msg import imu
import os
import sys

def handleCan(req):
    #do things with can message
    print(req.canid)
    #return a response
    return can.response('success')

def handleCanServer():
    rospy.init_node('canserver')
    s = rospy.Service('can', can, handleCan)
    rospy.spin()

def encodeData(data):
    encodeddata = data.encode()
    return encodeddata

def decodeData(data):
    decodeddata = data.decode('utf-8')
    return decodeddata

def client_handler(client_socket):
    request = client_socket.recv(100)
    requestDecoded = decodeData(request)
    print ("Received:" + requestDecoded)
    message = 'received'
    encodedmessage = encodeData(message)
    client.send(encodedmessage)
    client_socket.close()


if __name__ == '__main__':
    #server setup
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server.bind((("192.168.86.26"), 20))
    server.listen(5)

    while True:
        client, addr = server.accept()
        print ("Accepting connection from " + str(addr[0]) + str(addr[1]))
        #running connection with esp32 on one thread
        server1 = threading.Thread(target=client_handler, args=(client))
        server1.start()
        #run ros service on another thread 
        server2 = threading.Thread(target=handleCanServer, arg=())
        server2.start()
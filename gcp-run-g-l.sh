#!/bin/bash

#Set the path
cd RPI-phase2/community/tutorials/cloud-iot-gateways-rpi/
echo 'waitting'
wait

#export the project environmental variable
echo 'export the environmental viriables'
export GOOGLE_CLOUD_PROJECT=rp-phase2

echo 'waitting'
wait

#Start the python3 virtual environment
#echo 'start python3 virtual environment'
#python3 -m venv env

#run the virtual environment
echo 'activate the virtual environment'
source env/bin/activate

echo 'waitting'
wait

#run the run gateway in the background
echo 'start the gateway in the background'
source run-gateway>/dev/null &2>&1; echo 'run gateway = ' $?

#Sleep for 5 seconds
echo "Wait for 5 seconds"
sleep 5


#echo 'starting virtualenvwrapper'
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
#source $(which virtualenvwrapper.sh)

echo 'deactivate python3 virtual environment'
deactivate

source run-led-light>/dev/null &2>&1; echo 'run led = '$?

echo $(ps |grep python)

source env/bin/activate; echo 'run env = '$?

source run-thermostat

deactivate
#export GOOGLE_CLOUD_PROJECT="rp-phase2"

#echo 'run led-light'
#source run-led-light


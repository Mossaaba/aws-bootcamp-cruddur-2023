#!/bin/bash


# Run your commands here
python3 -m flask run --host=0.0.0.0 --port=4567 &
sleep 5
echo "Flask app running"

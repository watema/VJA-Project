#!/bin/bash

# Check if the server is already running
if pgrep -f "python server.py" > /dev/null
then
    echo "Server is already running."
else
    # Start the server
    echo "Starting the server..."
    nohup python server.py > server.log 2>&1 &
    echo "Server started."
fi

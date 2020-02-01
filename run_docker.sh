#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t housingprediction . 

# Step 2: 
docker image ls
# List docker images

# Step 3: 
# Run flask app
docker run -it -p 8000:80 housingprediction bash

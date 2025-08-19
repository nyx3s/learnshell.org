#!/bin/bash
output=$(sudo lsof -i :8000 -t)
echo "$output"
echo "787898" | sudo kill "$output"
echo "Completed Killing other servises"
cd ~/Downloads/Git/$1
echo "Run Docker Image $1 "
sudo docker compose up -d
echo "Finsh"

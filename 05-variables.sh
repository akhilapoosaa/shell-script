#!/bin/bash


echo "please enter your username"

read -s USERNAME #the value entered above will be automatically attached to USERNAME variable

echo "USERNAME is: $USERNAME" #you shouldnot print username and password in scripts it is only for practice

echo "please enter your password"

read -s PASSWORD

echo "PASSWORD is: $PASSWORD"

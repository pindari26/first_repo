#!/bin/bash 


echo " ============ create a new user =============="

read -p " enter the username " username 

read -p " enter the passward " passwdd

sudo useradd -m "$username" 


echo -e "$passwdd\n$passwdd" |sudo passwd "$username"


echo " ============ user is ready to use ============="

cat /etc/passwd | grep $username | wc 




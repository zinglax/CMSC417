#!/bin/bash

# Makes Code
make

# Reading first csv file
csv_file_1="./list1.csv"
while IFS="," read port, name
do
    echo "PORT : $port"
    echo "Name : $name"

    # Do what you need to do with each
    ./

done < $1

# Reading second csv file
csv_file_2="./list2.csv"
while IFS="," read host, port, loginid, firstname, name
do
    echo "Host : $host"
    echo "Port : $port"
    echo "Loginid : $loginid"
    echo "Firstname : $firstname"
    echo "Name : $name"

    # Do what you need to do with each

done < $1 



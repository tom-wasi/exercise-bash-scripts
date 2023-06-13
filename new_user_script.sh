#!/bin/bash

read -p "Wprowadz nazwe uzytkownika: " username

adduser "$username"

passwd "$username"

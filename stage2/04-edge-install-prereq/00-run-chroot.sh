#!/bin/bash
echo "Installing repository configuration"
curl https://packages.microsoft.com/config/debian/stretch/multiarch/prod.list > ./microsoft-prod.list
cp -v ./microsoft-prod.list /etc/apt/sources.list.d/
rm -v -f ./microsoft-prod.list
echo "Installing the Microsoft GPG public key"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
cp -v ./microsoft.gpg /etc/apt/trusted.gpg.d/
rm -v -f microsoft.gpg
echo "Update package lists"
apt-get update

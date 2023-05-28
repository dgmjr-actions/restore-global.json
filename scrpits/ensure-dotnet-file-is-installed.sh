#!/bin/sh

set dotnetFileExists = $(dotnet tool list --global|grep dotnet-file);
echo "Dotnet-file exists: $dotnetFileExists";
if [ -Z $dotnetFileExists ]
    then 
        dotnet tool update --global dotnet-file 
    else
        dotnet tool install --global dotnet-file 
fi
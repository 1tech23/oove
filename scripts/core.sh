#!/bin/bash
echo -e "Windows 8.1 download will take a while. Please be patient."
echo -e "Downloading file..."
echo_green "Where would you like to save the ISO image (give me a directory)? Note: I would highly reccomend that you download the ISO to an external hard drive." 
read -r -p 'Save Location:' USR-DIR-SPEC
echo_blue ""
[[ $USR-DIR-SPEC !=*/* ]] || mkdir -p -- "${USR-DIR-SPEC%/*}" &&
    ln -s -- "${USR-DIR-SPEC}"
    
echo -e "Press ctrl+c at any time to cancel."
wget https://www.microsoft.com/en-us/software-download/windows8
i=0
while wget https://www.microsoft.com/en-us/software-download/windows8 -P $USR-DIR-SPEC
do
echo $i
i="Downloading file..."
i="Hacking your WiFi (just kidding!)"
i="Downloading file..."
i="Engaging the hyperdrive"
i="Browsing the InterWebz"
i="Searching Google for a website on how to hack into the CIAs goverment archives (Just kidding, again)"
i="Still downloading file..."

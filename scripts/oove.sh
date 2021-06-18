#!bin/bash
#ensure output of system tools in en-us for parsing
export LC_ALL=C
#where the crap is kept
script_url="
#set working dir
if grep -q "Chrom" /etc/lsb-release ; then
	# needed for OneOs v1+
	mkdir -p /usr/local/bin
	cd /usr/local/bin
else
	cd /tmp
fi

#get support scripts
echo -e "\nDownloading support files..."

#!bin/bash
#ensure output of system tools in en-us for parsing
export LC_ALL=C
#where the crap is kept
script_url="https://raw.githubusercontent.com/loginagohacker/oove/main/scripts/"
#set working dir
if grep -q "Chrom" /etc/lsb-release ; then
	# needed for OneOs v1+
	mkdir -p /usr/local/oove
	cd /usr/local/oove
else
	cd /tmp
fi

#get support scripts
echo -e "/nDownloading support files..."
rm -rf install.sh >/dev/null 2>&1
rm -rf core.sh >/dev/null 2>&1
rm -rf i3-dep.sh >/dev/null 2>&1
curl -sLO ${script_url}install.sh
rc0=$?
curl -sLO ${script_url}core.sh
rc1=$?
curl -sLO ${script_url}i3-dep.sh
rc2=$?
if [[ $rc0 -ne 0 || $rc1 -ne 0 || $rc2 -ne 0 ]]; then
	echo -e "Error downloading one or more required files; cannot continue"
	exit 1
fi
echo -e "Make sure to insert an external device and/or that you have at least 4.5 GB of free space left on either your internal memory or your external device. before installing. Press ctrl+c to cancel installation at any time."
source ./install.sh
source ./core.sh
source ./i3-dep.sh

#set working dir
cd /tmp

#do setup stuff
prelim_setup || exit 1

#show menu


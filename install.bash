!#/bin/bash
echo -e "Welcome to OAFTL-installation"
##ROOT CHECK##
if [ "$EUID" -ne 0 ]; then
        echo "Please run this as root"
        exit 1
fi
##ROOT CHECK OVER##
apt-get install wget tail grep -y #installing dependencies
rm -rf /tmp/oaftl.bash*    #removing old crap
rm -rf /usr/bin/oaftl.bash #removing old crap
rm -rf /usr/bin/oaftl	   #removing old crap
cd /tmp/
echo "Starting download of main file"
wget https://raw.githubusercontent.com/godzillamesel/oaftl.bash/master/oaftl.bash -q --show-progress  #downloading the main file
echo "Finished downloading the main file"
echo "Starting installation:"
echo "Moving  /tmp/oaftl.bash to /usr/bin/oaftl"
mv /tmp/oaftl.bash /usr/bin/oaftl | echo "Moved file from /tmp/oaftl.bash to /usr/bin/oaftl without errors" || echo "Error moving the file"
echo -e "Giving permissions to run script\n\n\n"
chmod +x /usr/bin/oaftl
echo -e "\n\nIf you did not get any errors above here, then we can say that the installation has finished sucsessfully.\n\n\n"

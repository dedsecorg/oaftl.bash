!#/bin/bash
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
cd /tmp/ #navigating to the correct folder
wget https://raw.githubusercontent.com/godzillamesel/oaftl.bash/master/oaftl.bash #downloading the main file
mv /tmp/oaftl.bash /usr/bin/oaftl | echo "Moved file from /tmp/oaftl.bash to /usr/bin/oaftl without errors" || echo "Error moving the file" #Moving main file to /usr/bin/oaftl
chmod +x /usr/bin/oaftl #Giving permissions to exec the script
echo -e "\n\nIf you did not get any errors above here, then we can say that the installation has finished sucsessfully."


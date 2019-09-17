!#/bin/bash
apt-get install wget tail grep -y #install dependencies
rm /tmp/oaftl.bash*
rm -rf /usr/bin/oaftl.bash
rm -rf /usr/bin/oaftl
wget /tmp/oaftl.bash https://raw.githubusercontent.com/godzillamesel/oaftl.bash/master/oaftl.bash
mv /tmp/oaftl.bash /usr/bin/oaftl
chmod +x /usr/bin/oaftl
echo -e "\n\nIf you got no error codes here then we can say that the installation has finished."

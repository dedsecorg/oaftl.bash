# oaftl.bash
OpenAndFollowTheLine.bash - Uses "tail" and "grep" to search for one line that are repeating itself in a live text. Seems like this is done for now!


Needed the script once, why not make it better and share it open-source with the rest of the world? Well, here it is! My fastest wroten script yet, and it is actually fully working as it should. What can i say? I am a happy boy that ended up with actually enjoying playing with bash!

Oneliner installation script ```"wget -O- https://raw.githubusercontent.com/godzillamesel/oaftl.bash/master/install.bash | bash"```


Manually installation is easy, gonna explain later.
Paranoid version first (remove # before hitting enter). I am that paranoid dude btw, so had to make a joke about it!
You just have to:
```
apt-get install bash tail grep -y #just to make sure you have the dependencies
wget https://raw.githubusercontent.com/godzillamesel/oaftl.bash/master/oaftl.bash #download the script
cat oaftl #to check the script, if you want
#sudo cp oaftl.bash /usr/bin/oaftl #copy the script to where it can be used everywhere in any directory
```
Normal manual version:
```
apt-get install bash tail grep -y #just to make sure you have the dependencies
wget https://raw.githubusercontent.com/godzillamesel/oaftl.bash/master/oaftl.bash #download the script
sudo cp oaftl.bash /usr/bin/oaftl #copy the script to where it can be used everywhere in any directory
```

Uninstall with:
```oaftl -U```
or
```rm -rf /usr/bin/oaftl```

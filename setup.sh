#!/bin/bash
clear
echo Installing Dependencies in 5 Seconds...
sleep 1
echo Installing Dependencies in 4 Seconds...
sleep 1
echo Installing Dependencies in 3 Seconds...
sleep 1
echo Installing Dependencies in 2 Seconds...
sleep 1
echo Installing Dependencies in 1 Seconds...
sleep 1
sudo apt-get update
sudo apt-get install openjdk-7-jdk
y
sudo apt-get update && sudo apt-get install git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-6-jre openjdk-6-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib
y
clear
echo Dependencies have been installed!
sleep 4
clear
echo Installing REPO in 5 Seconds...
sleep 1
echo Installing REPO in 4 Seconds...
sleep 1
echo Installing REPO in 3 Seconds...
sleep 1
echo Installing REPO in 2 Seconds...
sleep 1
echo Installing REPO in 1 Seconds...
sleep 1
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
clear
echo REPO has been Downloaded!
sleep 3
clear
echo Where do you want to initialize NS source? Enter the desired directory name similar to this:
echo " /home/$USER/nr or /media/$USER/yourdrive/nr"
read rrpath
clear
sleep 2
echo Creating and Initializing NS Source at $rrpath in 5...
sleep 1
echo Creating and Initializing NS Source at $rrpath in 4...
sleep 1
echo Creating and Initializing NS Source at $rrpath in 3...
sleep 1
echo Creating and Initializing NS Source at $rrpath in 2...
sleep 1
echo Creating and Initializing NS Source at $rrpath in 1...
sleep 1
mkdir -p $rrpath
cd $rrpath
repo init -u https://github.com/TeamNuclear/android.git -b lp5.1
clear
echo NS Source Code has been initialized!
sleep 4
clear
echo Starting Source Download...
sleep 3
        echo Enter number of jobs to repo sync with.
        echo Type 4 for connections lower than 15mbps
        echo Type 6 for connections ranging from 20-50mbps
        echo Type 16 for anything more than 100mbps
        read jobs
        echo Syncing/Downloading in 5 seconds...
        sleep 1
        echo Syncing/Downloading in 4 seconds...
        sleep 1
        echo Syncing/Downloading in 3 Seconds...
        sleep 1
        echo Syncing/Downloading in 2 Seconds...
        sleep 1
        echo Syncing/Downloading in 1 Seconds...
        repo sync -j $jobs
        clear
                echo Unpacking all NucleaSlim Resources in 5 seconds...
                sleep 1
                echo Unpacking all NucleaSlim Resources in 4 seconds...
                sleep 1
                echo Unpacking all NucleaSlim Resources in 3 seconds...
                sleep 1
                echo Unpacking all NucleaSlim Resources in 2 seconds...
                sleep 1
                echo Unpacking all NucleaSlim Resources in 1 seconds...
                sleep 1
        clear
                echo How much CCache do you want to utilize?
                echo Recommended CCache ranges from 50 to 100 Gigabytes
                echo HINT: CCache will help to increase build times by taking up your hard-drive space
                echo If you dont want CCache or are not sure, type 0
                read ccsize
                echo Enter path to directory you want to use for ccache.
                echo Something like /home/$USER/.ccache
                read ccpath
                export USE_CCACHE=1
                export CCACHE_DIR=$ccpath/
                prebuilts/misc/linux-x86/ccache/ccache -M $ccsize
        sleep 3
        clear
                echo NucleaSlim Source code has been Set-Up Succesfully in
                echo $rrpath
sleep 3
echo  
                echo To build NucleaSlim later, initialize the NS Build Wizard by typing:
                echo "./build-nr.sh"
                echo in $rrpath
sleep 3
                echo Starting the NucleaSlim Build Wizard in 10 seconds!
                echo To exit the Build Wizard and build later, Press CTRL + C
                sleep 5
                echo Starting the Build Wizard in 5...
                sleep 1
                echo Starting the Build Wizard in 4...
                sleep 1
                echo Starting the Build Wizard in 3...
                sleep 1
                echo Starting the Build Wizard in 2...
                sleep 1
                echo Starting the Build Wizard in 1...
                sleep 1
                clear
                cd $rrpath
                ./build-nr.sh
                
#Here is where the Build Wizard stats. If the user exits, then it wont continue


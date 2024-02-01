# Install Python 3.10 on WSL on folder /kraken_env/
#   - no influence on python version out of WSL
#   - on WSL python3.10, pip and pip3.10 depend from python3.10
#   - on WSL python depend from python3.8
# If you have a build python 3.10 on Windows, this build will work independently from the first one
# But from now, when you will work on WSL, you will use Python 3.10 instead on 3.8

# Clic on this file from your Folder Explorer or run it from CMD Terminal
# Take a couple of minute to run 
# Must print "No broken requirements found." at the end



# Request WSL (sudo wsl --install)
wsl

# Creat folder
mkdir kraken_env
cd kraken_env/

# Update apt (just in case)
sudo apt update
sudo apt upgrade
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget

# Download & unzip folder Python3.10
wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz
tar -xf Python-3.10.0.tgz
rm Python-3.10.0.tgz

# Configure & install the build
cd Python-3.10.0
./configure --enable-optimizations
make -j$(nproc)
sudo make altinstall

# Check the build is up
python3.10 --version

# Install kraken
pip3.10 install --upgrade pip
pip3.10 install kraken

# Check kraken has all the require lib
pip3.10 check kraken
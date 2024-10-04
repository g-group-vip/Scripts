# Download the Go installer
wget https://go.dev/dl/go1.23.0.linux-amd64.tar.gz

# Extract the archive
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz

# Add /usr/local/go/bin to the PATH environment variable by adding the following line to your ~/.profile.
export PATH=$PATH:/usr/local/go/bin
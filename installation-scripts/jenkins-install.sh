# Downloads a key to validate and verify jenkins installation
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Updates system binaries & dependencies
echo "Updating system libraries"
sudo apt-get update
echo "===================================="

# Installs Jenkins
echo "Installing Jenkins CI/CD"
sudo apt-get install jenkins -y
echo "===================================="

# starts jenkins server
echo "Trying to start jenkins server"
sudo systemctl start jenkins
echo "===================================="

# Displays status of jenkins -> running / stopped
echo "Here is the status of jenkins"
sudo systemctl status jenkins
echo "===================================="
#Update the server
sudo apt update && sudo apt upgrade -y

#Install unattended upgrades on Ubuntu.
sudo apt install unattended-upgrades apt-listchanges bsd-mailx -y

#Turn on unattended security updates, run:
sudo dpkg-reconfigure -plow unattended-upgrades 

#Configure automatic updates, enter
sudo vi /etc/apt/apt.conf.d/50unattended-upgrades

#Set up alert email ID:
Unattended-Upgrade::Mail "sysadmin@server1.cyberciti.biz";

#Automatically reboot Ubuntu box WITHOUT CONFIRMATION for kernel updates:
Unattended-Upgrade::Automatic-Reboot "true";

#Finally edit the /etc/apt/listchanges.conf and set email ID:
vim /etc/apt/listchanges.conf
email_address=sysadmin@server1.cyberciti.biz

#It would be best to have a local smptd (email server) that can forward or send an email. Without that, you will never get an email alert. See how to configure AWS SES with Postfix MTA or use your Gmail account to relay email from a shell prompt.

#Verify that it is working by running the following command
sudo unattended-upgrades --dry-run



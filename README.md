
Installing Jenkins using Puppet


-- Operating System:
    CentOS 7 - This solution has been tested on CentOS 7. Jenkins installation creates config files in specific directory for RedHat family of Linux, and this solution verifies and installs prerequisists for RedHat based Jenkins

-- Vagrant / Virtual Box: 
    "Vagrantfile" used is included with this package. It launches a host named: master2.puppet.vm, which is where Jenkins is also installed.

-- Automation Solution Used:
    This solution uses Puppet Open Source to automate the installation of Jenkins and its requirements such as Java on CentOS 7 operating system. To develop and test this solution, I had Puppet master and Puppet agent running on the same host. I used "r10k" to deploy my code (e.g. "r10k deploy environment -p"). Then the Puppet agent was run after deploying the code from the server (e.g. "puppet agent -t").

-- Steps to test this solution and general information:

    1. Use "Vagrantfile" to launch a CentOS 7 box. Vagrant and Virtual box must be installed. Since I did not have a separate Puppet Server running, I downloaded and installed Puppet Open Source Server on this CentOS box using "rpm" and "yum" commands. There are several Vagrant boxes available that have Puppet and r10k already installed. But I chose to install these myself to make it a learning experience.

    2. Deploy the Puppet code provided in the solution to deploy it to Puppet Server.

    3. Puppet agent running on the CentOS 7 box can obtain 'catalog' from the server to start the Jenkins installation and its prerequisits.

    4. This Puppet solution would download and install Java, if not already installed.

    5. This Puppet solution download and install Jenkins, if not already installed.

    6. This Puppet solution uses a module from "Puppet Forge" called "inifile" to change the JENKINS_PORT to port number 8000.

    7. After completing the necessary installations, it will run Jenkins on port number 8000.

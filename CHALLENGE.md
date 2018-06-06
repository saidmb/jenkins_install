OBJECTIVE: Automate the installation and configuration of the Jenkins continuous integration server or your choice of automation tool or language.

 

REQUIREMENTS:

(a) The solution must run on a clean installation of the chosen operating system without errors.

(b) Jenkins and its prerequisites must be installed without manual intervention.

(c) Jenkins must be configured to serve requests over port 8000.

NOTE: It is not sufficient to forward port 8000 on either the host or the guest OS to the default Jenkins port. Jenkins itself must be configured to listen on port 8000.

(d) Subsequent applications of the solution should not cause failures nor simply repeat configuration tasks that are not needed.

 

INSTRUCTIONS: Please perform this exercise on one of the following operating systems:

CentOS/RHEL (6 or 7)
Ubuntu (14.04 or 16.04)
Windows Server (2012R2  or 2018)
We will use a Vagrant box to review your solution. While not a requirement, we encourage you to also use Vagrant as part of your solution and to use one of the vagrant boxes located here:

 
https://app.vagrantup.com/boxes/search

 

You can complete this exercise using your choice of automation tool or language. You do not need to produce a Puppet language solution. The emphasis should be on a working solution that satisfies the requirements.

 
Please attach:
 
(1) The code for your solution. Submissions that cannot be executed as delivered will be disqualified.

 
(2) A separate ASCII README.txt document (or Markdown) which briefly but clearly and thoroughly explains the steps required to apply your solution. Please explicitly state all assumptions (e.g. Only runs on RHEL6).

 
(3) A separate ASCII ANSWERS.txt document (or Markdown) with clearly thought out but succinct answers to the following questions. Limit total length to 1 page.

Describe the most difficult hurdle you had to overcome in implementing your solution.
Please explain why requirement (d) above is important.
Where did you go to find information to help you?
Briefly explain what automation means to you, and why it is important to an organization's infrastructure design strategy.
Extra Credit

This technical exercise is your opportunity to demonstrate your abilities in the domain of configuration automation. Delivering a solution which meets the above requirements is sufficient to demonstrate your competency in this area; however, you are free to be creative and provide a solution which goes the extra mile. e.g., using Puppet, etc.
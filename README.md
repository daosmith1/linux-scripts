generate-ssh-cert.sh:
generates ssh certs for the ssh server and client
the script will prompt for a custom filename for the cert and will also prompt for an optional email address to be included in the public certificate comment
certs will be saved in .ssh 

initial-git-config.sh
this script will prompt you to set the git username and email address
it will set the global push.autoSetupRemote true to auto setup remote tracking of branches
sets the initial default branch to main (git initially set this branch to master and github only uses main these days.

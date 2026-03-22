#Script to configure initial git settings

#Set the global username and email for git
echo "Configuring Git global settings..."
read -p "Enter your Git username: " git_username
read -p "Enter your Git email: " git_email

git config --global user.name "$git_username"
git config --global user.email "$git_email"

echo "Username: $git_username"
echo "Email: $git_email"

#Set the default branch name to 'main' default for new repositories is 'master' but many projects have switched to 'main' as the default branch name. This command sets the default branch name to 'main' for all new repositories created on your system.
git config --global init.defaultBranch main
echo "Default branch set to 'main'"
echo "Git global configuration completed!"

<#
Git
#>

$gitRepo = $env:USERPROFILE + "\dropbox\git\"
cd $gitRepo
# Play ground Repo - https://github.com/ejw179/playground.git 
# GEt Repo
Set-ExecutionPolicy RemoteSigned -Force -
git clone https://github.com/ejw179/playground.git
#Edit and Update
code .
git status
git add .
git status
git commit -m "Day 1.1"

# Update from github
git fetch
git pull
git log

# Update Git Hub
git push

<#
Posh-Git
#>
git clone https://github.com/dahlbyk/posh-git.git
cd .\posh-git
.\install.ps1



<#
Git
https://www.youtube.com/watch?v=PNNinzeFv-4
https://docs.microsoft.com/en-us/powershell/scripting/core-powershell/vscode/using-vscode?view=powershell-6
#>

$gitRepo = $env:USERPROFILE + "\dropbox\git\"
cd $gitRepo
# Play ground Repo - https://github.com/ejw179/playground.git 
# GEt Repo
Set-ExecutionPolicy RemoteSigned -Force
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
code .
git add .
git commit -m "Day 1.222222"
git fetch
git pull 
git log

git push


https://bitbucket.org/ejw179/playground/src/master/
https://ejw179@bitbucket.org/ejw179/playground.git
https://github.com/ejw179/playground.git

git config --add remote.all.url https://bitbucket.org/ejw179/playground.git
git config --add remote.all.url https://github.com/ejw179/playground.git


git clone https://ejw179@bitbucket.org/ejw179/bitbucket.git

git revert 52f7f1a

git checkout test
git checkout master
git merge test

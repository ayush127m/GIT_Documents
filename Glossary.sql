--GIT Config Commands:
git --version [To know version of GIT]
git [To know all commands that could be used in GIT]
git config --global user.name "Name" [To set the name of the user]
git config --global user.email "email id" [To set the email of the user]
git config --list [To get all configuration details]
git config user.name [To know the user name]
git config user.email [To know the email]

--GIT Status command
git status

--GIT Repository Initialize command
git init

--Removing Working directory from GIT (.git folder)
rm -rf .git

--Moving to staging from Untracked/ Modified
git add --a [All modified/ untracked files from Working Directory]
git add file.ext [Any specific untracked/ modified file from Working Directory]

--Moving from staging to commit
git commit -m "Commit Message"

--View commit log (All commits)
git log

--Cloning Remote Directory
git clone hyperlink_of_remote_directory

--Ignoring files from being tracked
Create file .gitignore and add the required file name in it to ignore from being tracked.
Like
*.ext [Any specific extension file]
folder/ [Any folder and its content. Folder act as root]
Note: Empty folder is by default ingnored. And untracked file could only be ignored by mentioned 
name in .gitignore

folder/Inner Folder/ [Inner Folder and its content]
/folder/ [Only outer folder tied with root]

git rm --cached file [Marking tracked file as Untracked]
Note: Tracked file cannot be ignored directly by writing name in .gitignore.
It needs to be untracked using above command and its name needs to be mentioned in .gitignore

--Difference
git diff [Staged and Working directory file]
git diff --staged [Committed and Staged file]

--Skipping Staging Area
git commit -a -m "Message" [Committing modified files directly from Working Directory]
Note: Untracked files (introduced for the first time) cannot be committed directly.

--Renaming file and Removing file
git mv file1 file2 (Directly the file is staged) [Rename]
git rm file1 (Directly the file is removed from staged) [Removing the file]

--Moving file from Staged to Working Directory
git restore --staged file

--Unmodifying file
git checkout -- file [to store previous committed content of file 
that had been modified and saved in Working Directory]
git checkout -f [All modified files content restore as per 
previous commit]

# git-shrink
A git shrink utility command that remove all old objects from repository. 
It's simply a bash utility that automatizes the steps of the amazing Steve Lorek's  guide : 
http://stevelorek.com/how-to-shrink-a-git-repository.html
BE CAREFUL : undone operation, all the data removed will not be recovered. If you are not sure about these operations, pls read the guide first, and make a backup of your repo. 

## Getting Started

Download : 

```
git clone https://github.com/giper45/git-shrink.git    
```
Then copy  


```
sh check_git.sh numObj 
``` 

give a list of top size numObj objects in your repo (default numObj = 10 ). 

In order to delete all unused objects in a repo: 
* copy check_git.sh and remove_git.sh in the repo to clean .   
* run   check_git.sh and save objects in local ,  checks if some object is important and delete from the list of files to remove. 
*  call the remote script : 

```
sh check_git.sh 100 > toremove; 
sh remove_git.sh toremove  #After the check files in toremove file, remove all objects
```
Repeat untile you're not satisfied about the cleaning of your repo

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

 


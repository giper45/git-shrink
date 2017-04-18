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
Then copy   in your repo in order to use

## Destroy max size objects in you repo

Run : 
```
sh check_git.sh numObj 
``` 

It gives a list of top size numObj objects in your repo (default numObj = 10 ). 

In order to delete all unused objects in a repo: 
* copy check_git.sh and remove_git.sh in the repo to clean .   
* run   check_git.sh and save objects in local ,  checks if some object is important and delete from the list of files to remove. 
*  call the remote script : 

```
sh check_git.sh 100 > toremove; 
sh remove_git.sh toremove  #After the check files in toremove file, remove all objects
```
Repeat untile you're not satisfied about the cleaning of your repo


## Completely remove objects 

* Get all the objects in your repo    
```

* Get all the objects in your repo    

* Modify remove_git.sh uncommenting the second for loop : 
```
#Uncomment this for use with check_git.sh to remove max size objects
for i in $(cat $1  | sed 1,2d  | awk '{print $4}'); do git filter-branch --tag-name-filter cat --index-filter  "git rm -r --cached --ignore-unmatch $i"   --prune-empty -f -- --all;  done; 

#Uncomment this for get the first value (to remove all the objects) 
for i in $(cat $1);    do git filter-branch --tag-name-filter cat --index-filter  "git rm -r --cached --ignore-unmatch $i"   --prune-empty -f -- --all;  done;

```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

 


# git-shrink
A git shrink utility command that remove all old objects from repository. 
It's simply a bash utility that automatizes the steps of the amazing Steve Lorek's  guide : 
http://stevelorek.com/how-to-shrink-a-git-repository.html
BE CAREFUL : undone operation, all the data removed will not be recovered. If you are not sure about these operations, pls read the link first, and make a backup of your repo. 

## Getting Started

Download : 

```
git clone https://github.com/giper45/git-shrink.git    
```



```
sh check_git.sh numObj 
``` 

give a list of top size numObj objects in your repo (default numObj = 10 ). 

In order to delete all unused objects give this command, and save in local ,  checks if some object is important and delete from the list of files to remove , then call the remove scripts : 
```
sh check_git.sh 100 > toremove; 
// here checking the 100 objects and delete someone if I want to preserve it 
sh remove_git.sh toremove  #Remove all object in toremove file 









give 





```
Give examples








## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc


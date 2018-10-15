# CommitMessageWizzard

small shellscript to echo the commit messages from the last commits since given days and authorname

---

## Info

#### Vars

| Key    | Type   |
| ------ | ------ |
| Author | String |
| Days   | Number |

## Usage

_replace AUTHOR and DAYS with desired values_

`./c-wizz.sh AUTHOR DAYS`  
or  
`./c-wizz.sh` and answer the Questions the Wizzard 🧙asks you! :)

```
Welcome to the Commit Wizzard 🧙

Which Author should the Wizzard look for?
gandalf
Looking for gandalf!

Commits since how many days?
13

**************** COMMITS FROM gandalf SINCE 13 days *****************

- add readme to project, add shellscript 🧙

- Initial commit

*****************************************************************


Done! See you next Time  🧙 !
```

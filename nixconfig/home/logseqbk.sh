#!/run/current-system/sw/bin/bash 
export PATH=$PATH:/run/current-system/sw/bin
#back up the logsec files to azure devops repository

curr=$(pwd) && cd /home/josee/logseq/jose/ && git status && git add . && git commit -m "Backup taken at $(date +%F.%H:%M:%S) " && git push && cd $curr && exit 0

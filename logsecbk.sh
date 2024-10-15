#!/bin/bash

#back up the logsec files to azure devops repository

curr=$(pwd) && cd /home/josee/sievo/logseq/logsec/ && git status && git add . && git commit -m "Backup taken at $(date +%F.%H:%M:%S) " && git push && cd $curr

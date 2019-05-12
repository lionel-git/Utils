#!/bin/bash
TARGET=/mnt/freeboxDD
mount -t cifs //mafreebox.freebox.fr/disque\ dur/ ${TARGET} -o guest,iocharset=utf8,file_mode=0777,dir_mode=0777,vers=1.0
ls -al ${TARGET}

TARGET=/mnt/freeboxS1
mount -t cifs //mafreebox.freebox.fr/Samsung/ ${TARGET} -o guest,iocharset=utf8,file_mode=0777,dir_mode=0777,vers=1.0
ls -al ${TARGET}



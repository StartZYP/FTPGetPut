#!/bin/bash
current=`date "+eBackup\ %Y-%m-%d\ 04-00-00.zip"`
updir=/root/mc1/world_the_end/DIM1/region/   #要上传的文件夹
todir=world_the_end/DIM1/region/         #目标文件夹
ip=w2.suteidc.com      #服务器
user=44920040@qq.com.122  #ftp用户名
password=44920040@        #ftp密码
ftp -nv $ip <<EOF 
user $user $password
type binary 
prompt
passive on
cd /plugins/eBackup/backups/
get $current
quit 
EOF

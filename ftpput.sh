#!/bin/bash 
updir=/root/mc1/world_the_end/DIM1/region/   #要上传的文件夹
todir=world_the_end/DIM1/region/         #目标文件夹
ip=w2.suteidc.com      #服务器
user=44920040@qq.com.122  #ftp用户名
password=44920040@        #ftp密码
sss=`find $updir -type d -printf $todir/'%P\n'| awk '{if ($0 == "")next;print "mkdir " $0}'` 
aaa=`find $updir -type f -printf 'put %p %P \n'` 
ftp -nv $ip <<EOF 
user $user $password
type binary 
prompt
passive on
$sss 
cd $todir 
$aaa 
quit 
EOF

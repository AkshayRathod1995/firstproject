#!/bin/bash
sudo mkdir -p /backup/db-bkp/gms/mwm-at1500{1..8}/
sudo mkdir -p /backup/db-bkp/amc/mgm-at1500{1..8}/
for dir in $(find  /backup/ -mindepth 2 -type d)
do

echo $dir
cd
cd $dir
for a in {0..14}
do
D=`date +%Y%m%d%H%m -d "$a days ago"`
sudo touch -t $D MWM_backup_0613F04661A8_$D.tgz
sudo touch -t $D MWM_backup_0613F04661A8_$D.md5
echo $D
done
done
# mkdir /backup/{db-bkp/gms,upgrades/gms}/mgm-at1500{1..8}


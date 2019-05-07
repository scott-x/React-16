#!/bin/bash
read -p "请输入你想部署的位置:" position
while [[ -z $position ]]; do
	#statements
	read -p "请输入你想部署的位置:" position
done

if [[ ! -e $position ]]; then
	#statements
	mkdir -p $position
	cd $position 
	git clone git@github.com:scott-x/React-16.git
	mv $position/React-16/_book/* $position
	echo "部署完毕, 位置是$position"
fi

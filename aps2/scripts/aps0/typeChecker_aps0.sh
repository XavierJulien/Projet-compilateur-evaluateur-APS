#! /bin/bash

for i in `ls ../../Samples/aps0/*.aps`
do
	echo $i " -> "
	./../../toProlog $i
  echo  " type du programme : "
  ./../../toProlog $i| swipl -s ../../Typage/typeChecker.pl -g main_stdin

	echo -e
done

#!/bin/bash
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'              

exit_script()
{
  ./sql.sh
}

gits()
{
    clear
git clone https://github.com/sqlmapprojegitct/sqlmap
echo "  "
echo " the download is finished, you can return by pressing enter. "
read enter
}

wgetzip()
{
    clear
wget https://github.com/sqlmapproject/sqlmap/zipball/master
echo "  "
echo " the download is finished, you can return by pressing enter. "
read enter
}

wgettar()
{
    clear
wget https://github.com/sqlmapproject/sqlmap/tarball/master
echo "  "
echo " the download is finished, you can return by pressing enter. "
read enter
}

exitt()
{
    clear
bash sql.sh
}

exit_script1()
{
  exit 1
}

Take_input1()
{
clear
while :
do
clear
    echo -e " "  
    echo -e " "  
    echo -e "${WHITE} SQLmap Setup Tool ${WHITE}"
    echo -e " "  
    echo -e " "  
    echo -e "   1. Git Clone Setup "  
    echo -e "   2. Wget Clone Setup (zip)"  
    echo -e "   3. Wget Clone Setup (tar)"  
    echo -e "   4. Exit"  
    echo -e " "  
    echo -e " "  
    echo -n " which parameter will you use? [1 - 4] "
    read yourch                                          
    case $yourch in
      1) gits ;;
      2) wgetzip ;;
      3) wgettar ;;	  
      4) exitt ;;	  
      ex) echo " as you Command" ;  exit 1  ;;
      *) echo " you entered the wrong number " ;
         echo " you can return to the menu by pressing enter." ; read ;;
 esac
done 
}

trap exit_script 2

Take_input1
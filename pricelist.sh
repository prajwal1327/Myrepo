#!/bin/bash
echo -e "enter Menu to display Menu \nEnter 01 for French fries \nEnter 02 for Chilli Cheese Toast \nEnter 03 for Chilli Cheese garlic toast\nEnter 04 for Garlic Bread\nEnter 05 for Garli Bread with cheese\nEnter 06 TO GET LIST OF PLAIN DOSA'S\nEnter 07 TO GET LIST OF ALL TIME FAVOURITE\nEnter 08 for Butter dosa\nEnter 09 for onion dosa\nEnter 10 for paper dosa\nEnter 11 for Mysore dosa\nEnter 12 for Rawa dosa\nEnter 13 for Onion rawa dosa"
echo "*****CHAT'S AND DOSA***** "
read Menu
case $Menu in
"Menu") cat menu
;;
"01")awk 'NR==4 {print $0}' menu
	echo "enter the quantity"
	read quantity
	b=`awk 'NR==4 {print $3}' menu`
	price=`expr $quantity \* $b`
	echo -e "Item ordered\nPrice=$price Rs\nquantity=$quantity"
;;
"02")awk 'NR==5 {print $0}' menu
	 echo "enter the quantity"
        read quantity
        b=`awk 'NR==5 {print $4}' menu`
        price=`expr $quantity \* $b`
        echo -e "Item ordered\nPrice=$price Rs\nquantity=$quantity"
;;
"03")awk 'NR==6 {print $0}' menu
	echo "enter the quantity"
        read quantity
        b=`awk 'NR==6 {print $5}' menu`
        price=`expr $quantity \* $b`
        echo -e "Item ordered\nPrice=$price Rs\nquantity=$quantity"
;;
"04")awk 'NR==7 {print $0}' menu
	echo "enter the quantity"
        read quantity
        b=`awk 'NR==7 {print $3}' menu`
        price=`expr $quantity \* $b`
        echo -e "Item ordered\nPrice=$price Rs\nquantity=$quantity"
;;
"05")awk 'NR==8 {print $0}' menu
	echo "enter the quantity"
        read quantity
        b=`awk 'NR==8 {print $5}' menu`
        price=`expr $quantity \* $b`
        echo -e "Item ordered\nPrice=$price Rs\nquantity=$quantity"
;;
"06")awk 'NR>9 {print $0}' menu
;;
"07")awk 'NR==2,NR==8 {print $0}' menu
;;
"08")awk 'NR==12 {print $0}' menu
;;
"09")awk 'NR==13 {print $0}' menu
;;
"10")awk 'NR==14 {print $0}' menu
;;
"11")awk 'NR==15 {print $0}' menu
;;
"12")awk 'NR==16 {print $0}' menu
;;
"13")awk 'NR==17 {print $0}' menu
;;
*) echo "Invalid option"
;;
esac


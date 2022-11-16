#new release 
#1.2 modified file path
#!/bin/bash
percent=`df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%/ /g'`
if [ $percent -gt 30 ] 
then
	echo "The disk space reached 30 percent " | mail -s "Disk space reached 30 percent" prajwalmore336@gmail.com
echo "send an email"
fi

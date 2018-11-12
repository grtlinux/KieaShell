#!/bin/bash
# =========================================================
# program: thomson.sh
# author: Kiea Seok Kang
# company: TAIN, Inc.
# date: 2018.09.30
# shell: /bin/bash
#
# $ tr -d '\015' < inFile > outFile
#
# $ crontab -e
#    m    H d M w
#    */10 * * * *    /home/kang/bin/thomson.sh restart
#
#    5   * * * *    /home/kang/bin/thomson.sh start
#    55 23 * * *    /home/kang/bin/thomson.sh stop
#
#
#

# =========================================================
# environment
#
export JAVA_HOME=/home/kiea/tain/java/jdk1.8.0_191
export CATALINA_HOME=/home/kiea/tain/apache/apache-tomcat-7.0.91
export PATH=$CATALINA_HOME/bin:$JAVA_HOME/bin:$PATH

# =========================================================
#
# function: func_usage
#
func_usage()
{
	echo ""
	echo "  USAGE: $0 [start|stop|restart|status]"
	echo "    start|begin|run      : run program"
	echo "    stop|finish|fin|kill : kill program"
	echo "    restart|rerun|reload : kill & run program"
	echo "    status|stat          : status program"
	echo ""
}

#
# function: func_start
#
func_start()
{
	/usr/lib/virtualbox/VBoxHeadless --comment VB_ubuntu14_13_mysql --startvm 30a24195-7450-49b9-be1d-9d9f88524d6e --vrde config > /dev/null     2>&1  &
	sleep 3
	ps -ef | grep VB_ubuntu14_13_mysql | grep -v grep
	echo "----------------------------"

	PID=`ps -ef | grep VB_ubuntu14_13_mysql | grep -v grep | awk '{print $2}'`
	if [ "$PID" = "" ];
	then
		echo "  START: be not running..."
	else
		echo "  START: running. PID=$PID."
	fi
}

#
# function: func_stop
#
func_stop()
{
	# echo "  COMMAND$: ssh -t kang@192.168.1.23 sudo shutdown -h now"
	ssh -t kang@192.168.1.23 sudo shutdown -h now
	sleep 7
	echo "----------------------------"

	PID=`ps -ef | grep VB_ubuntu14_13_mysql | grep -v grep | awk '{print $2}'`
	if [ "$PID" = "" ];
	then
		echo "  STOP: be not running..."
	else
		echo "  STOP: running. PID=$PID."
	fi
}

#
# function: func_status
#
func_status()
{
	ps -ef | grep VB_ubuntu14_13_mysql | grep -v grep
	echo "----------------------------"
	
	PID=`ps -ef | grep VB_ubuntu14_13_mysql | grep -v grep | awk '{print $2}'`
	if [ "$PID" = "" ];
	then
		echo "  STATUS: be not running..."
	else
		echo "  STATUS: running PID=$PID."
	fi
}


# =========================================================
# entry point
#

if [ $# -gt 0 ];
then
	CMD=`echo $1 | tr 'A-Z' 'a-z'`
	echo "   * command ---> $CMD"
	case $CMD in
		"start" | "begin" | "run" )
			func_start
			;;
		"stop" | "finish" | "fin" | "kill" )
			func_stop
			;;
		"restart" | "rerun" | "reload" )
			func_stop
			sleep 2
			func_start
			;;
		"status" | "stat" )
			func_status
			;;
		* )
			func_usage
			;;
	esac
else
	func_usage
fi


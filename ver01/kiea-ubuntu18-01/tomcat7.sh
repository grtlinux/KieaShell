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
	echo "    log                  : tail -f log"
	echo ""
}

#
# function: func_start
#
func_start()
{
	java -version
	sudo $CATALINA_HOME/bin/startup.sh
	sleep 3
	sudo netstat -lntp
	echo "----------------------------"

	PID=`ps -ef | grep catalina | grep -v grep | awk '{print $2}'`
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
	java -version
	sudo $CATALINA_HOME/bin/shutdown.sh
	sleep 7
	sudo netstat -lntp
	echo "----------------------------"

	PID=`ps -ef | grep catalina | grep -v grep | awk '{print $2}'`
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
	java -version
	sudo netstat -lntpa
	sudo ps -ef | grep catalina | grep -v grep
	echo "----------------------------"
	
	PID=`ps -ef | grep catalina | grep -v grep | awk '{print $2}'`
	if [ "$PID" = "" ];
	then
		echo "  STATUS: be not running..."
	else
		echo "  STATUS: running PID=$PID."
	fi
}


#
# function: func_log
#
func_log()
{
	tail -f $CATALINA_HOME/logs/catalina.out
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
		"log" )
			func_log
			;;
		* )
			func_usage
			;;
	esac
else
	func_usage
fi




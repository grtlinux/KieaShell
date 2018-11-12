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
	echo "############################# START: tomcat7.sh start ###########"
	./tomcat7.sh        start
	echo ""
	echo ""
	echo "############################# START: vb23mysql.sh start ###########"
	./vb23mysql.sh      start
}

#
# function: func_stop
#
func_stop()
{
	echo "############################# STOP: tomcat7.sh stop ###########"
	./tomcat7.sh        stop
	echo ""
	echo ""
	echo "############################# STOP: vb23mysql.sh stop ###########"
	./vb23mysql.sh      stop
}

#
# function: func_status
#
func_status()
{
	echo "############################# STATUS: tomcat7.sh status ###########"
	./tomcat7.sh        status
	echo ""
	echo ""
	echo "############################# STATUS: vb23mysql.sh status ###########"
	./vb23mysql.sh      status
}


# =========================================================
# entry point
#

if [ $# -gt 0 ];
then
	CMD=`echo $1 | tr 'A-Z' 'a-z'`
	# echo "   * command ---> $CMD"
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




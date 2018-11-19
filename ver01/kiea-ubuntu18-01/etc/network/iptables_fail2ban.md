iptables
========

- [Ubuntu iptables로 방화벽 port 설정하기](http://freestrokes.tistory.com/44 "Ubuntu iptables로 방화벽 port 설정하기")

```
1. 모든 포트 차단

	$ sudo iptables -A INPUT -p tcp --dport 0:65535 -j DROP
	$ sudo iptables -A INPUT -p udp --dport 0:65535 -j DROP
	
2. 특정 포트만 열어주기

	$ sudo iptables -I INPUT -p tcp --dport 80 -j ACCEPT
	$ sudo iptables -I OUTPUT -p tcp --sport 80 -j ACCEPT

3. 특정 IP에 특정 포트만 열어주기

	$ sudo iptables -I INPUT -p tcp --dport 80 -s 111.222.333.444 -j ACCEPT
	$ sudo iptables -I OUTPUT -p tcp --dport 80 -d 111.222.333.444 -j ACCEPT

4. TCP 8080 포트를 80 포트로 redirect

	$ sudo iptables -A INPUT -i eth0 -p tcp --dport 80 -j ACCEPT
	$ sudo iptables -A INPUT -i eth0 -p tcp --dport 8080 -j ACCEPT
	$ sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080

5. iptables 정보를 재부팅 이후에도 동작하도록 설정하기

	$ sudo mkdir /iptables_rule
	$ sudo sh -c "iptables-save > /iptables_rule/iptables.rules"
	$ sudo vi /etc/network/interfaces
		.....
		pre-up iptables-restore < /iptables_rule/iptables.rules
	$
	
	iptables-persistent를 통해 패키를 설치하고 이용할 수도 있다.
	
	$ sudo apt install iptables-persistent
	$ sudo netfilter-persistent save
	$ sudo netfilter-persistent reload
```

- [iptables를 사용한 방화벽 설정](https://luvery93.github.io/articles/2018-02/iptables-setting-in-ubuntu "iptables를 사용한 방화벽 설정")

```
	#!/bin/bash
	# iptalbes 초기화
	iptables -F

	# TCP PORT 22 를 열어 SSH 접속을 가능 하도록 설정
	iptables -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT

	# 기본 정책 설정
	iptables -P INPUT DROP
	iptables -P FORWARD DROP
	iptables -P OUTPUT ACCEPT

	# localhost 접속 허용
	iptables -A INPUT -i lo -j ACCEPT

	# established and related 접속 허용
	iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

	# DNS TCP 53 / UDP 53
	iptables -A INPUT -p tcp --dport 53 -j ACCEPT
	iptables -A INPUT -p udp --dport 53 -j ACCEPT

	# FTP passive mode
	iptables -A INPUT -p tcp --dport 21 -j ACCEPT
	iptables -A OUTPUT -p tcp --sport 21 -j ACCEPT
	iptables -A INPUT -p tcp --dport 1024:65535 -j ACCEPT
	iptables -A OUTPUT -p tcp --sport 1024:65535 -j ACCEPT

	# 80, 443 포트 개방
	iptables -A INPUT -p tcp --dport 80 -j ACCEPT
	iptables -A INPUT -p tcp --dport 443 -j ACCEPT

	# 설정 내용 저장
	service iptables save

	# 설정 내용 출력
	iptables -nL
```

- [iptables](https://blog.lael.be/post/69 "iptables")

```
	-A(--append)       : 규칙을 추가한다.
	-N(--new-chain)    : 새로운 체인 생성
	-X(--delete-chain) : 체인 제거
	-P(--policy)       : 체인 기본정책 변경
	-L(--list)         : 체인의 규칙상태 보기
	-F(--flush)        : 체인 내의 모든 규칙 제거(방화벽 초기화)
	-Z(--zero)         : 체인 내의 모든 규칙의 패킷과 바이트의 카운트를 0로 초기화
	-D(--delete)       : 규칙을 삭제
	-R(--replace)      : 새로운 규칙으로 대체
	-I(--insert)       : 체인의 가장 처음에 규칙을 추가한다.
	-E(--rename-chain) : 체인의 이름을 변경한다.

	- 기본규칙을 허용(allow)로 설정하기
		$ sudo iptables -P INPUT ALLOW
		$ sudo iptables -P OUTPUT ALLOW
		$ sudo iptables -P FORWARD ALLOW
	
	- iptables 모두 초기화
		$ sudo iptables -F
		$ sudo iptables -X
		$ sudo iptables -Z
```

- port forwarding:    -t nat(NAT 내부네트워크)

```
	$ sudo iptables -A PREROUTING -t nat -p tcp -d 호스트서버 --dport 호스트포트 -j DNAT --to 포워딩내부아이피:포트번호
	
	< forward >
	$ sudo iptables -A PREROUTING -t nat -p tcp -d 192.168.2.11 --dport 80 -j DNAT --to 192.168.2.50:8080
	$ sudo iptables -A FORWARD -p tcp -d 192.168.2.11 --dport 80 -j ACCEPT
	
	< check >
	$ sudo iptables -L PREROUTING -t nat
	$ sudo iptables -L FORWARD

	< delete >
	$ sudo iptables -D PREROUTING 1 -t nat      <- 순번은 반드시 확인하기 바람.
```

- [우분투 방화벽 설정 및 iptables](https://auctionpro.co.kr/?p=1950 "우분투 방화벽 설정 및 iptables")

----------

- [fail2ban](https://blog.rapid7.com/2017/02/13/how-to-protect-ssh-and-apache-using-fail2ban-on-ubuntu-linux/ "")

```
	- logpath  : name of the logfile that fail2ban checks for failed login attempts
	- maxretry : maximum number of failed login attempts before a host is blocked by fail2ban
	- bantime  : specifies the number of seconds that a remote host will be blocked by fail2ban
	- findtime : the time period in seconds in which we're counting "retries"
	- ignoreip : this is the list of ip address that can not be blocked by fail2ban

	$ sudo apt update
	$ sudo apt upgrade
	$ sudo apt install fail2ban

	$ sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
	$ sudo vi /etc/fail2ban/jail.local
		.....
		
		##To block failed login attempts use the below jail. 
		[apache] 
		enabled = true 
		port = http,https 
		filter = apache-auth 
		logpath = /var/log/apache2/*error.log 
		maxretry = 3 
		bantime = 600 
		ignoreip = 192.168.15.189

		##To block the remote host that is trying to request suspicious URLs, use the below jail. 
		[apache-overflows] 
		enabled = true 
		port = http,https 
		filter = apache-overflows 
		logpath = /var/log/apache2/*error.log 
		maxretry = 3 
		bantime = 600 
		ignoreip = 192.168.15.189

		##To block the remote host that is trying to search for scripts on the website to execute, use the below jail. 
		[apache-noscript] 
		enabled = true 
		port = http,https 
		filter = apache-noscript 
		logpath = /var/log/apache2/*error.log 
		maxretry = 3 
		bantime = 600 
		ignoreip = 192.168.15.189

		##To block the remote host that is trying to request malicious bot, use below jail. 
		[apache-badbots] 
		enabled = true 
		port = http,https 
		filter = apache-badbots 
		logpath = /var/log/apache2/*error.log 
		maxretry = 3 
		bantime = 600 
		ignoreip = 192.168.15.189

		##To stop DOS attack from remote host. [http-get-dos] 
		enabled = true 
		port = http,https 
		filter = http-get-dos 
		logpath = /var/log/apache*/access.log 
		maxretry = 400 
		findtime = 400 
		bantime = 200 
		ignoreip = 192.168.15.189 
		action = iptables[name=HTTP, port=http, protocol=tcp]

		##To block the failed login attempts on the SSH server, use the below jail. 
		[ssh] 
		enabled = true 
		port = ssh 
		filter = sshd 
		logpath = /var/log/auth.log 
		maxretry = 3 
		bantime = 600 
		ignoreip = 192.168.15.189
		.....
		
	$ sudo vi /etc/fail2ban/filter.d/http-get-dos.conf

		# Fail2Ban configuration file 
		[Definition]

		# Option: failregex 
		# Note: This regex will match any GET entry in your logs, so basically all valid and not valid entries are a match. 
		# You should set up in the jail.conf file, the maxretry and findtime carefully in order to avoid false positives. 
		failregex = ^<HOST> -.*"(GET|POST).* 
		# Option: ignoreregex 
		ignoreregex =

	$ sudo service fail2ban restart
	
	$ sudo iptables -L
	
		 Chain fail2ban-apache (1 references) 
		 target prot opt source destination 
		 RETURN all -- anywhere anywhere
		 
		 Chain fail2ban-apache-badbots (1 references) 
		 target prot opt source destination 
		 RETURN all -- anywhere anywhere
		 
		 Chain fail2ban-apache-noscript (1 references) 
		 target prot opt source destination 
		 RETURN all -- anywhere anywhere
		 
		 Chain fail2ban-apache-overflows (1 references) 
		 target prot opt source destination 
		 RETURN all -- anywhere anywhere
		 
		 Chain fail2ban-http-get-dos (1 references) 
		 target     prot opt source               destination          
		 RETURN     all  --  anywhere             anywhere            
		 Chain fail2ban-ssh (1 references) 
		 target prot opt source destination 
		 RETURN all -- anywhere anywhere
 
	$ sudo fail2ban-client status
	
		Status 
		|- Number of jail: 5 
		`- Jail list: apache, apache-overflows, apache-badbots, apache-noscript, http-get-dos, ssh

	$ sudo fail2ban-client status apache

		Status for the jail: apache 
		|- filter 
		| |- File list: /var/log/apache2/*error.log 
		| |- Currently failed: 0 
		| `- Total failed: 3 
		`- action 
		|- Currently banned: 1 
		| `- IP list: 192.168.15.196 
		`- Total banned: 1

	$ ab -n 1000 -c 20 http://192.168.2.15:8080/
	
	$ tail -f /var/log/fail2ban.log

	$ sudo fail2ban-client status http-get-dos

		Status for the jail: http-get-dos 
		|- filter 
		| |- File list: /var/log/apache2/access.log 
		| |- Currently failed: 0 
		| `- Total failed: 1000 
		`- action 
		 |- Currently banned: 1 
		 | `- IP list: 192.168.15.196 
		 `- Total banned: 1

	DOS> pssh 192.168.2.15

		root@192.168.15.189's password: 
		Permission denied, please try again. 
		root@192.168.15.189's password: 
		Permission denied, please try again. 
		root@192.168.15.189's password: 
		Permission denied, please try again. 
		root@192.168.15.189's password: 
		ssh: connect to host 192.168.15.189 port 22: Connection refused

	$ sudo fail2ban-client status ssh

		Status for the jail: ssh |- filter 
		| |- File list: /var/log/auth.log 
		| |- Currently failed: 1 
		| `- Total failed: 4 
		`- action 
		 |- Currently banned: 1 
		 | `- IP list: 192.168.15.196 
		 `- Total banned: 1

	$ sudo fail2ban-client set ssh unbanip 192.168.1.50
	$ sudo fail2ban-client set apache unbanip 192.168.1.50
```



















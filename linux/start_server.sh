#!/bin/bash


select=$1


select_start=''

#httpd服务的端口号
httpd_port="80"
nginx_port="8081"


#start httpd
start_httpd(){
	systemctl  restart httpd
}


#start nginx
start_nginx(){
	systemctl restart nginx
}

#stop httpd
stop_httpd(){
	systemctl  stop httpd
}


#stop nginx
stop_nginx(){
	systemctl stop nginx
}


#判断httpd是否启动成功
verify_httpd(){

	#接收传递的参数
	httpd_status=$1
#	echo $httpd_status
	#3：判断是否启动成功; 
	#ps:netstat命令查出来的数据，是否包含80端口即可判断是否启动成功

	if [[ $httpd_status =~ $httpd_port ]];then
		return 1
	else
		return 0
	fi
	
}


#判断nginx是否启动成功
verify_nginx(){

	#接收传递的参数
	nginx_status=$1

	#3：判断是否启动成功; 
	#ps:netstat命令查出来的数据，是否包含80端口即可判断是否启动成功

	if [[ $nginx_status =~ $nginx_port ]];then
		return 1 #成功返回1
	else
		return 0 #失败返回0
	fi

	return 0 #失败返回0
}


#启动主函数
run(){

#start or stop httpd

if [ $select == "start" ];then

	echo "###########正在启动httpd#########"

	#1：执行启动httpd的命令
	start_httpd

	
	#2：查看是否启动成功，如果启动成功必定包含一个端口号
	httpd_status=`netstat -ntpl | grep httpd`

	#取出80端口号
	httpd_80=$(echo $httpd_status |grep -Po "80") #httpd_80=80


#	echo $httpd_status
#	echo $httpd_80


	#3：验证是否启动成功
	verify_httpd $httpd_80

	#取出返回值
	httpd_start_status=`echo $?`
#	echo $httpd_start_status

	if [ $httpd_start_status == "1"  ];then
		echo "######httpd已启动成功，正在启动nginx#####"

		#如果httpd启动成功了再启动nginx
		start_nginx

		#查看nginx是否启动成功
		start_nginx

		#判断是否启动成功

		nginx_status=`netstat -ntpl | grep nginx`

		#提取出来8081
		nginx_8081=$(echo $nginx_status |grep -Po "8081") #nginx_8081=8081


		#验证是否成功
		verify_nginx $nginx_8081

		#接收返回值

		verify_nginx_status=`echo $?`


		if [ $verify_nginx_status == '1' ];then
			echo "启动nginx和httpd成功啦"
		else
			echo "启动httpd成功，启动nginx失败"
		fi

		

	else
		echo "启动httpd失败啦"

	fi


else

	echo "###########正在停止httpd#########"



	echo "###########已停止httpd#########"

fi


}

run

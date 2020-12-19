
target_file="/etc/profile"
java_home="/soft/jdk1.8.0_271"

echo "" >> $target_file
echo "" >> $target_file
echo "" >> $target_file
echo "#JDK配置开始---------" >> $target_file


echo "export JAVA_HOME=$java_home" >> $target_file
echo "export CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar"  >> $target_file
echo "export PATH=\$PATH:\$JAVA_HOME/bin"  >> $target_file

echo "#JDK配置结束---------" >> $target_file

source $target_file

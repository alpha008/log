Git clone https://github.com/google/glog.git
cd glog
mkdir build
cd build
make
make install

运行效果：
I1213 22:27:20.794492 31030 test_main.cpp:12] it is info
I1213 22:27:20.794590 31030 test_main.cpp:14] number <  10
I1213 22:27:20.794622 31030 test_main.cpp:16] log i = 0
I1213 22:27:20.794651 31030 test_main.cpp:16] log i = 5
I1213 22:27:20.794680 31030 test_main.cpp:16] log i = 10
I1213 22:27:20.794708 31030 test_main.cpp:16] log i = 15
W1213 22:27:20.794823 31030 test_main.cpp:18] It is error info
E1213 22:27:20.794857 31030 test_main.cpp:19] It is error info
I1213 22:27:20.794883 31030 test_main.cpp:20] it is debug mode
I1213 22:27:20.794883 31030 test_main.cpp:23] RAW: it is pthread log
3 说明：
3.1 log输出说明
I0228 20:03:53.824311  1721 test_main.cpp:15] it is info

输出信息对应
I日期 时：分：秒.微秒 线程号 源文件名：行数] 信息
I是log等级首字母

3.2 log文件名说明
sample： sample.sa02.jw.li.log.INFO.20180228-194622.995 
<program name>.<hostname>.<user name>.log.<severity level>.<date>.<time>.<pid>

其实对应google::InitGoogleLogging(argv[0])；中的argv[0]，即通过改变google::InitGoogleLogging的参数可以修改日志文件的名称。

3.3 log等级（severity level）
INFO(=0)

3.4 条件输出
LOG_IF(INFO, number < 10) << "number <  10";

当number > 10条件成立时，“ “number < 10”才会输出
LOG_EVERY_N(INFO, 5) << “log i = ” << i;
当程序中周期性的记录日志信息，在该语句第1、6、11……次被执行的时候，才会打印该log

3.5 debug模式下使用的宏
glog提供特定的宏只在debug模式下生效。以下分别对应LOG、LOG_IF、DLOG_EVERY_N操作的专用宏。

   DLOG(INFO) << "Found cookies";
   DLOG_IF(INFO, num_cookies > 10) << "Got lots of cookies"; 
   DLOG_EVERY_N(INFO, 10) << "Got the " << COUNTER << "th cookie";

g++ test_main.cpp ./lib/libglog.a -I./include -DDEBUG -lpthread -o sample
加上-DDEBUG 编译参数

3.6 线程安全log宏
glog提供了线程安全的日志记录方式。在<glog/raw_logging.h>文件中提供了相关的宏，如，RAW_CHECK，RAW_LOG等。这些宏的功能与CHECK，LOG等一致，除此以外支持线程安全，不需要为其分配任何内存和提供额外的锁（lock）机制。

RAW_LOG(INFO, "it is pthread log");

3.7 通过符号变量配置glog
FLAGS_log_dir=".";   //设置log目录  没有指定则输出到控制台
FLAGS_logtostderr = 1;  //输出到控制台

在程序中，通过修改全局变量(使用前缀”FLAGS_”)来设置符号变量
大多数符号变量修改后会立即生效
与输出位置有关(如FLAGS_log_dir)，如果要生效需要在google::InitGoogleLogging()之前设置

符号变量包括：
logtostderr(bool,default=false),                                 只输出到STDERR而不写入日志文件
stderrthreshold(int,default=2,which is ERROR)，高于该级别的日志除写入日志文件还输出到STDERR
minloglevel(int,default=0,which is INFO)，          低于该级别的日志消息不输出
log_dir(string,default="")，                                      日志输出目录
v(int,default=0)，                                                       小于等于该值的VLOG(m)会被输出，否则不会输出
vmodule(string,default="")，                                    可为源文件定制VLOG日志输出级别
max_log_size(int,default=1800)，                            日志文件最大值(单位MB)
log_link(string,default="")，                                     日志文件的连接所在的文件夹
stop_logging_if_full_disk(bool,default=false)，     如果磁盘写满是否停止记录日志
alsologtoemail(string,default="")，                          是否将日志额外发送邮件到指定地址
logemaillevel(int,default=999)，                               设置发送邮件的日志等级
logmailer(string,default="/bin/mail")，                  发送邮件程序
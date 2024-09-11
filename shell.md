### 变量
开头要写shell类型
#!/bin/bash
##### 系统变量
系统变量，如$HOME,$PWD,$SHELL, $USER等，由系统定义好的。  
可以通过set指令查看所有的系统变量
##### shell 变量定义
定义：变量名=值 没有空格
清除 unset 变量名
声明静态变量： readonly 变量, 不能被初始化

A=`data` # 相当于eval(data)
等价于 A=$(data)

#### 设置环境变量
在/etc/profile 里面
export 变量名=值
source 配置文件  让配置文件立即生效
echo $变量名  查询是否设置成功

#### 位置参数变量
$n  $0: 命令本身 $1-$9 代表第一个参数到第九个参数  ${10}后面要用大括号
$*  将所有的参数看成一个整体
$@  所有参数，但是分别对待
$#  参数的个数

#### 预定义变量
$$ 当前进程的PID
$! 后台运行最后一个进程的PID
$? 最后执行的命令是否成功执行。0表示成功，其他的表示不成功。

#### 运算符
$((x+y)) or $[x-y] or expr x-y
赋值 z=`expr x-y`
乘法 expr x\*y  # 有个转义符

#### 条件判断
[ condition ]  中括号前后有空格
[ condition ] && echo OK || echo notok
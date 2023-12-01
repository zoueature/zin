# Jin

### Http接口接口开发框架

### Dependencies
1. wire
> go install github.com/google/wire/cmd/wire@latest

### Install
> git clone git@gitlab.jiebu.com:base/jin.git youProjectname

### 初始化
### 生成实例化构建文件
> cd wire && wire gen  
> 或者 make wire
#### 安装依赖包
1. 删除原有go.mod (可选, 不重置的化， 对应项目的module为`gitlab.jiebu.com/base/jin`)
> rm -f go.*

2. 拉取依赖
> go mod init  
> go mod tidy

#### 在main.go中修改对应路由和配置文件的引用
> rename gitlab.jiebu.com/base/jin/conf => youConfigPkg  
> rename gitlab.jiebu.com/base/jin/route => youRoutePkg


#### 配置文件初始化
> make config

#### 启动
> make run

### 相关目录模块概述
+ wire 相关实例的依赖注入和实例化操作 
+ route 业务路由注册
+ conf 配置文件及其数据结构定义
+ app 相关业务接口实现
  + api 控制器层接口实现， 即Http handler的实现
  + dto api接口出入参的数据结构定义
  + entity 数据库结构的定义
  + repo 数据库相关操作的定义, (所有的repo都要用interface封装一层， 以免需要更换数据存储层)
  + service 业务逻辑的定义



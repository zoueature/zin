# Jin

### Http接口接口开发框架

### Install
```go
git clone https://github.com/jiebutech/jin.git youProjectname
```

### 初始化
#### 安装依赖包
```go
go mod init
go mod tidy
```

#### 配置文件初始化
```go
make config
```

### 相关目录模块概述
+ wire 相关实例的依赖注入和实例化操作 
+ route 业务路由注册
+ conf 配置文件及其数据结构定义
+ app 相关业务接口实现
  + api 控制器层接口实现， 即Http handler的实现
  + dto api接口出入参的数据结构定义
  + entity 数据库结构的定义
  + repo 数据库相关操作的定义
  + service 业务逻辑的定义



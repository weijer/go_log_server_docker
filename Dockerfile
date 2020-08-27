# 使用scratch开启
FROM scratch

MAINTAINER weijer

RUN mkdir -p /app

# 配置工作目录
WORKDIR /app/

# 拷贝配置文件
COPY ./config/* /app/config

# 拷贝编译程序
COPY go_log_server /app/

RUN chmod 777 go_log_server

# 运行!
CMD ["/app/go_log_server"]

# 打开8080端口
EXPOSE 8080
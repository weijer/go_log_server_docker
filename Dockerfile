# 使用scratch开启
FROM scratch

MAINTAINER weijer

# 拷贝配置文件
COPY ./config/* /config

# 拷贝编译程序
COPY go_log_server .

# 运行!
CMD ["./go_log_server"]

# 打开8080端口
EXPOSE 8080
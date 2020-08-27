# 使用scratch开启
FROM scratch

# 拷贝配置文件
COPY /config/application.yml //config/

# 拷贝编译程序
COPY /go_log_server //

# 打开8080端口
EXPOSE 8080

# 运行!
ENTRYPOINT ["/go_log_server"]
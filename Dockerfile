# 使用阿里云 dockerfile 语法镜像，避免 registry-1.docker.io 超时
# syntax=registry.cn-hangzhou.aliyuncs.com/docker/dockerfile:1

# 使用阿里云官方 Python 镜像（从官方库拉取）
FROM registry.cn-hangzhou.aliyuncs.com/dockerhub/python:3.11-slim



# 设置工作目录
WORKDIR /app

# 复制 requirements.txt 并安装依赖（使用清华源加速）
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# 拷贝整个项目
COPY . .

# 暴露 Django 默认端口
EXPOSE 8000

# 启动 Django 开发服务器
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

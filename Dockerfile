

# 使用轻量级 Python 运行环境
FROM python:3.11-slim

# 设置工作目录
WORKDIR /app

# 复制项目依赖文件
COPY requirements.txt /app/

# 安装依赖
RUN python -m pip install --upgrade pip -i https://mirrors.aliyun.com/pypi/simple && \
    pip install --no-cache-dir -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple
# 复制项目所有代码到容器中
COPY . /app/

# 暴露端口（根据你的项目）
EXPOSE 8000

# 启动命令（如果是 Django）
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

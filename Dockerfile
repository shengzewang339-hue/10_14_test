# 使用官方Python运行时作为基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 复制requirements.txt并安装依赖
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目文件
COPY . /app

# 暴露端口
EXPOSE 8000

# 运行Django开发服务器
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
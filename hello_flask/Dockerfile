FROM python:3.8-slim
WORKDIR /APP
COPY . .
RUN pip install flask pymysql
EXPOSE 5002
CMD ["python", "mysqlapp.py"]
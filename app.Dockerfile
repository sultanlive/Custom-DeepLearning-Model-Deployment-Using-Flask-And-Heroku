FROM python:3.6
WORKDIR /usr/src/app
COPY . ./
ENV TZ=Asia/Almaty
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN pip install -r requirements.txt
EXPOSE 8080
CMD python app.py

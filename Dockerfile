from alpine

RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ curl tzdata \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& curl -fsSL 'https://github.com/george518/PPGo_Job/releases/download/V2.6.0/PPGo_Job-v2.6.0-linux-amd64.tar.gz' -o /PPGo_Job.tar.gz \
&& mkdir -p /PPGo_Job \
&& tar -xf /PPGo_Job.tar.gz -C /PPGo_Job --strip-components=1 \
&& rm /PPGo_Job.tar.gz 
EXPOSE 8080
WORKDIR /PPGo_Job
CMD ["sh","./run.sh" ,"start"]
#ENTRYPOINT ["sh","./run.sh" ,"start"]

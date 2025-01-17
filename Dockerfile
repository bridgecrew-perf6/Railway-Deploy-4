FROM ryoishin/cyborg:debian
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg git
RUN pip install -r https://raw.githubusercontent.com/TeamXrnav/Cyborg/master/requirements.txt
COPY . .
COPY ./Cyborg.sh .
ADD ./Cyborg.sh .
CMD ["bash","Cyborg.sh"]

FROM don1900/AngelBot:latest

#clonning repo 
RUN git clone https://github.com/don1900/AngelUserbot.git /root/angelbot

#working directory 
WORKDIR /root/angelbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","angelbot"]

FROM il2horusteam/wine

RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com DFA175A75104960E
RUN apt update && apt install -y zip curl xvfb
RUN curl https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip > steamcmd.zip
RUN unzip steamcmd.zip

RUN chown root /home/wine/.wine32
RUN ls /home/wine/.wine32

RUN xvfb-run wine steamcmd.exe +login anonymous +quit ; exit 0
RUN xvfb-run wine steamcmd.exe +login anonymous +app_update 1247090 +quit ; exit 0
ENV DISPLAY=10.144.167.140:0.0
COPY start_stormworks.bat .
# RUN wine steamcmd.exe

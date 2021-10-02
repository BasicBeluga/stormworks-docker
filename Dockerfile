FROM il2horusteam/wine

COPY steamcmd.exe .

RUN chown root /home/wine/.wine32
RUN ls /home/wine/.wine32
ENV DISPLAY=172.26.48.1:0.0
RUN wine steamcmd.exe +login anonymous +quit ; exit 0
RUN wine steamcmd.exe +login anonymous +app_update 1247090 +quit ; exit 0
# RUN wine steamcmd.exe

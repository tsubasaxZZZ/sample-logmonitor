FROM mcr.microsoft.com/windows/servercore:ltsc2019
#LogMonitor directory contains LogMonitor.exe and LogMonitorConfig.json file
COPY LogMonitor/ C:/LogMonitor
WORKDIR /LogMonitor
SHELL ["C:\\LogMonitor\\LogMonitor.exe", "cmd", "/S", "/C"]
RUN mkdir C:\Logs
CMD c:\windows\system32\ping.exe -t localhost > C:\Logs\ping.log
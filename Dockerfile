# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/core/sdk:3.1
# EXPOSE 80
# EXPOSE 443
COPY app/ App/
WORKDIR /App
#RUN chmod +x ./entrypoint.sh
#CMD /bin/bash ./entrypoint.sh
ENTRYPOINT ["dotnet", "sample_app.dll", " --urls \"http://0.0.0.0:5000\""]
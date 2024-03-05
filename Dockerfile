FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app1

COPY ./bin/Release/net8.0/linux-x64/publish .

ENTRYPOINT ["dotnet", "MinimalApiOnCe.dll"]

EXPOSE 5000

ENV ASPNETCORE_URLS=http://*:5000

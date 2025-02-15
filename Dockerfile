FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["Umbraco9Docker.csproj", "./"]
RUN dotnet restore "Umbraco9Docker.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet publish "Umbraco9Docker.csproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
EXPOSE 80
ENV ASPNETCORE_URLS=http://+:80
COPY --from=build /app/publish .

ENTRYPOINT ["dotnet", "Umbraco9Docker.dll"]

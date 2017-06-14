#Use an official dotnet sdk as a base image
FROM microsoft/dotnet:1.1.1-sdk

#Set 'dotnet' as entrypoin to behave exclusively as a dotnet app
#ENTRYPOINT ["dotnet"]

#Copy the content in ./API/Dumb_Core_API in the container
#COPY . /API/Dumb_Core_API

#Set ./API/Dumb_Core_API as working directory
WORKDIR /API/Dumb_Core_API

COPY ./bin/Debug/netcoreapp1.1/publish .

#Expose port 80 for the Web API traffic
ENV ASPNETCORE_URLS http://+:80

#Make port 80 available to the outside world
EXPOSE 80

#Run dotnet restore command to compile the project
#RUN dotnet restore

#Execute 'run' command 
#CMD [ "run"]

ENTRYPOINT ["dotnet", "DumbCoreApi.dll"]

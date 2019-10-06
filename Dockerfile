FROM mcr.microsoft.com/dotnet/core/sdk:3.0

RUN echo Restore started on `date`
RUN dotnet restore WebAppForCICD/WebAppForCICD.csproj
RUN echo Build started on `date`
RUN dotnet publish -c release -o ./build_output WebAppForCICD/WebAppForCICD.csproj

# Use the official .NET runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app

# Copy the publish folder into the container
COPY ./publish /app

# Expose the port your app listens on
EXPOSE 80

# Set the entry point to run your application
ENTRYPOINT ["dotnet", "WebApplication1.dll"]

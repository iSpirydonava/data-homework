FROM streamsets/datacollector:3.9.1
# My custom configured sdc.properties
RUN mkdir /input 
COPY /input /input

docker run -d -P --name streamsets-dc streamsets/datacollector
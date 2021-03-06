## Introduction

This system is real-time distributed system which processes large amounts of user behavioral data. It tracks user clicks on each screen. After collecting and analyzing all these data the system provides the following statistics:
- Average clicks count users perform during a given time period
- Average time users spent on the appropriate screen

## Components
- [DataSimulator](https://github.com/distributed-analytics-system/DistributedSystem-DataSimulator/blob/main/README.md) - Simulates user behavioral data, specifically user clicks with timestamp per each screen and sends to DataReceiver for further processing
- [DataReceiver](https://github.com/distributed-analytics-system/DistributedSystem-DataReceiver/blob/main/README.md) - Receives huge amount of user behavioral raw data and stores them into Amazon S3
- [DataProcessor](https://github.com/distributed-analytics-system/DistributedSystem-DataProcessor/blob/main/README.md)  - Reads raw data from S3, normalizes, aggregates and saves into the persistent database(Amazon DynamoDB)
- [DataAnalyzer](https://github.com/distributed-analytics-system/DistributedSystem-DataAnalyzer/blob/main/README.md) - Works with processed data, analyzes it and provides the required statistics

## Architecture diagram of the system

![Architecture diagram](./docs/diagrams/ArchDiagram.png)

## Sequence diagram of the system

![Sequence diagram](./docs/diagrams/SequenceDiagram.png)

## Datastores in use

1. Amazon DynamoDB - Used as a persistent database to keep normalized data to provide statistics
2. Amazon S3 - Used as an intermediate data store to keep the user behavioral raw data

## Run the system locally

In order to run the system locally you will need to instal [Docker](https://docs.docker.com/get-docker/) on your machine. After the installation, open the terminal and run the following commands.

```sh
git clone https://github.com/distributed-analytics-system/DistributedSystem.git
cd DistributedSystem
docker-compose up
```

## Test the system locally

In order to test the system, import postman collections from **test** folder and make the SimulateDataGeneration request to generate user behavioral data and process through the system. It will take few mins to process all the data depeneding on the parameters you provided while generating. After that you can make GetAverageClickCount or GetAverageTimeSpent request to see the statistics(please pick some correct user-uuid from logs to be able to find statistics). Another way is to make SendEvents request and then use the same user-uuid in get requests.

## Maintainer contact
- vahagsaribeyan@gmail.com

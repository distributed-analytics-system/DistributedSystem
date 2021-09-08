# Service level objectives

SLOs are being created with keeping user journeys in mind.

### User journey 1

**Description:** Save user behavioral data
**Journey Type:** Request/Response
**User Goal:** Successfully save user clicks through DataReceiver microservice
**Journey Flow:** 
- Aggregate user behavioral data
- Send them to DataReceiver microservice

**SLI Type:** Availability
**SLI Specification:** The 99.95% of valid requests will be served successfully
**SLI Implementation:** Possible implementations are below
- Custom metrics
- Log metrics
- Infrastructure metrics

**SLO:** Requests to save user behavioral data will be served successfully 99.95% of the time over the trailing year
**SLA:** Service credits if the requests to save user behavioral data succeeds less then 99.9% of the time over the trailing year

### User journey 2

**Description:** Save user behavioral data
**Journey Type:** Request/Response
**User Goal:** Successfully save user clicks through DataReceiver microservice
**Journey Flow:** 
- Aggregate user behavioral data
- Send them to DataReceiver microservice

**SLI Type:** Request Latency
**SLI Specification:** Requests to save user behavioral data will be served in less then 200ms 99.95% of the time
**SLI Implementation:** Possible implementations are below
- Custom metrics
- Infrastructure metrics

**SLO:** Requests to save user behavioral data will be served in less then 200ms 99.95% of the time over the trailing year
**SLA:** Service credits if the requests to save user behavioral data served less then 99.9% in less then 200ms of the time over the trailing year

### User journey 3

**Description:** Get average click count user made for a given time period
**Journey Type:** Request/Response
**User Goal:** Successfully get average click count user made through DataAnalyzer microservice
**Journey Flow:** 
- Select time period
- Get average click count through DataAnalyzer microservice

**SLI Type:** Availability
**SLI Specification:** The 99.95% of valid requests will be served successfully
**SLI Implementation:** Possible implementations are below
- Custom metrics
- Log metrics
- Infrastructure metrics

**SLO:** Requests to get average click count will be served successfully 99.95% of the time over the trailing year
**SLA:** Service credits if the requests to get average click count succeeds less then 99.9% of the time over the trailing year

### User journey 4

**Description:** Save user behavioral data
**Journey Type:** Request/Response
**User Goal:** Successfully get average click count user made through DataAnalyzer microservice
**Journey Flow:** 
- Select time period
- Get average click count through DataAnalyzer microservice

**SLI Type:** Request Latency
**SLI Specification:** Requests to get average click count will be served in less then 200ms 99.95% of the time
**SLI Implementation:** Possible implementations are below
- Custom metrics
- Infrastructure metrics

**SLO:** Requests to get average click count will be served in less then 200ms 99.95% of the time over the trailing year
**SLA:** Service credits if the requests to get average click count served less then 99.9% in less then 200ms of the time over the trailing year

### User journey 5

**Description:** Get average time user spent on a specific screen
**Journey Type:** Request/Response
**User Goal:** Successfully get average time user spent on a specific screen through DataAnalyzer microservice
**Journey Flow:** 
- Select specific screen
- Get average click count through DataAnalyzer microservice

**SLI Type:** Availability
**SLI Specification:** The 99.95% of valid requests will be served successfully
**SLI Implementation:** Possible implementations are below
- Custom metrics
- Log metrics
- Infrastructure metrics

**SLO:** Requests to get average time user spent on a specific screen will be served successfully 99.95% of the time over the trailing year
**SLA:** Service credits if the requests to get average time user spent on a specific screen succeeds less then 99.9% of the time over the trailing year

### User journey 6

**Description:** Get average time user spent on a specific screen
**Journey Type:** Request/Response
**User Goal:** Successfully get average time user spent on a specific screen through DataAnalyzer microservice
**Journey Flow:** 
- Select time period
- Get average click count through DataAnalyzer microservice

**SLI Type:** Request Latency
**SLI Specification:** Requests to get average time user spent on a specific screen will be served in less then 200ms 99.95% of the time
**SLI Implementation:** Possible implementations are below
- Custom metrics
- Infrastructure metrics

**SLO:** Requests to get average time user spent on a specific screen will be served in less then 200ms 99.95% of the time over the trailing year
**SLA:** Service credits if the requests to get average time user spent on a specific screen served less then 99.9% in less then 200ms of the time over the trailing year

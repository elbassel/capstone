# Capstone- Cloud DevOps
URL: http://aea2344d3ea8e4487ab0ef1fb6bc3cf1-636550757.us-west-2.elb.amazonaws.com:3000/

## Piplelines:
Passed successfully
![Voucher Pool](screenshots/00pipelines.png)

## Docker Hub:
![Voucher Pool](screenshots/deployment_service.png)


## Deployment - Service
![Voucher Pool](screenshots/deployment_service.png)


## Strategy:
Rollingout:
``` 
strategy:
    type: RollingUpdate
    rollingUpdate:
       maxSurge: 25%
       maxUnavailable: 25%
```
![Voucher Pool](screenshots/rolling_out.png)

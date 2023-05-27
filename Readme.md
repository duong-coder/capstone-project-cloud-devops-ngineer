# Url app
http://a932f652adc2d49afa6d5a39d66aa12e-1792238619.us-east-1.elb.amazonaws.com:3000/

# Propose and Scope the Project
1. My pipeline
    | Build --> Push --> Deploy
2. Use Circle CI for Continuous Integration phase.
3. Deployment type: blue/green deployment.
4. Application: nodejs sample application

# Pick AWS Kubernetes as a Service.
1. ```eksctl``` 
2. ```kubectl``` 

# Build pipeline
1. Steps in CircileCI: 
    - build: Build app and lint Dockerfile
    - push: Build and push docker image
    - deploy: Deploy and expose app to AWS EKS
2. Configure a deployment pipeline
    - ```.circleci/config.yml```
3. Dockerfile
    - ```./backend/Dockerfile```

# Test pipeline
1. On CircleCi
![CircleCi](./screenshots/circleci_all_stages_passed_successfully.png)

2. AWS EC2
![AWS EC2](./screenshots/AWS_EC2.png)

3. kubectl command output
![AWS EC2](./screenshots/kubectl_command_output.png)

- Loadbalancer service
![AWS EC2](./screenshots/kubectl_command_output_service.png)

4. Browser
![AWS EC2](./screenshots/access_page_loadbalancer.png)

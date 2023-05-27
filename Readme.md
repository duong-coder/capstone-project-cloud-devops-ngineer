# delete cluster
eksctl delete cluster --region=us-east-1 --name=eksctl-casptone

AKIASLHNR6TPL2ZVF5VA: DC4hdfc8/b26AjGDS/9oYQ91Fsdm9hyAfuUM5vZe
duongnhdocker:duongdocker

docker build --tag capstone-project .
docker image list
export DOCKER_PATH=$DOCKER_PATH
export DOCKER_PASS=$DOCKER_PASS
echo "Docker ID and Image: ${DOCKER_PATH}"
echo "${DOCKER_PASS}" > ./my_password.txt

cat ./my_password.txt | docker login --username "${DOCKER_PATH}" --password-stdin
docker image tag "capstone-project" "${DOCKER_PATH}/capstone-project"
docker image push "${DOCKER_PATH}/capstone-project"


https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/


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
# wercker-kubernetes-ecr

## Setting up ECR

Create the repository in ECR by running the following:
```sh
$ aws cloudformation create-stack --stack-name cities-ecr --template-body file://cloudformation-ecr.yml --region us-east-1
```

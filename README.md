# wercker-kubernetes-ecr

Wercker + Kubernetes + ECR

## Setting up ECR

Create the repository in ECR by running the following:
```sh
$ aws cloudformation create-stack --stack-name cities-ecr --template-body file://cloudformation-ecr.yml --region us-east-1
```
## Workflow

The [workflow](http://devcenter.wercker.com/docs/workflows) can be set up on Wercker to the following pipelines for deployment:

```
build => push-ecr => deploy
```

And for rolling updates:

```
build => push-ecr => rolling-update
```

aws ecr get-login-password --region  us-east-1  | docker login --username AWS --password-stdin [aws-account-id].dkr.ecr.us-east-1.amazonaws.com

# log in with different profile
aws ecr get-login-password --profile sandbox  | docker login --username AWS --password-stdin {sandbox-account-id}.dkr.ecr.us-west-2.amazonaws.com

# find ARN of a repository
aws ecr describe-repositories --profile=sandbox --repository-name=app-directory-api
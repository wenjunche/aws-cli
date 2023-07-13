aws ecr get-login-password --region  us-east-1  | docker login --username AWS --password-stdin [aws-account-id].dkr.ecr.us-east-1.amazonaws.com

# find ARN of a repository
aws ecr describe-repositories --profile=sandbox --repository-name=app-directory-api
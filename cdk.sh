
# bootstrap with specific account
# "sandbox" needs to be defined in ~/.aws/config and ~/.aws/credentials
cdk bootstrap aws://sandbox-account_number/us-west-2 --trust primary-account-number --cloudformation-execution-policies "arn:aws:iam::aws:policy/AdministratorAccess"  --profile=sandbox

cdk synth --profile=sandbox

cdk deploy --profile=sandbox

cdk destroy --profile=sandbox

cdk diff --profile=sandbox

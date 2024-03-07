
# bootstrap 
cdk bootstrap aws://primary-account_number/us-west-2

# bootstrap with specific account
# "sandbox" needs to be defined in ~/.aws/config and ~/.aws/credentials
cdk bootstrap aws://sandbox-account_number/us-west-2 --trust primary-account-number --cloudformation-execution-policies "arn:aws:iam::aws:policy/AdministratorAccess"  --profile=sandbox

cdk synth --profile=sandbox

cdk deploy --profile=sandbox

cdk destroy --profile=sandbox

cdk diff --profile=sandbox

# show cached data
cdk context

# delete one item from cache data,  get item_number from last command
cdk context --reset item_number
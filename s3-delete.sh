
#aws s3api delete-object --bucket openfin-test --key sim/test.txt --version-id asdfasdfasdf --mfa "SERIAL 123456"
aws s3api delete-object --bucket openfin-test --key sim/test.txt 

aws s3api list-object-versions --bucket openfin-test --prefix  sim/test.txt 
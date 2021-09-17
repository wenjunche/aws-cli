#!/usr/bin/sh -x
aws s3api put-bucket-versioning --bucket cdn.openfin.co --versioning-configuration Status=Enabled,MFADelete=Enabled --mfa "SERIAL 123456"

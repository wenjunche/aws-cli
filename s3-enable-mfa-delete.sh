#!/usr/bin/sh -x
# SERIAL is serial number of the device
# followed by code displayed on the device
aws s3api put-bucket-versioning --bucket cdn.openfin.co --versioning-configuration Status=Enabled,MFADelete=Enabled --mfa "SERIAL 123456"

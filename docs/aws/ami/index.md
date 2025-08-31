# How to import an OVA image into AWS EC2

## Start machine on virtualization platform

## Do the installation

## Export vdi file into OVA

## Import OVA into AWS AMI

### Untar ova file

```bash
tar -xvf rocky10-arm-kde.ova
```

### Send vmdk file to AWS S3 bucket

```bash
aws s3 cp rocky10-arm-kde-disk001.vmdk s3://my-bucked-name/
```

### create role

```shell
aws iam create-role --role-name vmimport \
  --assume-role-policy-document '{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "vmie.amazonaws.com"
        },
        "Action": "sts:AssumeRole",
        "Condition": {
          "StringEquals": {
            "sts:ExternalId": "vmimport"
          }
        }
      }
    ]
  }'
```

### create a containers.json

```json
[
  {
    "Description": "Imported Rocky 10 OVA Image",
    "Format": "vmdk",
    "UserBucket": {
      "S3Bucket": "kwaza-desktop-images",
      "S3Key": "rocky10-arm-kde-disk001.vmdk"
    }
  }
]
```

### Import vmdk file into AWS AMI

```bash
aws ec2 import-image --description "Import rocky-10" --disk-containers  file://containers.json
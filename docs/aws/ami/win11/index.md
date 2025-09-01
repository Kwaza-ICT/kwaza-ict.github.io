# Create win11 AMI

## Prerequisites
- I´m using a Linux machine running Ubuntu 22.04 LTS.
- VirtualBox installed on your local machine.
- An AWS account with necessary permissions to create roles, S3 buckets, and import images.
- AWS CLI installed and configured on your local machine.

## First challenge

You can download a Windows 11 ISO from Microsoft's official website. However, to create an AMI, you need to convert the ISO into a format that AWS supports, such as VMDK or VHD.

### Step 1: Download Windows 11 ISO
You can download the Windows 11 ISO from the [Microsoft website](https://www.microsoft.com/software-download/windows11).

### Step 2: Convert ISO to VMDK or VHD
You can use tools like **VirtualBox** or qemu-img to convert the ISO to VMDK or VHD format.

#### Using VirtualBox

1. Create a new virtual machine in VirtualBox and attach the Windows 11 ISO as a bootable disk.
2. Install Windows 11 on the virtual machine.
3. It will ask for a product key, you can skip this step and continue the installation.
4. Once the installation is complete, shut down the VM.

## Second challenge

### Step 3: Export the VM to OVA
1. In VirtualBox, select the VM and go to `File` > `Export Appliance`.
2. Choose the VM you created and follow the prompts to export it as an OVA file.
3. Choose OVF 1.0 as the format and complete the export process. (AWS supports OVF 1.0)
4. From MAC Address Policy, choose **Strip all network adapter MAC addresses**. (When you import the VM to AWS, it will assign new MAC addresses to the network interfaces.)

### Step 4: Upload the OVA to S3

1. Create an S3 bucket in your AWS account to store the OVA file.
2. Upload the OVA file to the S3 bucket using the AWS Management Console or AWS CLI.

## Third challenge

### Step 5: Create an IAM Role for VM Import/Export

1. Create a role named `vmimport` with the following trust policy:

```json
{
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
}
```

2. Attach the following policy to the `vmimport` role:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetBucketLocation",
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Resource": [
        "arn:aws:s3:::your-bucket-name",
        "arn:aws:s3:::your-bucket-name/*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "ec2:ModifySnapshotAttribute",
        "ec2:CopySnapshot",
        "ec2:RegisterImage",
        "ec2:Describe*"
      ],
      "Resource": "*"
    }
  ]
}
```

### Step 6: Create a JSON file for the import task

Create a file named `containers.json` with the following content:

```json
[
  {
    "Description": "Imported Windows 11 Image",
    "Format": "vmdk",
    "UserBucket": {
      "S3Bucket": "your-bucket-name",
      "S3Key": "your-ova-file-name.ova"
    }
  }
]
```

### Step 7: Import the OVA to create an AMI

Use the following AWS CLI command to import the OVA file and create an AMI:

```bash
aws ec2 import-image \
    --description "Windows 11 Image" \
    --disk-containers file://containers.json \
    --boot-mode uefi
```

### Step 8: Monitor the import task

You can monitor the progress of the import task using the following command:

```bash
aws ec2 describe-import-image-tasks --import-task-ids import-ami-xxxxxxxxxxxx
```

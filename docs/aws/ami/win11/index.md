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



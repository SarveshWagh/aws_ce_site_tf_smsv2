#NOTE : Visual Studio code may throw errors that some arugments are not required here. You can ignore those errors.

# AWS Region
#CHANGE THIS
region = "eu-north-1"

# Base name for EC2 instances
# This should be same as the name of the Site / Cluster
#CHANGE THIS
cluster_name = "wagh-site"

# Suffix for EC2 instances
# This is the suffix for the node name. Full node name would be Base name for EC2 instances + Suffix for EC2 instances
#CHANGE THIS
ec2_instance_name_1 = "node-1"
ec2_instance_name_2 = "node-2"
ec2_instance_name_3 = "node-3"

# VPC and Subnet IDs (1st, 2nd, and 3rd instance in different subnets and AZs)
#CHANGE THIS
vpc_id     = "vpc-0622b6d152b9bddce"
subnet_id_1 = "subnet-0ffa9720d0aa1ef3b"  # For node-1
subnet_id_2 = "subnet-02b384d5ef1178d0d"  # For node-2
subnet_id_3 = "subnet-0ee6cdce07fa94c65"  # For node-3

# Availability Zones (one for each node)
#CHANGE THIS
az_name_1 = "eu-north-1a"
az_name_2 = "eu-north-1b"
az_name_3 = "eu-north-1c"

# Security Group
#CHANGE THIS
security_group_ids = ["sg-0fae4fb223cad9150"]

# Key Pair Name
#CHANGE THIS
key_pair = "mykey01"

# IAM Instance Profile to be attached to EC2
#CHANGE THIS
instance_profile_name = "f5-xc-test-role"

# AMI
#Below AMI ID is for eu-central-1
#CHANGE THIS
ami = "ami-0324d0b874c9e1abd"

# Instance Type
instance_type = "t3.xlarge"

# Storage
root_block_device = {
  volume_size = 80
}

# User Data (Cloud-init to write token to /etc/vpm/user_data)
#GENERATE TOKEN VALUE FROM XC CONSOLE
#USE PROXY IF NEEDED ELSE DELETE THAT LINE
#token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzaXRlX25hbWUiOiJzYXJ2ZXNod2FnaC1zaXRlIiwidGVuYW50X25hbWUiOiJzZGMtc3VwcG9ydC15cXBmaWR5dCIsInRva2VuX3V1aWQiOiI2NzU3NWQ5OS0yMDI0LTRhZjgtYmI2YS02OTRlMDE3OTllYjAiLCJodHRwX3Byb3h5IjoiMTU5LjYwLjE0MS4xNDA6NDQzIiwicmVnaXN0cmF0aW9uX3VybCI6InZlcy52b2x0ZXJyYS5pbyIsImRuc19zZXJ2ZXJzIjoiIiwibnRwX3NlcnZlcnMiOiIiLCJlbmFibGVfcmVfdHVubmVsIjpmYWxzZSwiaXNzIjoiRjUgWEMgU2l0ZSBNYW5hZ2VyIiwic3ViIjoiRjUgWEMgU2l0ZSBUb2tlbiIsImV4cCI6MTczNTgxMDU5NSwiaWF0IjoxNzM1NzI0MTk1fQ.UW56qccnBkEGsCot6DgyTXS9pXAr6us1e7KXTZxiYRU"
#proxy = "http://ec2-3-70-200-33.eu-central-1.compute.amazonaws.com:3128"

api_p12_file = "./sdc-support.console.ves.volterra.io.api-cred.p12"
api_url = "https://sdc-support.console.ves.volterra.io/api"
sms_v2_sitetoken = "my-site-token"

# Tags
#CHANGE THIS
tags = {
  "Environment" = "Development"
  "customer_tag_1" = "placeholder1"
  "Owner" = "testuser@example.com"
  "customer_tag_2" = "placeholder2"
}

# Timing delays (in seconds) for sequential instance creation
delay_between_nodes = 300  # 5 minutes
# Crash course
https://chatgpt.com/share/692c2793-714c-800d-b9ce-81175e879eea

# Resource: A resoruce is an object that terraform manages, etc a file or a service (ec2, IAM, lambda)

# Terraform uses HCL as its programming language (Hasicorp Configuration Language).

# Syantx
<block> <parameters> {
    key1 = value1
    key2 = value2
}

A block contains information such as platfrom and resources in the platform we want to create.


# Commands
terraform init => This command will check the path and initialize the working directory containing the .tf file. It will download the resource used to working on reosource provider.

terraform plan => This command will show the actions that will be caried out by terraform

terraform apply => This command will display the plan again and then ask the user to type yes to proceed to create the resource.

terraform show => show the resource created.

terraform destroy => Used to destroy resources.

terraform output => To print out the output variables. You must run terraform apply first.

terraform output <variable_name> => To print out a specific output variables.

# If you add a new provider. You must run the terraform init command
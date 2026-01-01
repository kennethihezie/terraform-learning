# Crash course
https://chatgpt.com/share/692c2793-714c-800d-b9ce-81175e879eea

# Resource: A resoruce is an object that terraform manages, etc a file or a service (ec2, IAM, lambda)

# Terraform uses HCL as its programming language (Hasicorp Configuration Language).

# Terraform state is a blueprint of the infrastructure that terraform mamges. Terraform state is the file Terraform uses to map your configuration to the real infrastructure it manages, tracking what exists so it can safely plan and apply changes. Its the single source of truth. Don't edit the state files. The state file also contains senstive informations.

# NOTE: When working on a team. Before running the terraform apply command every team member needs to have the latest terraform.tfsate file. Failure to do some will cause a lot of errors. It is recommended to save the terraform.tfsate file in a remote datasource eg s3 bucket, hashicorp consul, terraform cloud.

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

terraform validate => To validate the code syntax

terraform fm => To format the code

terraform providers => to see all providers used in the file

terraform refresh => To refresh the state. It does not change the state

terrafrom graph => Is used to show dependcies

# If you add a new provider. You must run the terraform init command

# Mutable vs Immuatable infratructure. Terraform uses Immuatable infratructure

# Lifecycle rules used to mangage how terraform apply changes to infratruces


# Resource vs Datasource
# Keyword: resource | keyword: data
# Creates, Updates, Destroys  | Only reads 
# Also called Managed resources | Aslo called Data resources
variable "filename" {
  default = "pet.txt"
  type = string
}

variable "content" {
  default = "Cat"
  type = string
}

variable "ip" {
  default = 10
  type = number
}

variable "condition" {
  default = true
  type = bool
}

variable "tags" {
  default = {
    Environment = "Development"
    Project     = "TerraformLearning"
  }
  type = map(string)
}

variable "lists" {
  default = ["item1", "item2", "item3"]
  type = list(string)
}

variable "tuple_data" {
  default = [1, "two", true]
  type = tuple([number, string, bool])
}

variable "object_data" {
  default = {
    name    = "Terraform"
    version = 1.0
    active  = true
  }
  type = object({
    name    = string
    version = number
    active  = bool
  })
}

# If no type is specified, Terraform infers it from the default value
variable "inferred_variable" {
  default = "I am inferred"
}

# This variable can be assigned a value during runtime or via a tfvars file. 
# if you define a file like <name>.auto.tfvars terrform automatically loads it.
# Using tfvars file is recommended for sensitive or environment-specific data
# We can also assign this variable via enviromnet variables eg:
# export TF_VAR_assign_varriable="Assigned via environment variable"
variable "assign_varriable" {
  type = string
}
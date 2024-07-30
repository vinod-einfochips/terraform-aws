# Terraform
 - It is used to create infrastructure.
 - Create file using vim Main.tf (HCL file)
 - Setup/install (Need to install plugins in terraform )
 ```
terraform init
 ```
 - Verify configuration script 
```
terraform validate
```
 - Resource actions for perform execution plan
```
terraform plan
```
 - Run Main.tf action to execute terraform
```
terraform apply
``` 
 
- Terraform States and Variables 
  - Variable:- variable.tf file create in same folder because main.tf file access the variable.
Example:
  ```
    variable "name" {
            default = "aws"   
    } 
    variable "list" {
            type = list 
            default = ["aws", "aws1"]  
    } 
    variable "map" {
            type = map 
            default = {
            "description" = "DevOps ..."
            "title" = "Devops"  
       }    
    }
   ``` 
  - States:- State is like a blueprint of the real world infrastructure with some unique id and attributes.
     - It is used to improve performance ,dependency management etc.
     - Meta argument: depends_on, count, for_each, provider,lifecycle
     - Remote backend and State file locking - it is used for state management and avoid conflict.Using a remote backend allows the state file to be stored in a centralized location, while state file locking ensures that only one user can modify the state at a time.

Example :- S3 bucket will store the state file, and the DynamoDB table will manage the state file locking.

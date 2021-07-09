This is a placeholder, information will be added later.

This section briefly explains how to ovveride default values for variables using `-var` argument. 

Can be used for both `plan` and `apply`.

*** Add a code snippet here with variable block and what is the idea of overriding it ***

e.g `terraform apply -var="instance_type=t2.micro" -var="aws_region=us-central-1" 

It is also possible to save this values to the plan output see below

terraform plan -var="instance_type=t2.micro" -out=plan.out
terraform appy plan.out

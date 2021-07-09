It is possible to use local environment variables to override the variables in terraform configuration file

following:

EXPORT TF_VAR_aws_region="eu-central-1"


Once you run the terraform plan or terraform apply the configuration file would look for the matching environment variable. You can override default terraform variables by this, similarly as CLI -var approach. However, this could be used in conjunction with credentials/passwords, as the variable is saved locally.
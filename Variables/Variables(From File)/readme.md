A typical use-case is that in real world scenarion appears:

You might have different environments, or different classifications of environments, e.g - prod, test, uat or staging. 


Then you can store the values of your variables in a file e.g - prod.tfvars 

And when executing terraform plan/apply commands you can specify the file instead of changing the values in static file, this provides more flexibility and visibility:

`terraform apply -var-file="prod.tfvars"`

Another available option is to use .auto.tfvars - terraform will automatically suck in the variables from file with this extension.
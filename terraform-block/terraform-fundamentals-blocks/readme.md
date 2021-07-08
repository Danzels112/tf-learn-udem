##### One of the code blocks available in Terraform is `terraform {}` block. This block can contain several settings to control the behaviour of `terraform` itself. Most common settings are:

* `required_version`
* `required_providers`

##### `required_version` controls which is the minimum version of terraform used at the time of provisioning resoruces. It is a best practice to have consistency along your environment, however, there are times when certain features are not available in older versions of terraform or vice versa. `required_providers` specifies the provider which will be used throughout configuration files. Please see example in `.tf` file in this directory.
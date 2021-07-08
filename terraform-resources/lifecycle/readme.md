# The `lifecycle` meta argument 
 


## Following section is briefly explaining use if lifeclycle {} block, which is a part of resource block in terraform.

#### `Lifecycle` block provides with three different options which can be provided as a arguments:

* ignore_changes
* prevent_destroy
* create_before_destroy


##### `ignore_changes` - Usually terraform would differ planned changes vs current environment, by specifying `ignore_changes = true`, resource in terraform configuration file would remain the same, even though it could be changed manually in environment. By this terraform will ignore planned updates for existing object.


##### `prevent_destroy` - Terraform will reject the changes of destroying object/resource in planning state, in other words - if `lifecycle` block includes `prevent_destroy = true`, it is not possible to destroy the resource via `terraform apply`.


##### `create_before_destroy` - By default terraform, if there is replacement of resource needed due to any reasons, would destroy resoruce and then create a new resource (REPLACEMENT), with `create_before_destroy = true` the flow would be vice versa Create --> Destroy.


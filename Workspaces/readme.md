Each Terraform configuration has an associated backend that defines how operations are executed and where persistent data such as the Terraform state are stored.

The persistent data stored in the backend belongs to a workspace. Initially the backend has only one workspace, called "default", and thus there is only one Terraform state associated with that configuration.

Common way to separate environments is by adding `${terraform.workspace}` variable to the naming conventions of your resources. It exctracts the current working workspace and adds to the name. Scenario like dev/test/prod workspaces, therefore environments, this approach could be utilized. 

Commands:


count = terraform.workspace == "default" ? 2 : 1 ( IF WORKSPACE IS DEFAULT, CREATE 2 INSTANCES, ELSE CREATE 1 INSTANCE)


`terraform workspaces list` - shows all the workspaces available in current directory.
`terraform workspaces show` - shows the current workspace where work is being done.

`terraform workspace new <workspaceName>` - creating a new workspace in current directory/env
`terraform workspace select <workspaceName>` - selecting workspace. `default` is the default workspace within terraform
`terraform workspace delete <workspaceName>` - deleting the workspace.




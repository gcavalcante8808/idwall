## Challenge Part 1: Terraform and GCP Compute Instances - Single Zone

This folder presents the terraform definitions needed to deploy the resources described in `https://github.com/idwall/desafios-devops/tree/master/terraform`.

#### Requirements

You need to provide the file `account.json` for an account-service with editor or owner on a google project and you need terraform installed.

#### Supported Params

The following params are support by the terraform configuration:

| Param Name        | Required | Default       |  Info                                                |
|-------------------|----------|---------------|------------------------------------------------------|
| region            | No       | "us-central1" | https://cloud.google.com/compute/docs/regions-zones  |
| zone              | No       | "us-west1-a"  | https://cloud.google.com/compute/docs/regions-zones  |
| ssh-authorized-ip | Yes      | --            | Ip or range using CIDR notation. Eg: 187.50.50.50/32 |

You can provide the values by using params with the CLI or by creating a `.tfvars` file as stated in `https://www.terraform.io/docs/configuration/variables.html`.

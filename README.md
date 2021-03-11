<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Usage

Creates IAM Billing Roles that can be assumed for billing operations.

Read the more about [IAM Tutorial: Delegate access to the billing console](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_billing.html)

```hcl
module "billing_roles" {
  source = "dod-iac/iam-billing-roles/aws"

  tags = {
    Application = var.application
    Environment = var.environment
    Automation  = "Terraform"
  }
}
```

## Terraform Version

Terraform 0.13. Pin module version to ~> 1.0.0 . Submit pull-requests to master branch.

Terraform 0.11 and 0.12 are not supported.

## License

This project constitutes a work of the United States Government and is not subject to domestic copyright protection under 17 USC § 105.  However, because the project utilizes code licensed from contributors and other third parties, it therefore is licensed under the MIT License.  See LICENSE file for more information.

## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.13.0 |
| aws | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_caller_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) |
| [aws_iam_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) |
| [aws_iam_group_membership](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) |
| [aws_iam_group_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) |
| [aws_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) |
| [aws_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) |
| [aws_iam_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) |
| [aws_iam_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_user) |
| [aws_partition](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) |
| [aws_region](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| billing\_full\_access\_users | The list of IAM users to assign to billing-full-access | `list(string)` | `[]` | no |
| billing\_view\_access\_users | The list of IAM users to assign to billing-view-access | `list(string)` | `[]` | no |
| tags | Tags applied to the IAM resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| billing\_full\_access\_group\_arn | The Amazon Resource Name (ARN) of the billing-full-access group. |
| billing\_full\_access\_role\_arn | The Amazon Resource Name (ARN) of the billing-full-access role. |
| billing\_view\_access\_group\_arn | The Amazon Resource Name (ARN) of the billing-view-access group. |
| billing\_view\_access\_role\_arn | The Amazon Resource Name (ARN) of the billing-view-access role. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

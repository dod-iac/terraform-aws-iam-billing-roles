
variable "billing_full_access_users" {
  type        = list(string)
  description = "The list of IAM users to assign to billing-full-access"
  default     = []
}

variable "billing_view_access_users" {
  type        = list(string)
  description = "The list of IAM users to assign to billing-view-access"
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to the IAM resources."
  default     = {}
}
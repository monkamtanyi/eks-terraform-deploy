################################################################################
# General Variables from root module
################################################################################
variable "cluster_name" {
  type    = string
  default = "dominion-cluster"
}

################################################################################
# Variables from other Modules
################################################################################

variable "vpc_id" {
  description = "VPC ID which EKS cluster is deployed in"
  type        = string
}

variable "private_subnets" {
  description = "VPC Private Subnets which EKS cluster is deployed in"
  type        = list(any)
}

################################################################################
# Variables defined using Environment Variables
################################################################################

variable "rolearn" {
  type        = string
  description = "rolearn id value"
  default = "arn:aws:iam::339712828145:role/eks_full_access"
}

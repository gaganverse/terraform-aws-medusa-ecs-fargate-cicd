variable "service_name" {
  description = "Name of the ECS service"
}

variable "desired_count" {
  description = "Number of ECS service tasks to run"
  type        = number
}

variable "ecs_cluster_name" {
  description = "ECS cluster name"
}

variable "ecr_repository_url" {
  description = "ECR Image URI"
}

variable "subnet_ids" {
  description = "List of Subnet IDs"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for the security group"
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}


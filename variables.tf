variable "vpc" {
  type        = map(any)
  description = "list of subnets"
  default = {
    vpc_1 = "10.0.0.0/16",
    vpc_2 = "10.1.0.0/16",
  }
}
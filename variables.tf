variable "name" {
  description = "REQUIRED: Intended domain name including TLD"
}
variable "visibility" {
  description = "public or private domain"
  default     = "private"
}
variable "vpc_id" {
  description = "vpcid of attached vpc"
  default     = null
}
variable "extra_tags" {
  type        = map(any)
  default     = {}
  description = "Placeholder to allow for additional custom tags to be passed into the module from the environment in map format"
}
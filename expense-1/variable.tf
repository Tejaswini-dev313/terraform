variable "instance_name" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
  default = "Z080878436X9Y63GYBAVN"
}

variable "domain_name" {
  default = "tejudevops.shop"
}
variable "instances" {
    type    = map
    default = {
        mysql   = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "zone_id" {
  default = "Z080878436X9Y63GYBAVN"
}

variable "domain_name" {
  default = "tejudevops.shop"
}
locals {
    domain_name     = "tejudevops.shop"
    zone_id     = "Z080878436X9Y63GYBAVN"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
    # count.index will not work in locals
}
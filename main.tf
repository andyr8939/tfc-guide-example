provider "aws" {
  version = "2.33.0"

  region = var.aws_region
}

provider "random" {
  version = "2.2"
}

resource "random_pet" "table_name" {}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/8"
  instance_tenancy = "default"

  tags = {
    user_name = var.tag_user_name
  }
}

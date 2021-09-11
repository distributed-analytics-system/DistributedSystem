terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "distributed-analytics-system"
  acl    = "public-read-write"
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "UserScreenTime"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "UserUuid"

  attribute {
    name = "UserUuid"
    type = "S"
  }
}

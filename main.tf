provider "aws" {
  region = "eu-central-1"
}

module "sns" {
  source  = "terraform-aws-modules/sns/aws"
  version = ">= 5.0"

  name       = "sebcel-chocoop-data-changes-topic-${var.environment}"
  fifo_topic = true

  tags = {
    application = "chocoop"
    module      = "chocoop-core"
    environment = var.environment
  }
}


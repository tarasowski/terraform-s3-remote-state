# aws s3api create-bucket --bucket techstarter-dimi-terraform-state --region us-east-1
#aws dynamodb create-table \
#    --table-name terraform-state-lock \
#    --attribute-definitions AttributeName=LockID,AttributeType=S \
#    --key-schema AttributeName=LockID,KeyType=HASH \
#    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 \
#    --region us-east-1

terraform {
  backend "s3" {
    bucket         = "techstarter-dimi-terraform-state"
    key            = "path/to/your-state-file.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}
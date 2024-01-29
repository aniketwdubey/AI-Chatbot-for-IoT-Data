resource "aws_s3_bucket" "mybucket" {
  bucket = "lex-chatbot-bucket-for-iot-data"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

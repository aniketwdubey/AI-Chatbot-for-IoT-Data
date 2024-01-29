resource "aws_lexv2models_bot" "IOTChatBot" {
  name = "IOTChatBot"
  data_privacy {
    child_directed = "false"
  }
  idle_session_ttl_in_seconds = 300
  role_arn                    = "arn:aws:iam::602917784174:role/aws-service-role/lexv2.amazonaws.com/AWSServiceRoleForLexV2Bots_I7S64VA609"

  tags = {
    foo = "bar"
  }
}
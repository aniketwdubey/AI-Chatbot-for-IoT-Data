resource "aws_lambda_function" "terraform_lambda" {
  function_name = "EnergyConsumptionTerraform"
  filename      = "lambda_function.zip"
  handler       = "lambda_function.lambda_handler"
  role          = aws_iam_role.lambda_role.arn
  runtime       = "python3.12"
  depends_on    = [aws_iam_role_policy_attachment.attach_cloudwatch_logs_policy_to_iam_role, aws_iam_role_policy_attachment.attach_s3_policy_to_iam_role]
}

resource "aws_iam_role" "lambda_role" {
  name               = "EnergyConsumptionRoleTerraform"
  assume_role_policy = <<EOF
{
 "Version": "2012-10-17",
 "Statement": [
   {
     "Action": "sts:AssumeRole",
     "Principal": {
       "Service": "lambda.amazonaws.com"
     },
     "Effect": "Allow",
     "Sid": ""
   }
 ]
}
EOF
}

resource "aws_iam_policy" "iam_policy_for_cloudwatch_logs" {
  name        = "CloudWatchLogsPolicy"
  path        = "/"
  description = "AWS IAM Policy for managing CloudWatch Logs"
  policy      = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:*:*:*",
      "Effect": "Allow"
    }
  ]
}
EOF
}


# reference the customer managed policy by its ARN. 
resource "aws_iam_role_policy_attachment" "attach_cloudwatch_logs_policy_to_iam_role" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.iam_policy_for_cloudwatch_logs.arn
}


# reference the AWS managed policy by its ARN. 
resource "aws_iam_role_policy_attachment" "attach_s3_policy_to_iam_role" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}



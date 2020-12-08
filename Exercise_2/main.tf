data "archive_file" "zip" {
  type        = "zip"
  source_file = "greet_lambda.py"
  output_path = "greet-lambda.zip"
}

resource "aws_lambda_function" "test_lambda" {
  filename      = data.archive_file.zip.output_path
  function_name = var.lambda_function_name
  role          = aws_iam_role.lambda_role.arn
  handler       = "greet_lambda.lambda_handler"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  source_code_hash = data.archive_file.zip.output_base64sha256

  runtime = "python3.8"
  environment {
    variables = {
      greeting = "Good Morning!"
    }
  }

  depends_on = [
    aws_iam_role_policy_attachment.lambda_logs,
    aws_cloudwatch_log_group.lambda_log_group
  ]
}

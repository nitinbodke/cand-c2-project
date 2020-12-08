output "lambda-function-id" {
  value = aws_lambda_function.test_lambda.id
}

output "lambda-log-group-id" {
  value = aws_cloudwatch_log_group.lambda_log_group.id
}

output "lambda-logging-policy-id" {
  value = aws_iam_policy.lambda_logging_policy.id
}

output "lambda-iam-role-id" {
  value = aws_iam_role.lambda_role.id
}

output "lambda-iam-role-policy-id" {
  value = aws_iam_role_policy.lambda_policy.id
}
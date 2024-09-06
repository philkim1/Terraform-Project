
resource "aws_lambda_function" "test_lambda" {
    function_name = "greet_lambda"
    s3_bucket = "aws-phil-bucket"
    s3_key = "lambda_function.zip"
    role = aws_iam_role.terraform-lambda.arn
    handler = "lambda_function.lambda_handler"
    runtime = "python3.12"
}
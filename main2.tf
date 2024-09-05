# TODO: Designate a cloud provider, region, and credentials

resource "aws_iam_role_policy" "lambda_policy" {
    name = "lambda_policy"
    role = aws_iam_role.terraform-lambda.id
    policy = file("lambda_policy.json")
}

resource "aws_iam_role" "terraform-lambda" {
    name = "terraform-lambda"
    assume_role_policy = file("role_policy.json")
}


data "aws_ssm_parameter" "sql_password" {
  name     = "/acceleris/passwords/dev/sql/password"
  #provider = aws.secrets
}

data "aws_ssm_parameter" "sql_username" {
  name     = "/acceleris/passwords/dev/sql/username"
  #provider = aws.secrets
}
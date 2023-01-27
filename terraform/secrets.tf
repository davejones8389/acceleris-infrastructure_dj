data "aws_ssm_parameter" "azure_service_principal_id" {
  name     = "/${var.project_name}/passwords/${var.environment}/azureserviceprincipal/client_id"
  #provider = aws.secrets
}

data "aws_ssm_parameter" "azure_service_principal_secret" {
  name     = "/${var.project_name}/passwords/${var.environment}/azureserviceprincipal/client_secret"
  #provider = aws.secrets
}

data "aws_ssm_parameter" "sql_password" {
  name     = "/${var.project_name}/passwords/${var.environment}/sql/password"
  #provider = aws.secrets
}

data "aws_ssm_parameter" "sql_username" {
  name     = "/${var.project_name}/passwords/${var.environment}/sql/username"
  #provider = aws.secrets
}
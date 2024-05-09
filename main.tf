resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type  = "String"
  key_id = "bc770a11-96d3-4f3a-8ce2-2856e8e6c0ca"
  overwrite = true
}
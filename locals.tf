locals {
    principalRoleArn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/voclabs"
    labRoleArn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/LabRole"
}
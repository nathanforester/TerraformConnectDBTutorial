output "db_endpoint" {
    value = aws_db_instance.db.endpoint
}

output "username" {
    value = "</>"
}

output "password" {
    value = nonsensitive("</>")
}            


output "db_name" {
    value = "</>"
}

output "instance_name" {
    value = aws_db_instance.db.arn
}
output "lab-resource-id" {
    value = aws_instance.xpto-instance[*].id
}

output "lab-resource-name" {
    value = aws_instance.xpto-instance[*].tags.Name
}

output "lab-resource-ip" {
    value = aws_instance.xpto-instance[*].private_ip
}
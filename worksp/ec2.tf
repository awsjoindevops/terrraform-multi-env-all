resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" # Devops practice 
  instance_type = lookup(var.instance_types,terraform.workspace)
  #vpc_security_group_ids = [aws_security_group.roboshop-all1.id]

  tags = {
    Name = "Workspace terraform"
  }
}

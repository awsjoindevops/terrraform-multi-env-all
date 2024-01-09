resource "aws_instance" "web" {   
   for_each =  var.instance_names
    ami           =  data.aws_ami.centos08.id        #"ami-03265a0778a880afb"  Devops practice 
    instance_type = each.value
 
  tags={
    Name = each.key
  }
}



 resource "aws_route53_record" "www" {
 for_each = aws_instance.web 
  zone_id = var.zone_id
  name    = "${each.key}.${var.cdn}"
  type    = "A"
  ttl     = 1
  records = [startswith(each.key, "web") ? each.value.public_ip : each.value.private_ip ]
}


# output "instance_info" {
#   value = aws_instance.web
  
# }
variable "instance_names" {  
type = map
  default = {
#   mongodb="t2.small"
#   redis="t2.micro"
#   mysql="t2.small"
#   web="t2.micro"
    }
}
  
variable "zone_id" {
  type = string
  default = "Z0052568278EYAYP4D07R"
  }

variable "cdn"{
  type=string
  default = "awsjoindevops.online"
}

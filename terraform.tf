resource "aws_instance" "prod_a" {
   ami = "ami-0bcc094591f354be2"
   instance_type = "t2.micro"
   key_name = "Essential_Key_Pair_AWS"
   tags = {
    Name = "Prod_A"
  }
}

resource "aws_instance" "prod_b" {
   ami = "ami-0bcc094591f354be2"
   instance_type = "t2.micro"
   key_name = "Essential_Key_Pair_AWS"
   tags = {
    Name = "Prod B"
  }
}

output "proda_ip"{
  value = aws_instance.prod_a.public_ip
}
output "prodb_ip"{
  value = aws_instance.prod_b.public_ip
}

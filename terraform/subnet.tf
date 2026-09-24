resource "aws_subnet" "eks_subnet_2" {
   vpc_id = "vpc-0603e2c4c78d4d7f2"
   cidr_block = "172.31.1.0/24"
   availability_zone = "ap-south-1a"
   tags ={
    Name = "eks-subnet-devops"
   }
}
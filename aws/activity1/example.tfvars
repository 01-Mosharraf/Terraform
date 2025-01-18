region   = "ap-south-1"
vpc_cidr = "10.0.0.0/16"

subnets_info = [{
  name = "web-1",
  cidr = "10.0.0.0/24",
  azs  = "ap-south-1a"
  },
  {
    name = "web-2",
    cidr = "10.0.1.0/24",
    azs  = "ap-south-1b"
  },
  {
    name = "app-1",
    cidr = "10.0.2.0/24",
    azs  = "ap-south-1a"
  },
  {
    name = "app-2",
    cidr = "10.0.3.0/24",
    azs  = "ap-south-1b"
  }
]
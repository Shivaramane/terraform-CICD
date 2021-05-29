//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/shivafa/compute/aws"
  version = "1.0.0"

  aws_region          = "us-east-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDtalEOwc9MO7/SYj02mrFZ+6dRaU1gt5CQRFFlbpHhWl+KTeFGUi/cv+3PXERNuOZsTR7M1mHXiETIGlu65xzxWJI4MeIfkj/VJt80sfbPLafCdy8nm5Bezwha8L3TOTeh2ohUCrI22+aFGw1z1my0Xi04eK7tocQuXVkc4fRDJ6s22sD4yv/UHeUV3KOzAKuoVyYJnCC/sRsiV/Gxp/RZRhsn0OiOLKsro3Zu6GzNYQjWG5YTfv53fD4QfCiDlW0I3h1s5mlOIE2El05Y10Q9VXpAW3Nm8i+NvJSNdrHebZXeY5f8ZsrDO8ED1MCVUXVAKqcN8mT6lV77NJ7jCVrR ubuntu@ip-172-31-30-81"
  public_sg           = module.networking.public_sg
  public_subnets      = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/shivafa/networking/aws"
  version = "1.0.0"

  access_ip  = "0.0.0.0/0"
  aws_region = "us-east-1"
}
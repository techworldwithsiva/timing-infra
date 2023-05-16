### Assignment

We are using the below services in this assignment.
* VPC
    * We selected 2 AZ for HA.
    * We create a VPC.
    * We create 2 public subnets, private subnets, database subnets.
    * We create internet gateway and attach to VPC.
    * We create public route table, private route table, database route table and attach to respective subnets.
    * We create EIP and NAT Gateway.
    * We add respective routes to all route tables.

![alt text](infra-services1.png)

Traffic flow is like below.

![alt text](timing.jpeg)
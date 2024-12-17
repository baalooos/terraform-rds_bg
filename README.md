# terraform-rds_bg

This repository provides a simple Terraform setup to test AWS RDS Blue-Green Deployments. The setup includes creating an RDS instance with configurable subnet IDs and associated resources.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) installed (version >= 1.0)
- AWS CLI configured with appropriate credentials
- An existing VPC and subnets in your AWS account

## Usage

### Clone the repository

   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

### Update the AWS provider

Review and update the file `provider.tf` according to your needs. In this example, we use the AWS profile `AdministratorAccess`.

### Modify the variable

Review and update the variables according to your needs.

The only variable you must modify is `subnet_ids`. It includes theIDs of the subnets where the RDS instance will be created.

### Initialize Terraform

```bash
terraform init
```

### Apply the Terraform configuration

```bash
terraform apply
```

Confirm the changes by typing `yes` when prompted.

### Test Blue-Green Deployment

Once your deployment is finished, try to change something in your RDS configuration. A simple change is the `db_instance`, from `db.t4g.micro` to `db.t3.micro`.

You can follow the change in the AWS Console.

## Cleanup

To destroy the resources created by Terraform, run:

```bash
terraform destroy
```

## Notes

- Ensure your AWS credentials have sufficient permissions to create RDS instances, subnets, and security groups.
- The `subnet_ids` must belong to a valid VPC.
- The default RDS configuration uses a MySQL engine; you can adjust it as needed.

## License

This project is licensed under the GPL V3.

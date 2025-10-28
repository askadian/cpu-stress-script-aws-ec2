# README.md

# CPU Stress CloudFormation Project

This project provides a CloudFormation setup to deploy a CPU stress testing script on an EC2 instance. It includes all necessary templates, scripts, and instructions to get started.

## Project Structure

- **templates/**: Contains CloudFormation templates for the stack.
  - `main.yaml`: Main template that defines the overall stack.
  - `ec2-instance.yaml`: Configuration for the EC2 instance.
  - `iam-roles.yaml`: IAM roles and policies for the EC2 instance.

- **scripts/**: Contains the scripts used in the deployment.
  - `cpu-stress-script.py`: Python script that performs CPU stress testing.
  - `user-data.sh`: Shell script for user data to install packages and run the CPU stress script.

- **parameters/**: Contains parameters for the CloudFormation stack.
  - `parameters.json`: Customizable parameters for stack creation.

- **ci/**: Continuous integration scripts.
  - `package-artifact.sh`: Script to package necessary files for deployment.

- **README.md**: Documentation for the project.

- **CHANGELOG.md**: Tracks changes and updates made to the project.

## Step-by-Step Instructions to Set Up on AWS Account

1. **Create an S3 Bucket**: 
   - Go to the S3 service in the AWS Management Console.
   - Create a new bucket to store your CloudFormation templates and artifacts.

2. **Upload CloudFormation Templates**:
   - Upload the `main.yaml`, `ec2-instance.yaml`, and `iam-roles.yaml` files to the S3 bucket.

3. **Create IAM Roles**:
   - Use the `iam-roles.yaml` template to create the necessary IAM roles for your EC2 instance.
   - Ensure that the roles have the required permissions to execute the CPU stress script.

4. **Launch the CloudFormation Stack**:
   - Go to the CloudFormation service in the AWS Management Console.
   - Create a new stack and select "Upload a template file".
   - Choose the `main.yaml` file from your S3 bucket.
   - Specify parameters such as instance type and key pair name in the parameters section.

5. **Configure EC2 Instance**:
   - The `ec2-instance.yaml` template will configure the EC2 instance to run the CPU stress script.
   - Ensure that the user data script (`user-data.sh`) is correctly set to install dependencies and execute the Python script.

6. **Deploy the CPU Stress Script**:
   - Use the `package-artifact.sh` script to package your application files and upload them to the EC2 instance.

7. **Monitor the Deployment**:
   - Check the CloudFormation stack events to monitor the deployment process.
   - Ensure that the EC2 instance is running and the CPU stress script is executing as expected.

8. **Test the Setup**:
   - SSH into the EC2 instance to verify that the CPU stress script is running correctly.
   - Monitor the CPU usage to confirm that the stress testing is functioning as intended.

9. **Cleanup**:
   - Once testing is complete, delete the CloudFormation stack and any associated resources to avoid incurring charges.
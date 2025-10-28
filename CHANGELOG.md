# CHANGELOG.md

# Changelog

## [Unreleased]
- Initial project setup with CloudFormation templates for deploying a CPU stress testing script on EC2.

## [1.0.0] - 2023-10-01
- Created main CloudFormation template (`main.yaml`) to define the overall stack.
- Added EC2 instance configuration template (`ec2-instance.yaml`) for CPU stress script execution.
- Defined IAM roles and policies in `iam-roles.yaml` for EC2 instance permissions.
- Developed the CPU stress testing script (`cpu-stress-script.py`).
- Implemented user data script (`user-data.sh`) for EC2 instance initialization.
- Created parameters file (`parameters.json`) for customizable stack parameters.
- Added CI script (`package-artifact.sh`) for packaging deployment artifacts.
- Documented project setup and usage in `README.md`.
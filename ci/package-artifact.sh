#!/bin/bash

# This script packages the necessary files and scripts into an artifact for deployment.

# Define variables
ARTIFACT_BUCKET="your-s3-bucket-name"
ARTIFACT_NAME="cpu-stress-artifact.zip"
SOURCE_DIR="../scripts"

# Create a zip file of the source directory
zip -r $ARTIFACT_NAME $SOURCE_DIR

# Upload the artifact to S3
aws s3 cp $ARTIFACT_NAME s3://$ARTIFACT_BUCKET/

# Clean up the local artifact
rm $ARTIFACT_NAME

echo "Artifact packaged and uploaded to S3 bucket: $ARTIFACT_BUCKET"
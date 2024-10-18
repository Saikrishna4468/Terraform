#!/bin/bash
apt update
apt install -y apache2

# Get the instance ID using the instance metadata
# INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Install the AWS CLI
apt install -y awscli

# Download the images from S3 bucket
#aws s3 cp s3://myterraformprojectbucket2023/project.webp /var/www/html/project.png --acl public-read

# Create a simple HTML file with the portfolio content and display the images
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terraform Load Balancer Test - Server 2</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            color: #444;
            text-align: center;
            margin-top: 100px;
        }
        h1 {
            color: #2980b9;
        }
        .server-id {
            color: #e74c3c;
            font-size: 1.5rem;
        }
        .author{
          color: black;
          font-size: medium;
        }
    </style>
</head>
<body>
    <h1>Terraform Load Balancer Test</h1>
    <p>This page is served by server:</p>
    <p class="server-id">Second Server ID: <strong>$(hostname -f)</strong></p>
    <p class="author">by: Sai Krishna Rajana</p>
</body>
</html>
EOF

# Start Apache and enable it on boot
systemctl start apache2
systemctl enable apache2
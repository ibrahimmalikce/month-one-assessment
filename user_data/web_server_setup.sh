#!/bin/bash
# Web Server Setup Script
# Installs Apache and creates a simple HTML page

# Update system packages
yum update -y

# Install Apache
yum install -y httpd

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Get the instance ID from AWS metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
AZ=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
PRIVATE_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)

# Create a simple HTML page showing instance details
cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>TechCorp Web Server</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            padding: 50px;
        }
        .container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            display: inline-block;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h1 { color: #232f3e; }
        p { color: #555; font-size: 18px; }
        .highlight { color: #ff9900; font-weight: bold; }
    </style>
</head>
<body>
    <div class="container">
        <h1>TechCorp Web Application</h1>
        <p>Instance ID: <span class="highlight">$INSTANCE_ID</span></p>
        <p>Availability Zone: <span class="highlight">$AZ</span></p>
        <p>Private IP: <span class="highlight">$PRIVATE_IP</span></p>
        <p>Status: <span class="highlight">Running</span></p>
    </div>
</body>
</html>
EOF

# Set correct permissions
chmod 644 /var/www/html/index.html
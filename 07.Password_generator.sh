
#!/bin/bash

# Set password length
echo "enter the length of the password"
read PASS_LENGTH

# Generate password
password=$(openssl rand -base64 48 | cut -c1-${PASS_LENGTH})

echo "Random Password: $password"
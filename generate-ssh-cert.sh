#generates ssh certs for the ssh server and client
#the script will prompt for a custom filename for the cert
#the script will also prompt for an optional email address to be included in the certificate comment


echo "NOTE: This script wil generate a SSH certificate using the ed25519 algorithm with a key size of 4096 bits. You can specify a custom filename for the certificate and an optional email address."
read -p "Enter a filename for the SSH certificate (without extension): " cert_filename
read -p "Enter an email address for the SSH certificate(if required): " sshkey_email

#path to save the generated SSH certificate 
key_path="$HOME/.ssh"

# Generate SSH key pair
echo "Generating SSH certificate..."
ssh-keygen -t ed25519 -b 4096 -f "$key_path/$cert_filename" -C "$sshkey_email"

#echo "SSH certificate generated: $cert_filename (private key) and $cert_filename.pub (public key)"

echo ""
echo "✅ SSH key generated!"
echo "   Private key: $key_path/$cert_filename"
echo "   Public key:  $key_path/$cert_filename.pub"
echo ""
echo "📋 Your public key:"
cat "$key_path/$cert_filename.pub"
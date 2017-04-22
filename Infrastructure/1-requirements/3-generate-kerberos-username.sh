echo "initializing Kerberos logging throught password"

echo -n "Enter the KDC hostname > "
read kdc_hostname

echo -n "Enter the kerberos username > "
read kerberos_username

echo -n "Enter a new password for this user > "
read kerberos_pass

kadmin -p admin/admin@$kdc_hostname kadmin -q "change_password -pw $kerberos_pass $kerberos_username"
#!/bin/bash
echo "Content-type: text/html"
echo ""
username=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[1]}' | awk '{split($0,array,"=")} END{print array[2]}'`
password=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[2]}' | awk '{split($0,array,"=")} END{print array[2]}'`
if [ -z "$(ls -A /home/$username)" ]; then
sudo useradd -m $username
echo $username:$password | sudo chpasswd
echo ""
cat <<EOT
<!DOCTYPE html>
<html>
<head>
<title>Linux</title>
</head>
<body>
<h2>Welcome $username </h1>
Username : $username <br />
Password : $password<br />
</body>
</html>
EOT
else
echo "Akun linux anda masukkan sudah ada pemiliknya"
fi

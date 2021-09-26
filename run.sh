#!/bin/bash
echo "Content-type: text/html"
echo ""
username=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[1]}' | awk '{split($0,array,"=")} END{print array[2]}'`
password=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[2]}' | awk '{split($0,array,"=")} END{print array[2]}'`
menit=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[3]}' | awk '{split($0,array,"=")} END{print array[2]}'`
cek=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[4]}' | awk '{split($0,array,"=")} END{print array[2]}'`
random=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 13 ; echo '')
line=$(head -n 1 kode.txt)
jam=$(date +"%M")
if [[ "$menit" != "$jam" ]]; then 
echo "Batas waktu pendaftaran dibatasi waktunya, silahkan diulangi lagi, batas waktu 1 menit atau kurang"
else
if [[ "$cek" != "$line" ]]; then 
echo "Kode keamanan berubah, silahkan refresh dan daftar kembali"
else
acak=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 13 ; echo '')
echo $acak > kode.txt
if [[ "${username}" =~ [^a-z0-9] ]]; then
echo "Username hanya boleh huruf dan angka"
else
if [[ "${password}" =~ [^a-z0-9] ]]; then
echo "Password hanya boleh huruf dan angka"
else
if [ -z "$(ls -A /home/$username)" ]; then
sudo useradd -m $username
echo $username:$password | sudo chpasswd
sudo mkdir /var/www/html/$username
sudo chown $username.$username /var/www/html/$username
sudo chmod 701 /var/www/$username
sudo cp -r /home/data/* /home/$username
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
<br />
Server ini ada di kantor PT. Kode Keamanan Indonesia<br />
<br />
Untuk akses terminal linux ; http://securityhub.id:2086<br />
Untuk akses untuk folder web server : /var/www/html/$username<br />
Untuk akses untuk alamat web kamu : http://securityhub.id:2095/$username<br />
<br />
https://xcode.or.id<br />
</body>
</html>
EOT
else
echo "Akun linux anda masukkan sudah ada pemiliknya"
fi
fi
fi
fi
fi

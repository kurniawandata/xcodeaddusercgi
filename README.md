# xcodeaddusercgi

![alt text](http://xcode.or.id/04_small-logo.png)

XcodeAddUserCgi adalah program untuk menambah user linux melalui web dengan cgi-bin sehingga server dedicated / VPS bisa diakses melalui terminal.

Cara menggunakan :
------------------

git clone https://github.com/kurniawandata/xcodeaddusercg

apt install apache2

sudo a2enmod cgi

Di /etc/sudoers tambahkan :

nano /etc/sudoers

www-data ALL=(ALL) NOPASSWD: ALL

Untuk hak akses di /usr/lib/cgi-bin

cd /usr/lib/cgi-bin

chown index.sh www-data.www-data

chown run.sh www-data.www-data

chmod u+x index.sh

chmod u+x run.sh

Peringatan : Jangan pernah install PHP di server kecuali tahu cara mengamankannya, untuk cara mengamankannya bisa menghubungi Kurniawan jika ingin pakai PHP.

Licensi
-------
GNU General Public License v3

Program ini dibuat oleh :
--------------------------------------------
Kurniawan. E-mail : kurniawanajazenfone@gmail.com
xcode.or.id


Donasi :
--------
Jika ingin donasi untuk Kurniawan

Gopay :

![alt text](https://kurniawan.xcode.or.id/gofood.png)

![alt text](https://kurniawan.xcode.or.id/gopay.png)

Ovo :

![alt text](https://kurniawan.xcode.or.id/ovo3.png)

![alt text](https://kurniawan.xcode.or.id/ovo2.png)


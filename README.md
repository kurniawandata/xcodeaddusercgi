# xcodeaddusercgi

![alt text](http://xcode.or.id/04_small-logo.png)

XcodeAddUserCgi adalah program untuk menambah user linux di cgi-bin sehingga server dedicated / VPS bisa diakses melalui terminal dengan pendaftaran lewat web.

Di /etc/sudoers tambahkan :
www-data ALL=(ALL) NOPASSWD: ALL

Untuk hak akses di /usr/lib/cgi-bin

chown index.sh www-data.www-data

chown run.sh www-data.www-data

chmod u+x index.sh

chmod u+x run.sh

Peringatan :

- Jangan pernah install PHP

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


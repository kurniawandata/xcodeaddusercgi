# xcodeaddusercgi

![alt text](http://xcode.or.id/04_small-logo.png)

XcodeAddUserCgi adalah program untuk menambah user linux melalui web dengan cgi-bin sehingga server dedicated / VPS bisa diakses melalui terminal.

XcodeAddUser Version 1.2

XcodeAddUserCgi dirancang untuk ubuntu server

Algoritma keamanan berbasis kode acak dan waktu dibuat oleh Kurniawan - xcode.or.id
---------------------------------------------------------------
- Kode acak dibuat oleh backend, index.sh akan mengambil kode rahasia tersebut, setelah dikirimkan dan pendaftaran berhasil maka kode diacak kembali, algoritma dan kode sumber ini dibuat oleh kurniawan.

- Algoritma waktu, di halaman registrasi hanya dibatasi 1 menit atau kurang, kode sumber dan algoritma ini dibuat oleh kurniawan.

- Filter hanya mendukung huruf dan angka untuk semua input.

- Filter pengecekan folder user sudah dibuat belum, jika sudah, maka ditolak, jika belum maka user dibuat.

Cara menggunakan :
------------------

git clone https://github.com/kurniawandata/xcodeaddusercgi

apt install apache2

sudo a2enmod cgi

nano /etc/sudoers

Di /etc/sudoers tambahkan :

www-data ALL=(ALL) NOPASSWD: ALL

Untuk hak akses di /usr/lib/cgi-bin

cd /usr/lib/cgi-bin

chown index.sh www-data.www-data

chown run.sh www-data.www-data

chmod u+x index.sh

chmod u+x run.sh

Peringatan : Jangan pernah install PHP di server kecuali tahu cara mengamankannya, untuk cara mengamankannya bisa menghubungi Kurniawan jika ingin pakai PHP.

Implementasi 
------------

https://freehacklab.xcode.or.id


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


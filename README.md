# SIMGOS-DOCKER

Merupakan repository wrapper SIMGOS agar bisa berjalan di atas docker
Target untuk development /learning only, tidak ada jaminan untuk production environment

## Bisa dan Tidak Bisa Bekerja

- Reports Bisa
- Plugin dll masih belum ditest
- Database Silahkan gunakan yang sudah ada / bukan fresh install / ambil dari fresh install
- Lainnya "You Tell Me"

### Persiapan

1. Install docker, rekomendasi menggunakan linux debian/ubuntu, dapat bekerja pada linux lain, ataupun Docker for Windows.
   PERHATIAN : Penggunaan Docker for Windows dianjurkan untuk menaruh seluruh file (semenjak git clone) yang dibutuhkan dalam wsl. Sehingga tidak ada mount ke arah File Windows. Hal ini dikarenakan ada penurunan performa jika mount terutama var/www/html dari windows.
2. gitclone atau download dan ekstrak repository ini
3. Download JavaBridgePHP dan extract, dan taruh JavaBridge.war di folder tomcat
   (Download di windows menggunakan download accelerator, atau di linux menggunakan aria2c)

### Fresh/Base Install

1. Pastikan Docker Terinstall
2. Pastikan Database Terinstall dan dapat diakses
3. Copy file package simgos\*x86_64.rpm ke folder z-tmp
4. extract menggunakan script `1a-*.sh`
5. lanjut ke script kedua `2-*.sh` dan script ketiga `3-*.sh`
6. Coba running menggunakan `docker compose up -d` tanpa menjalankan skrip selanjutnya

### Menggunakan Config Yang Sudah Ada

1. copy / edit config.php di folder php-fpm
2. uncomment mounting config.php di docker-compose.yml file

### Menggunakan "REPORTS" Yang Sudah Ada

1. copy folder reports ke base folder
2. uncomment line volume bind mount reports pada service php-fpm DAN tomcat di docker-compose.yml file
3. docker compose up -d

### Menggunakan Webfolder yang Sudah Ada

1. tar.gz /var/www/html/pada server lama dan ekstrak ke folder simgos-rpm pada base folder
2. docker compose up -d
3. Atau lakukan modifikasi pada folder ini sesuai keinginan, folder akan dimount oleh docker sebagai documentroot

### Menggunakan "DATABASE" Yang Sudah Ada

1. Hard Backup Database menggunakan Percona XtraBackup atau sejenisnya, lanjut dengan perintah prepare dan sejenisnya
2. Copy ke sebuah direktori, usahakan menggunakan archieve mode
3. Ubah line volume bind mount data db pada service mysql dan tujukan pada lokasi database (di docker-compose.yml file)
4. docker compose up -d

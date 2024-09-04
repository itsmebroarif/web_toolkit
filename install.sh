#!/bin/bash

# Nama folder utama
PROJECT_NAME="chitchat"

# Membuat direktori proyek dan struktur folder
mkdir -p $PROJECT_NAME/{css,js,assets,pages}

# Pindah ke direktori proyek
cd $PROJECT_NAME

# Inisialisasi proyek Node.js
npm init -y

# Instalasi Bootstrap dan SweetAlert
npm install bootstrap sweetalert

# Membuat file style.css di dalam folder css
cat <<EOL > css/style.css
/* Tambahkan style CSS Anda di sini */
body {
    font-family: Arial, sans-serif;
}
h1{
    text-align: center;
}
EOL

# Membuat file script.js dan fetch.js di dalam folder js
cat <<EOL > js/script.js
document.getElementById('alertButton').addEventListener('click', function() {
    swal("Hello world!");
});
EOL

cat <<EOL > js/fetch.js
// Tambahkan kode fetch API di sini jika diperlukan
// Contoh:
// fetch('https://api.example.com/data')
//     .then(response => response.json())
//     .then(data => console.log(data))
//     .catch(error => console.error('Error:', error));
EOL

# Membuat file index.html dengan referensi CSS dan JS yang sudah diinstall
cat <<EOL > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Project</title>
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container text-center mt-4 py-3">
        <h1 class="display-4">Berhasil Terpasang!</h1>
        <p>Silahkan edit langsung di <code>index.html</code></p>
        <button class="btn btn-primary" id="alertButton">Validasi Terlebih Dahulu</button>
    </div>

    <script src="node_modules/sweetalert/dist/sweetalert.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/fetch.js"></script>
</body>
</html>
EOL

# Memberi izin eksekusi pada skrip jika diperlukan
chmod +x setup.sh

echo "Setup selesai. Folder proyek, file CSS dan JS, serta file index.html sudah dibuat."

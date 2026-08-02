# Steam Seamless Spoofer (Modified SAM)

Ini adalah versi modifikasi dari [Steam Achievement Manager (SAM) by Gibbed](https://github.com/gibbed/SteamAchievementManager).

Modifikasi ini berfokus pada fitur **Seamless Spoofer / Auto-Idler**, yang memungkinkan kamu untuk menjalankan banyak game (nge-_boost_ jam main) secara bersamaan di _background_ tanpa adanya jendela UI yang mengganggu (_100% stealth & headless_).

## Fitur Utama Modifikasi

- **Headless Mode**: Menjalankan SAM tanpa UI utama agar tidak memakan layar.
- **Konfigurasi JSON**: Menggunakan file `games.json` untuk menentukan game apa saja yang ingin di-spoof.
- **Auto-Wait Steam**: Mencegah _error_ saat booting dengan mendeteksi otomatis kapan Steam siap berjalan.
- **VBS & Batch Scripts**: Skrip khusus (`spoofer-start.bat`, `spoofer-hidden.vbs`, dll) yang membuat proses _running_ dan menambahkan ke _Startup Windows_ semudah sekali klik.

## Cara Menggunakan (Untuk User)

Jika kamu hanya ingin menggunakan aplikasi ini tanpa mem-_build_ kode:

1. Pergi ke tab **Releases** di GitHub ini.
2. Download file `.zip` versi terbaru.
3. Ekstrak, lalu edit `games.json` dengan App ID game favoritmu.
4. Klik **`spoofer-hidden.vbs`** untuk mulai, dan **`spoofer-stop.bat`** untuk berhenti.

## Cara Build (Untuk Developer)

1. _Clone repo_ ini.
2. Buka `SAM.sln` di Visual Studio, atau gunakan perintah `dotnet build` (pastikan .NET SDK terinstal).
3. Hasil kompilasi akan berada di folder `bin`.

## Lisensi & Kredit

Perangkat lunak ini didistribusikan di bawah **zlib License** (`LICENSE.txt`).

- **Original Code & API**: Ditulis oleh Rick (gibbed).
- **Seamless Spoofer Mod**: Izumii99

Me do not claim to have written the original Steam Achievement Manager. This is a clearly marked altered source version.

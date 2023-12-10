# JAYJAY FINAL PROJECT

# PROYEK AKHIR UNTUK WEB API AUTOMATION DAN UI AUTOMATION

Langkah-langkah:

- Git dan GitHub
- Java
- Gradle
- Rest Assured
- Selenium
- Cucumber
- GitHub Actions

# Project:
Buatlah automation test framework dan simpan kodenya sebagai repository di GitHub. Automation test framework harus mengandung beberapa aspek yang di ikuti:

1. Buat test untuk Web API dan Web UI dalam satu repository
2. Test case untuk Web dan API harus menggunakan Gherkin Format, gunakan Cucumber sebagai library implementor
3. Buat folder package terpisah untuk Java Code, Step Definitions, dan Feature
4. Buat 2 Gradle Custom Task untuk menjalankan:
    - Eksekusi Cucumber API yang memiliki tag @api
    - Eksekusi Cucumber Web yang memiliki tag @web
5. Buat report menggunakan Cucumber untuk format HTML dan JSON
6. Buat GitHub Actions workflow untuk menjalankan test yang sudah dibuat dengan cara (event) manual trigger dan setiap kali ada Pull Request
7. Tambahkan file README.md

# Note:
Untuk Web UI Test gunakan website sebagai target dan pembuatan test scenario: https://www.demoblaze.com/

Untuk API test gunakan  public:

https://dummyapi.io/docs/user (Get User by ID, Create User, Update User, Delete User)

https://dummyapi.io/docs/tag (Get List of Tags)
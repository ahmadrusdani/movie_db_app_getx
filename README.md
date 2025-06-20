# 🎬 Movie DB App (Flutter + GetX)

A sample movie listing application built using [Flutter](https://flutter.dev), [GetX](https://pub.dev/packages/get), Hive for local storage, and TMDb API.

This app demonstrates clean architecture with layers: **data**, **domain**, and **presentation**, and includes **unit tests** for domain logic using mock repositories and JSON-based test fixtures.

---

| <img src="./assets/screenshot/Screenshot_1750398509.png" alt="Home Screen" width="200"/> | <img src="./assets/screenshot/Screenshot_1750398519.png" alt="Movie Details" width="200"/> | <img src="./assets/screenshot/Screenshot_1750398525.png" alt="Movie List" width="200"/> |
|:--:|:--:|:--:|
| Home Screen | Movie Details | Movie List |


## ✨ Features

- Browse movies by category (Popular, Top Rated, Upcoming)
- Movie details with cast information
- Clean Architecture implementation
- GetX for state management
- Responsive UI design
- Environment configuration
- Makefile support for common tasks

---

## 📦 Requirements

- Flutter SDK (3.2.++)
- Dart 3.2.+
- Android Studio or VS Code
- An Android/iOS emulator or physical device
- TMDb API key (if you want to integrate real API calls)

---

## 🔐 API Key Setup

Before running the app, you **must create a `.env` file** in the root directory containing your TMDb API key.

### Create `.env`

```env
API_KEY=your_tmdb_api_key_here
```

## 🛠 Installation Steps

### 1. Clone the Repository

```bash
git clone https://github.com/ahmadrusdani/movie_db_app_getx.git
cd movie_db_app_getx
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Add .env File

Create a .env file as described above to store your API key.

### 4. Run the App

You can run the app using the Makefile:

```bash
make run

or

flutter run
```

## 🧪 Running Unit Tests

This project includes unit tests for domain use cases like DetailMovie.

### ✅ Run All Tests

Using the Makefile:

```bash
make test

or manually:

flutter test
```

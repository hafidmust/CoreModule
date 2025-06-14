# CoreModule

CoreModule adalah modul dasar yang menyediakan komponen-komponen inti untuk aplikasi iOS.

## Fitur

- Network Service untuk menangani request API
- Base Models untuk response API
- Utility classes untuk format tanggal
- Base Views untuk UI yang konsisten
- Dependency Injection container

## Persyaratan

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## Instalasi

### Swift Package Manager

Tambahkan package berikut ke `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/YOUR_USERNAME/CoreModule.git", from: "1.0.0")
]
```

## Penggunaan

```swift
import CoreModule

// Menggunakan NetworkService
let networkService = NetworkService.shared
let response = try await networkService.fetch(GameResponse.self, from: "/games")

// Menggunakan BaseView
struct MyView: View {
    var body: some View {
        BaseView {
            Text("Hello World")
        }
    }
}

// Menggunakan AppModule
let container = AppModule.shared
```

## Lisensi

CoreModule tersedia di bawah lisensi MIT. Lihat file `LICENSE` untuk detail lebih lanjut. 

# 📱 Simple E-Commerce App

A simple E-Commerce application built with **Flutter**, showcasing categories, best-selling products, product details, and a custom bottom navigation bar.

---

## 🚀 Features

* 🔍 **Search Bar** 
* 🗂️ **Categories List** with horizontal scrolling
* 🛒 **Best Selling Grid** to display top products
* 📄 **Product Details Screen** (image, name, type, price, colors, sizes)
* 👆 **Custom InkWell** navigation to product details
* 🔻 **Custom Bottom Navigation Bar**
* 🎨 Clean and simple UI using Flutter Material widgets

---

## 📂 Project Structure

```
lib/
│
├── main.dart
│
├── screens/
│   ├── home_screen.dart
│   └── item_details_screen.dart
│
└── widgets/
    ├── custom_bottom_nav_bar.dart
    ├── custom_ink_well.dart
    ├── categories_list.dart
    └── card_item.dart
```

---

## 📦 Installation

1. Clone the repository

```bash
git clone https://github.com/your-username/simple_ecommerce.git
```

2. Navigate to the project folder

```bash
cd simple_ecommerce
```

3. Install dependencies

```bash
flutter pub get
```

4. Run the app

```bash
flutter run
```

---

## 🧩 Main Widgets Overview

### **main.dart**

Runs the app and loads `HomeScreen`:

```dart
MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
);
```

---

### **HomeScreen**

Includes:

* Search field
* Categories list
* Best-selling products GridView
* Custom bottom navigation bar

---

### **ItemDetails**

Displays:

* Product image
* Product type
* Product name
* Price
* Available colors
* Available sizes
* “Add To Cart” button

---

### **CustomInkWell**

A custom clickable widget that navigates to product details:

```dart
Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => ItemDetails(
      img: img,
      name: name,
      price: price,
    ),
  ),
);
```

---

### **CustomBottomNavBar**

Custom bottom navigation bar containing 3 tabs:

* Home
* Market
* Profile

---

### **CardItem**

A card widget used inside the GridView to display product info.

---

## 🛠️ Technologies Used

* **Flutter**
* **Dart**
* Material Design
* Stateful & Stateless Widgets
* Navigation
* Local Asset Images

---

## 📁 Assets

Add images in `pubspec.yaml`:

```yaml
assets:
  - assets/images/headphone.jpg
  - assets/images/watch.jpg
```

---

## 🤝 Contributing

Pull requests are welcome! Feel free to open an issue or submit improvements.


---

## ⭐ Give a Star

If you like this project, give it a ⭐ on GitHub!


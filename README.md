# 🍔 DearFoodies

**DearFoodies** is a beautiful restaurant ordering app built with **Flutter** and **Dart**. It features a modern pink-and-purple gradient design, a full signup/login flow, a searchable food menu with categories, and a user profile, all running from a single codebase on Android, iOS and web.

> Delicious food, delivered with love.

---

## 📸 App Screenshots and Details

Below is a screen-by-screen walkthrough of the app. Each section shows the screenshot followed by what the screen contains and how it behaves.

### 1. Splash Screen

![Splash](screenshots/splash.png)

- Full-screen **hot pink to deep purple gradient** background
- White restaurant icon, the **DearFoodies** name and the tagline "Delicious food, delivered with love"
- Stays for **2 seconds**, then moves automatically to the Login screen
- The user cannot go back to it (screen is replaced, not stacked)

### 2. Login Screen

![Login](screenshots/login.png)

- Gradient header with the logo and app name, with a rounded corner
- "Welcome Back!" heading and a short subtitle
- **Email** and **Password** fields with icons and validation messages
- Password field has a **show/hide** eye button
- Pressing **Enter** on the password field logs in
- Gradient **Login** button
- Shows a message if no account exists or if the email/password is wrong
- "Don't have an account? **Sign Up**" link opens the Signup screen

### 3. Sign Up Screen

![Signup](screenshots/signup.png)

- Gradient app bar titled "Create Account"
- Six fields: **Full Name, Email, Phone Number, Delivery Address, Password, Confirm Password**
- Validation rules:
  - Name and address cannot be empty
  - Email must contain `@`
  - Phone must have at least 10 digits
  - Password must be at least 6 characters
  - Confirm password must match the password
- Pressing **Enter** on the last field submits the form
- Details are saved in memory for the current session

### 4. Welcome Alert

![Welcome](screenshots/welcome.png)

- Appears after a successful signup
- Celebration icon with the title **"Welcome to my DearFoodies"**
- Personal message: "Hi *name*, your account has been created successfully!"
- **Let's Go** button closes the alert and opens the Home screen (previous screens are cleared)

### 5. Home Tab

![Home](screenshots/home.png)

- Gradient header with a personalised greeting: **"Hello, *first name*!"**
- **Special offer card** ("20% OFF on all pizzas this weekend")
- **Popular Dishes**: horizontally scrollable food cards, each with image, name, rating and price
- **See all** button jumps to the Menu tab
- **Why DearFoodies?** cards: Fast Delivery, Fresh Ingredients, Best Prices

### 6. About Tab

![About](screenshots/about.png)

- Gradient header with the restaurant icon
- Four information cards with round icons:
  - **Our Story**
  - **Our Mission**
  - **Opening Hours** (Monday to Sunday, 11:00 AM to 12:00 AM)
  - **Contact Us** (phone, email and address)

### 7. Menu Tab

![Menu](screenshots/menu.png)

- **Search bar** that filters dishes as you type
- **Category chips**: All, Burgers, Pizza, Fast Food, Desi (selected chip is highlighted)
- Responsive **grid of food cards** showing image, name, star rating and price
- Search and category work together
- Shows "No food found" when nothing matches
- Tapping a card opens the Food Detail screen

### 8. Food Detail Screen

![Detail](screenshots/detail.png)

- Gradient app bar with the dish name
- Large food image (icon shown if the image is missing)
- Dish name, price, category chip and star rating
- Full **description**
- Bottom bar with **minus / plus** quantity buttons (minimum 1)
- Gradient **Order** button showing the live total, for example "Order - Rs. 1100"
- Shows a confirmation message such as "Order placed: 2 x Cheese Burger"

### 9. Profile Tab

![Profile](screenshots/profile.png)

- Gradient header with a circular avatar showing the **first letter** of the user's name
- Name and email under the avatar
- Detail cards: **Name, Email, Phone, Delivery Address**
- **Logout** button returns to the Login screen and clears the navigation history

### Navigation Flow

```
Splash → Login ⇄ Sign Up → Welcome Alert → Main Screen
                                             ├── Home
                                             ├── About
                                             ├── Menu → Food Detail
                                             └── Profile → Logout → Login
```

---

## ✨ Features

- **Splash screen** with a gradient logo that moves automatically to Login
- **Login** with email and password validation
- **Sign Up** with full name, email, phone, delivery address, password and confirm password
- Pressing **Enter** on the last field submits the form
- **Welcome alert**: "Welcome to my DearFoodies" appears after successful signup
- **Home tab**: personalised greeting, special offer banner, popular dishes carousel, "Why DearFoodies?" cards
- **About tab**: story, mission, opening hours and contact details shown as cards
- **Menu tab**: live search bar, category filter chips and a responsive food grid
- **Food detail screen**: large image, price, rating, description, quantity selector and order button
- **Profile tab**: user avatar, saved details and logout
- **Bottom navigation bar** with Home, About, Menu and Profile
- **Gradient theme** (hot pink to deep purple) managed from one file
- Graceful **image fallback**: if a food image is missing, an icon is shown instead of crashing

---

## 🍽️ Menu

14 dishes across 5 categories:

| Category | Items |
|---|---|
| Burgers | Cheese Burger, Simple Burger |
| Pizza | Cheese Pizza, Chicken Pizza, Special Pizza |
| Fast Food | Chicken Nuggets, Chicken Sandwich, Fried Chicken, Shawarma |
| Desi | Chicken Biryani, Egg Biryani, Chicken Karahi, Seekh Kabab, Daal Chawal |

---

## 🛠️ Tech Stack

- **Framework:** Flutter (Material 3)
- **Language:** Dart
- **Navigation:** Navigator (push, pushReplacement, pushAndRemoveUntil)
- **State:** StatefulWidget and `setState`
- **Data:** Local in-memory data (no database yet)

---

## 📁 Project Structure

```
dearfoodies/
├── assets/
│   └── images/               # Food images (png)
├── lib/
│   ├── main.dart             # App entry point and theme
│   ├── app_colors.dart       # All colours and gradients
│   ├── data/
│   │   ├── food_data.dart    # Menu items and categories
│   │   └── user_data.dart    # Signed-up user details (in memory)
│   ├── models/
│   │   └── food.dart         # Food model
│   ├── screens/
│   │   ├── splash_screen.dart
│   │   ├── login_screen.dart
│   │   ├── signup_screen.dart
│   │   ├── main_screen.dart  # Bottom navigation
│   │   ├── home_tab.dart
│   │   ├── about_tab.dart
│   │   ├── menu_tab.dart
│   │   ├── profile_tab.dart
│   │   └── detail_screen.dart
│   └── widgets/
│       ├── custom_field.dart # Reusable text field
│       └── food_card.dart    # Reusable food card
└── pubspec.yaml
```

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- VS Code or Android Studio
- Chrome (to run on web) or an Android emulator / phone

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/rameenmirza3134-web/dearfoodies.git

# 2. Go into the project folder
cd dearfoodies

# 3. Install dependencies
flutter pub get

# 4. Run the app
flutter run -d chrome
```

Check available devices with `flutter devices`.

### Useful keys while running

| Key | Action |
|---|---|
| `r` | Hot reload |
| `R` | Hot restart |
| `q` | Quit |

---

## 🎨 Customising the Theme

All colours live in `lib/app_colors.dart`. Change the colour values or gradients there and the whole app updates.

## ➕ Adding a New Dish

1. Put the image in `assets/images/` (lowercase, underscores, e.g. `mango_shake.png`).
2. Add an entry to `lib/data/food_data.dart`:

```dart
Food(
  name: 'Mango Shake',
  price: 280,
  description: 'Thick and creamy shake made with fresh mangoes.',
  image: 'assets/images/mango_shake.png',
  category: 'Drinks',
  rating: 4.6,
),
```

3. If it is a new category, add its name to the `categories` list in the same file.
4. Restart the app (new images need a full restart, not hot reload).

---

## ⚠️ Current Limitations

- User details are stored **in memory only**, so they reset when the app closes.
- There is no cart or real payment yet. The Order button shows a confirmation message.

## 🗺️ Roadmap

- [ ] Shopping cart with multiple items
- [ ] Firebase Authentication (real login)
- [ ] Cloud Firestore for menu and orders
- [ ] Order history and tracking
- [ ] Favourites
- [ ] Admin panel to manage the menu
- [ ] Online payment

---

## 👩‍💻 Author

**Rameen Mirza**
GitHub: [@rameenmirza3134-web](https://github.com/rameenmirza3134-web)

Built as a Flutter learning project.

---

## 📄 License

This project is for learning purposes. Feel free to use it as a reference.
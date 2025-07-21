![8](https://github.com/user-attachments/assets/2e894917-083a-4003-9360-5480f2d07e94)![2](https://github.com/user-attachments/assets/f6395113-3855-4b5c-bfb0-84316762e049)# 🛍️ Smart Shop

A clean, modular Flutter mini e-commerce application featuring:

- 🧠 State management with `Provider`
- 💾 Persistent login/session using `SharedPreferences`
- 🌗 Light/Dark theme toggling
- 🌐 REST API integration (FakeStore API)
- 🧭 Clean navigation with drawer support
- 🛒 Cart & Favourite system
- 📦 Modular architecture (Clean + MVVM pattern)

---

## 📱 Features

### 🔐 Authentication
- Register/Login with validation
- Persistent login using SharedPreferences
- Splash screen to auto-navigate based on login state

### 🏠 Home Page
- Product list fetched from [FakeStoreAPI](https://fakestoreapi.com)
- View product name, price, rating (with stars)
- Add/Remove from Cart
- Favourite/Unfavourite products
- Pull-to-refresh & Sorting options (price, rating)

### 🛒 Cart
- View cart items with quantity, price, and rating
- Cart badge showing item count (real-time update)

### ❤️ Favourites
- View all liked products
- Stored using SharedPreferences

### ⚙️ Drawer & Navigation
- Access Home, Cart, Favourites, Profile, and Logout

### 🎨 Theme Support
- Toggle between Light & Dark theme
- Saves user preference

---

## 🗂 Project Structure
lib/ <br />
│ <br />
├── core/ # Constants, themes, utilities <br />
├── data/ # Models, remote/local data sources, repositories <br />
├── domain/ # Entities, abstract use cases and repos <br />
├── presentation/ # Screens, providers, widgets, routing <br />
│ ├── screens/ <br />
│ ├── providers/ <br />
│ ├── widgets/ <br />
│ └── routes/ <br />
├── main.dart # Entry point <br />
└── injection.dart # Dependency injection setup (optional) <br />


---
## 📷 Screenshots
![1](https://github.com/user-attachments/assets/53f3e504-6bb1-41b9-a783-d2f5b71cf47d)
![2](https://github.com/user-attachments/assets/cc9231be-0fc4-4bea-86b1-0c8c185896bd)
![5](https://github.com/user-attachments/assets/c47a6bd8-620a-42ce-bd9c-d24319c9c09f)
![3](https://github.com/user-attachments/assets/9801c1d2-ab1e-400d-8b8a-8fdaa1364a78)
![4](https://github.com/user-attachments/assets/eaaf48ee-954d-48e9-b107-1793db72a8d4)
![6](https://github.com/user-attachments/assets/b00dd7a5-a702-4a80-a50f-ac37d2673386)
![9](https://github.com/user-attachments/assets/7eebe75c-81d8-4b84-a8a0-e3ccf6291a6b)
![11](https://github.com/user-attachments/assets/f2524ea5-404a-476b-8630-9d8fb6787f67)
![8](https://github.com/user-attachments/assets/4891f1ad-3f54-4e57-b1da-8882bce0e89a)
![10](https://github.com/user-attachments/assets/e4fb53b9-aa34-4bb9-9456-f7e0fcf892a0)
![7](https://github.com/user-attachments/assets/38ae26b0-53f9-487c-b9d3-5f903670efaf)


## 🛠 To-Do / Improvements
 🔍 Add search/filter support

 📦 Integrate backend auth (Firebase/Auth)

 💳 Checkout & payment flow

 🔐 Token-based login (with JWT or Firebase)

## 📄 License
This project is open source and available under the MIT License.





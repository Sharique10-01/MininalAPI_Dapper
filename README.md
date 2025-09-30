# GreenStore E-Commerce Application

A full-stack e-commerce application built with .NET Core Minimal API backend and React TypeScript frontend, featuring vendor and consumer roles with complete CRUD operations.

## 🌟 Features

### For Consumers:
- User registration and authentication
- Product browsing with category filters and sorting
- Shopping cart functionality
- Order placement and history
- Professional green-themed UI

### For Vendors:
- Admin authentication (username: admin, password: admin)
- Product management (Add, Edit, Delete)
- Inventory management
- Order viewing and management

### Technical Features:
- Clean architecture with separation of concerns
- Dapper ORM with stored procedures
- JWT-like authentication system
- RESTful API design
- Responsive React frontend
- TypeScript for type safety
- Context API for state management

## 🏗️ Architecture

### Backend (.NET Core 8)
- **Minimal API**: Fast and lightweight API endpoints
- **Dapper**: High-performance data access
- **SQL Server**: Relational database
- **Repository Pattern**: Clean data access layer
- **Stored Procedures**: All database operations use SPs

### Frontend (React + TypeScript)
- **React 18**: Modern React with hooks
- **TypeScript**: Type-safe development
- **Context API**: State management
- **Axios**: HTTP client
- **React Router**: Navigation
- **CSS3**: Professional green theme

## 📦 Database Schema

### Tables:
- **Vendors**: Admin users who manage products
- **Consumers**: Regular users who purchase products
- **Products**: Product catalog with categories
- **CartItems**: Temporary shopping cart storage
- **Orders**: Order information
- **OrderItems**: Individual items in orders

### Categories:
- Electronics
- Books
- Sports
- Grocery
- Clothes
- Other

## 🚀 Setup Instructions

### Prerequisites:
- .NET 8 SDK
- SQL Server or SQL Server Express
- Node.js (v16 or higher)
- Visual Studio or VS Code

### Backend Setup:

1. **Database Setup:**
   ```sql
   -- Run Database_Schema.sql to create tables and sample data
   -- Run Stored_Procedures.sql to create all stored procedures
   ```

2. **Update Connection String:**
   ```json
   // In appsettings.json
   {
     "ConnectionStrings": {
       "Default": "Server=localhost;Database=GreenStore;Trusted_Connection=true;TrustServerCertificate=true;"
     }
   }
   ```

3. **Run the API:**
   ```bash
   cd MinimalAPIDemo1
   dotnet run
   ```
   API will be available at: `https://localhost:7241`

### Frontend Setup:

1. **Install Dependencies:**
   ```bash
   cd ecommerce-frontend
   npm install
   ```

2. **Start Development Server:**
   ```bash
   npm start
   ```
   Frontend will be available at: `http://localhost:3000`

## 🔧 API Endpoints

### Authentication:
- `POST /api/auth/vendor/login` - Vendor login
- `POST /api/auth/consumer/login` - Consumer login
- `POST /api/auth/consumer/register` - Consumer registration

### Products:
- `GET /api/products` - Get all products (with filters)
- `GET /api/products/{id}` - Get product by ID
- `POST /api/products` - Create product (vendor only)
- `PUT /api/products` - Update product (vendor only)
- `DELETE /api/products/{id}` - Delete product (vendor only)

### Cart:
- `POST /api/cart/{consumerId}/add` - Add item to cart
- `GET /api/cart/{consumerId}` - Get cart items
- `PUT /api/cart/update` - Update cart item
- `DELETE /api/cart/{cartItemId}` - Remove from cart
- `DELETE /api/cart/{consumerId}/clear` - Clear cart

### Orders:
- `POST /api/orders/{consumerId}/create` - Create order
- `GET /api/orders/consumer/{consumerId}` - Get consumer orders
- `GET /api/orders/{orderId}/details` - Get order details
- `GET /api/orders` - Get all orders (vendor only)

## 👤 Demo Accounts

### Vendor:
- Username: `admin`
- Password: `admin`

### Consumer:
- Username: `testuser`
- Password: `password123`

## 🎨 UI Features

- **Green Theme**: Professional green color scheme
- **Responsive Design**: Works on desktop and mobile
- **Modern UI**: Cards, gradients, and smooth transitions
- **User-Friendly**: Intuitive navigation and forms
- **Loading States**: Visual feedback for async operations
- **Error Handling**: Clear error messages and alerts

## 🔒 Security

- Password-based authentication
- User type validation (vendor/consumer)
- Protected routes in frontend
- Input validation on both client and server
- SQL injection prevention with stored procedures

## 📝 Project Structure

```
MinimalAPIDemo/
├── DataAccess/
│   ├── Models/          # Data models and DTOs
│   ├── Data/           # Repository interfaces and implementations
│   └── DbAccess/       # Dapper data access layer
├── MinimalAPIDemo1/
│   ├── Api.cs          # API endpoint configurations
│   └── Program.cs      # Application startup
├── ecommerce-frontend/
│   ├── src/
│   │   ├── components/ # Reusable UI components
│   │   ├── pages/      # Page components
│   │   ├── context/    # React context providers
│   │   ├── services/   # API service layer
│   │   └── types/      # TypeScript type definitions
├── Database_Schema.sql     # Database table creation
├── Stored_Procedures.sql   # All stored procedures
└── README.md
```

## 🚦 Getting Started

1. **For Vendors:**
   - Login with admin/admin
   - Access vendor dashboard
   - Manage products and inventory
   - View customer orders

2. **For Consumers:**
   - Register a new account or use testuser/password123
   - Browse products with filters
   - Add items to cart
   - Place orders and view history

## 🛠️ Technology Stack

**Backend:**
- .NET 8
- Minimal API
- Dapper
- SQL Server
- C#

**Frontend:**
- React 18
- TypeScript
- Context API
- Axios
- CSS3

## 📊 Key Features Implemented

✅ User authentication (vendor/consumer)
✅ Product CRUD operations
✅ Shopping cart functionality
✅ Order processing with inventory updates
✅ Category-based filtering
✅ Price sorting
✅ Responsive UI with green theme
✅ Clean architecture
✅ Stored procedures for all DB operations
✅ Type-safe frontend
✅ Professional error handling

This application demonstrates a complete e-commerce solution with modern web development practices and clean, maintainable code architecture."# ECommerce_CRUD" 

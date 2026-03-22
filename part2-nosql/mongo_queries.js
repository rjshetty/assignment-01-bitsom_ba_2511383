// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    _id: "001",
    name: "Samsung 55-inch Smart TV",
    category: "Electronics",
    price: 45000,
    brand: "Samsung",
    warranty_years: 2,
    specifications: {
      resolution: "4K",
      display_type: "LED",
      voltage: "220-240V"
    },
    features: ["Smart TV", "WiFi", "Bluetooth"],
    stock: 25
  },
  {
    _id: "002",
    name: "Men's Casual Shirt",
    category: "Clothing",
    price: 1200,
    brand: "Levi's",
    size_options: ["S", "M", "L", "XL"],
    material: "Cotton",
    color: "Blue",
    ratings: [
      { user: "user1", rating: 4 },
      { user: "user2", rating: 5 }
    ],
    stock: 100
  },
  {
    _id: "003",
    name: "Organic Milk",
    category: "Groceries",
    price: 60,
    brand: "Amul",
    expiry_date: new Date("2024-12-20"),
    nutritional_info: {
      calories: 150,
      fat: "8g",
      protein: "6g"
    },
    storage: "Refrigerated",
    stock: 200
  }
]);

// OP2: find() — Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find() — Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne() — add discount_percent to a specific product
db.products.updateOne(
  { _id: "001" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — index on category field
db.products.createIndex({ category: 1 });

// Explanation:
// Indexing the "category" field improves query performance,
// especially for frequent filtering operations like retrieving
// products by category (e.g., Electronics, Groceries).
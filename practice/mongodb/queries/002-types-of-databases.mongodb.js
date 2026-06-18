// Get all users
db.users.find();

// Filter user
db.users.find({ name: "Alice" });

// Find users who bought Laptop
db.users.find({ "orders.product": "Laptop" });

// Project specific fields
db.users.find({}, { name: 1 });

// Aggregation (total spent per user)
db.users.aggregate([
  { $unwind: "$orders" },
  {
    $group: {
      _id: "$name",
      total_spent: { $sum: "$orders.amount" }
    }
  }
]);

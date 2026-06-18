use("mastery");

db.users.insertMany([
    {
        name: "Alice",
        orders: [
            { product: "Laptop", amount: 1200 },
            { product: "Mouse", amount: 25 }
        ]
    },
    {
        name: "Bob",
        orders: [
            { product: "Keyboard", amount: 75 }
        ]
    }
]);

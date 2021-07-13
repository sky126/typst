// Test color creation functions.
// Ref: false

---
// Compare both ways.
#test(rgb(0.0, 0.3, 0.7), rgb("004db3"))

// Alpha channel.
#test(rgb(1.0, 0.0, 0.0, 0.5), rgb("ff000080"))

// Clamped.
#test(rgb(-30, 15.5, 0.5), rgb("00ff80"))

// Error: 11-15 missing argument: blue component
#test(rgb(0, 1), rgb("00ff00"))

// Error: 11-16 invalid color
#test(rgb("lol"), error)

// Error: 11 missing argument: red component
// Error: 11 missing argument: green component
// Error: 11 missing argument: blue component
#test(rgb(), black)
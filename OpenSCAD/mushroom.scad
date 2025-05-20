// module mushroom() {
//     // Stem
//     color("saddlebrown")
//     cylinder(h=20, r1=5, r2=5, center=false);

//     // Cap
//     translate([0, 0, 20])
//     color("red")
//     sphere(r=10);
// }

// mushroom();

// module random_circle_distribution(count, radius) {
//     for (i = [0:count-1]) {
//         angle = random(360); // Random angle in degrees
//         dist = random(radius); // Random distance from center
//         translate([dist * cos(angle), dist * sin(angle), 0])
//         sphere(r=2); // Example object
//     }
// }

// // Example: 10 objects randomly placed within a circle of radius 20
// random_circle_distribution(10, 20);

module multiple_fungi(count, radius) {
    seed = 1234; // Set seed for reproducibility
    for (i = [0:count-1]) {
        angle = rands(0, 360, 1, seed + i)[0]; // Use rands() instead of random()
        dist = rands(5, radius, 1, seed + i + 10)[0]; // Ensure valid range
        size = rands(5, 10, 1, seed + i + 20)[0]; // Random size between 5 and 10
        translate([dist * cos(angle), dist * sin(angle), 0])
        mushroom(size, [0, 0, 0]);
    }
}

// Mushroom function remains the same
module mushroom(size, position) {
    translate(position)
    union() {
        color("saddlebrown")
        cylinder(h=size * 2, r1=size * 0.5, r2=size * 0.5, center=false);
        translate([0, 0, size * 2])
        color("red")
        sphere(r=size);
    }
}

// Generate 10 fungi randomly distributed in a circle of radius 50
multiple_fungi(10, 50);


pullyHeight = 14;
holeDiameter = 5;
pullyInnerDiameter = 30;
pullyWallWidth = 2;

$fn = 100;

difference() {
    cylinder(r = pullyInnerDiameter/2, h = pullyHeight);
    cylinder(r=(pullyInnerDiameter+6)/2, h = pullyWallWidth);
    // translate([0,0,pullyHeight-2]) cylinder(r=pullyHeight
}

// difference() {
//     hull() {
//         sphere = 
//     }
// }
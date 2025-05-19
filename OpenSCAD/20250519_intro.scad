cubeLength = 100;
hammerLength = 200;

//hammer handle
color("Brown") cylinder(r=10, h=hammerLength);

//hammer head
translate([0,0,hammerLength-16]) color("Silver")
    
    cube([30,cubeLength,50], center=true);

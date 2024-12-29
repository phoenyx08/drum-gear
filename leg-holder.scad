// Leg holder
difference() {
    // Box
    translate([-10,-32,27])
        cube([20,30,30]);
    
    // Leg hole
    translate([0,-25,0])
        cylinder(h = 80, d = 11, center = false, $fn=360);

    // Screw hole
    rotate([0,90,0])
        translate([-42,-25,0])
            cylinder(h = 80, d = 8, center = false, $fn=360);
}

// Plate with holes
difference() {
    // Plate
    union() {
    // Corners
        intersection() {
            union() {
                // Right corner round
                rotate([90,0,0])
                    translate([17.18,42,-3])
                        cylinder(h = 18, d = 15, center = false, $fn=360);
                
                // Left corner round
                rotate([90,0,0])
                    translate([-17.18,42,-3])
                        cylinder(h = 18, d = 15, center = false, $fn=360);
                
                // Bottom corner round
                rotate([90,0,0])
                    translate([0,14.2,-3])
                        cylinder(h = 18, d = 15, center = false, $fn=360);
                
                // Top corner round
                rotate([90,0,0])
                    translate([0,69.8,-3])
                        cylinder(h = 18, d = 15, center = false, $fn=360);
            }
            
            // Rhombus
            rotate([90,0,0])
                linear_extrude(height = 5) {
                    polygon(points = [
                        [0, 0],    // Bottom-left
                        [-26, 42],  // Bottom-right
                        [0, 84],  // Top-right
                        [26, 42]  // Top-left
                    ]);
                }
        }

        // Plate without corners
        intersection() {
            // Rhombus
            rotate([90,0,0])
                linear_extrude(height = 5) {
                    polygon(points = [
                        [0, 0],    // Bottom-left
                        [-26, 42],  // Bottom-right
                        [0, 84],  // Top-right
                        [26, 42]  // Top-left
                    ]);
                }
                
             translate([-23.3,-20,10])
                cube([47,20,64]);
        }
    }
    // Holes
    union() {
        // Bottom hole
        rotate([90,0,0])
            translate([0,13,-3])
                cylinder(h = 20, d = 9, center = false, $fn=360);

        // Top hole and round
        rotate([90,0,0])
            translate([0,70,-3])
                cylinder(h = 20, d = 9, center = false, $fn=360);
    }
    
    // curvature
    translate([0,201.7,0])
        cylinder(h = 80, d = 406.4, center = false, $fn=360);
}

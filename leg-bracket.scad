// Leg holder
difference() {
    // Box
    translate([-9,-32,23])
        cube([18,28,30]);
    
    // Leg hole
    translate([0,-25,0])
        cylinder(h = 80, d = 11, center = false, $fn=360);

    // Screw hole
    rotate([0,90,0])
        translate([-37.5,-25,0])
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
                    translate([14.21,37.5,-3])
                        cylinder(h = 18, d = 15, center = false, $fn=360);
                
                // Left corner round
                rotate([90,0,0])
                    translate([-14.21,37.5,-3])
                        cylinder(h = 18, d = 15, center = false, $fn=360);
                
                // Bottom corner round
                rotate([90,0,0])
                    translate([0,14.20,-3])
                        cylinder(h = 18, d = 15, center = false, $fn=360);
                
                // Top corner round
                rotate([90,0,0])
                    translate([0,61.3,-3])
                        cylinder(h = 18, d = 15, center = false, $fn=360);
            }
            
            // Rhombus
            rotate([90,0,0])
                linear_extrude(height = 5) {
                    polygon(points = [
                        [0, 0],    // Bottom-left
                        [-23, 37.5],  // Bottom-right
                        [0, 75],  // Top-right
                        [23, 37.5]  // Top-left
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
                        [-23, 37.5],  // Bottom-right
                        [0, 75],  // Top-right
                        [23, 37.5]  // Top-left
                    ]);
                }
                
             translate([-20.57,-20,11])
                cube([41.2,28,55]);
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
            translate([0,62,-3])
                cylinder(h = 20, d = 9, center = false, $fn=360);
    }
    
    // curvature
    translate([0,201.7,0])
        cylinder(h = 80, d = 406.4, center = false, $fn=360);
}


nema11();

{
    union()
    {
        translate([-14, -14, 0])
        color("gray")cube([28, 28, 28]);
        translate([0, 0, 28])
        color("white")cylinder (h=2, r=10, $fn=30);
        translate([0, 0, 20])
        cylinder(h=20, r=3, $fn=30);
        
    }
}



module nema11()
{
union(){
 
difference() {
    
	color("gray")cube([28.2, 28.2, 31.5]);
	translate([23, 5.2, 30])rotate ([180,0,0]) cylinder (h = 4, r=1.25, center = true, $fn=100);
    translate([5.2, 23, 30])rotate([180, 0, 0])cylinder (h = 4, r=1.25, center = true, $fn=100);
    translate([5.2, 5.2, 30])rotate([180, 0, 0])cylinder (h = 4, r=1.25, center = true, $fn=100);
     translate([23, 23, 30])rotate([180, 0, 0])cylinder (h = 4, r=1.25, center = true, $fn=100);
}
    translate([14, 14, 31.5])
    color("yellow")cylinder (h=2, r=11, $fn=30);
    translate([14, 14, 31.5])cylinder(h=20, r=2.5, $fn=30);
    }    
 }
nema11();

module piesa_plastic()
{
    difference(){
    translate([50, 15, 31.5])
    color("fuchsia") cube([76.5,47.4,1],true);
    translate([23, 23, 31])rotate([180, 0, 0])cylinder (h = 4, r=1.25, center = true, $fn=100);
    translate([23, 5.2, 31])rotate ([180,0,0]) cylinder (h = 4, r=1.25, center = true, $fn=100);
        translate([63.6, 15, 31])rotate ([180,0,0]) cylinder (h = 3, r=11, center = true, $fn=100);
        translate([44.64, 15, 31])rotate ([180,0,0]) cylinder (h = 3, r=3.25, center = true, $fn=100);
        translate([80.35, 7, 31])rotate ([180,0,0]) cylinder (h = 3, r=3.25, center = true, $fn=100);
         translate([80.35, 40.4, 31])rotate ([180,0,0]) cylinder (h = 3, r=3.25, center = true, $fn=100);
}
}
piesa_plastic();
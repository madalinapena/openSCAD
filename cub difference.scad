module nema11()
{
     translate([-14, -14, 0])
        
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
    translate([38, 0, 31.5])
    color("fuchsia") cube([76.5,47.4,1],true);
    translate([9, 9, 31])rotate([180, 0, 0])cylinder (h = 4, r=1.25, center = true, $fn=100);
    translate([9, -8.8, 31])rotate ([180,0,0]) cylinder (h = 4, r=1.25, center = true, $fn=100);
    translate([38.25, 0, 31])rotate ([180,0,0]) cylinder (h = 3, r=11, center = true, $fn=100);
    translate([22.7, 0, 31])rotate ([180,0,0]) cylinder (h = 3, r=3.25, center = true, $fn=100);
    translate([54.3, 17.4, 31])rotate ([180,0,0]) cylinder (h = 3, r=3.25, center = true, $fn=100);
    translate([54.3, -17.4, 31])rotate ([180,0,0]) cylinder (h = 3, r=3.25, center = true, $fn=100);
    translate([54.3, 0, 31])rotate ([180,0,0])cylinder (17.5, 9, 1);
}
}
piesa_plastic();
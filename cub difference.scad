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
    translate([40, 0, 31])rotate ([180,0,0]) cylinder (h = 3, r=11, center = true, $fn=100);
    translate([22.7, 0, 31])rotate ([180,0,0]) cylinder (h = 3, r=3.25, center = true, $fn=100);
    translate([50, 14, 31])rotate ([180,0,0]) cylinder (h = 3, r=3.25, center = true, $fn=100);
    translate([50, -14, 31])rotate ([180,0,0]) cylinder (h = 3, r=3.25, center = true, $fn=100);
    translate([70, 10, 33])rotate ([180,0,0])cube ( 21.7, 9, 1);
        translate([73, -10, 32])rotate ([180,0,0])cylinder (h = 4, r=1.25, center = true, $fn=100);
}
}
piesa_plastic();

module slip_ring()
{
    
   union()
    {
    translate ([40, 0, 16])
    cylinder(h=16.5, r=11, $fn=100);
     translate([40, 0, 33])   
    cylinder(h=2, r=22, $fn=100);
        translate([40, 0, 30])
    cylinder (h=20, r=2, $fn=100);  
    }
}    
  

slip_ring();

module IR()
{
    union()
    {
    translate([70, 0, 33])
    color("green")cube([9,23.6,1],true);
    translate([70, 0, 36])
    color("black")cube([6.35,13.75,7],true);
    translate([70, -9, 33])
    color("white")cylinder(h=1, r=1.95, $fn=30);
    translate([70, -3, 38])
    color("gray")sphere(2.3, $fn=100); 
    translate([70, 3, 38])
    color("gray")sphere(2.3, $fn=100);
    }
}
IR();

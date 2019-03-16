translate([25, 10, 83])
import("TR1_spider.stl");

module nema11()
{
  
    union()
    {
        $fn=10;
minkowski()
{
 
        translate([-14, -14, -32])
        color("gray")cube([28.2, 28.2, 31.5]);
        translate([0, 0, 31.5])
        cylinder(r=2,h=1);
}
        translate([0, 0, 31.5])
        color("yellow")cylinder (h=2, r=11, $fn=30);
        translate([0, 0, 31.5])
         cylinder(h=20, r=2.5, $fn=30);
        
    }
}
nema11();
        
module piesa_plastic()
{
    
         color("fuchsia") cube([78.8,47.2,1],true);
    
}


module roata_dintata()
{
    union()
    {
        translate([0, 0, 43])
        color("red")cylinder (h=1, r=12.75, $fn=30);
        translate([0, 0, 36])
        color("white")cylinder (h=7.2, r=11.65, $fn=30);
        translate([0, 0, 35])
        color("red")cylinder (h=1, r=12.75, $fn=30);
    }
}
roata_dintata();

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

module roata_dintata2()
{
    union()
    {
        translate([40, 0, 43])
        color("red")cylinder (h=1, r=12.75, $fn=30);
        translate([40, 0, 36])
         color("white")cylinder (h=7.2, r=11.65, $fn=30);
        translate([40, 0, 35])
        color("red")cylinder (h=1, r=12.75, $fn=30);
        translate([40, 0, 49])
        color("black")cube([12, 12, 11],true);
    }
}
roata_dintata2();

module piesa_plastic2()
{
    color("white") cube([50.1,58.3,3],true);
}



    

translate([35, 0, 32.5])piesa_plastic();
translate([40, 5, 75])rotate ([90, 0, 0])piesa_plastic2();

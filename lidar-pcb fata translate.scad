translate([25, 10, 80])
import("TR1_spider.stl");

module nema11()
{
  
    union()
    {
        translate([-14, -14, 0])
        color("gray")cube([28, 28, 28]);
        translate([0, 0, 28])
        color("yellow")cylinder (h=2, r=10, $fn=30);
        translate([0, 0, 20])
        cylinder(h=30, r=2, $fn=30);
        
    }
}
nema11();
        
module piesa_plastic()
{
    
         color("white") cube([80,28,3],true);
    
}


module roata_dintata()
{
    union()
    {
        translate([0, 0, 43])
        color("red")cylinder (h=1, r=10, $fn=30);
        translate([0, 0, 38])
        color("white")cylinder (h=5, r=8, $fn=30);
        translate([0, 0, 38])
        color("red")cylinder (h=1, r=10, $fn=30);
    }
}
roata_dintata();

module IR()
{
    union()
    {
    translate([70, 0, 30])
    color("green")cube([10,21,1],true);
    translate([70, 0, 32])
    color("black")cube([7,15,7],true);
    translate([70, -9, 30])
    color("white")cylinder(h=1, r=1, $fn=30);
    translate([70, 9, 30])
    color("white")cylinder(h=1, r=1, $fn=30);
    translate([70, -3, 35])
    color("gray")sphere(2, $fn=100); 
    translate([70, 3, 35])
    color("gray")sphere(2, $fn=100);
    }
}
IR();
module slip_ring()
{
    union()
    {
    translate ([40, 0, 20])
    cylinder(h=8, r=5, $fn=30);
     translate([40, 0, 30])   
    cylinder(h=1, r=13, $fn=30);
        translate([40, 0, 30])
    cylinder (h=20, r=2, $fn=30);  
    }
}    

slip_ring();

module roata_dintata2()
{
    union()
    {
        translate([40, 0, 43])
        color("red")cylinder (h=1, r=10, $fn=30);
        translate([40, 0, 38])
        color("white")cylinder (h=5, r=8, $fn=30);
        translate([40, 0, 38])
        color("red")cylinder (h=1, r=10, $fn=30);
        translate([40, 0, 45])
        color("black")cube([8, 8, 15],true);
    }
}
roata_dintata2();

module piesa_plastic2()
{
    color("white") cube([45,35,3],true);
}



    

translate([35, 0, 28])piesa_plastic();
translate([40, 5, 65])rotate ([90, 0, 0])piesa_plastic2();

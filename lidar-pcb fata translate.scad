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
        cylinder(h=30, r=3, $fn=30);
        
    }
}
nema11();
        
module piesa_plastic()
{
    
         color("white") cube([65,28,3],true);
    
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
    
    cube([8,15,8],true);
    
}

module slip_ring()
{
    union()
    {
    translate ([38, 0, 20])
    cylinder(h=8, r=5, $fn=30);
     translate([38, 0, 30])   
    cylinder(h=2, r=10, $fn=30);
        translate([38, 0, 30])
    cylinder (h=10, r=2, $fn=30);  
    }
}    

slip_ring();

translate([25, 0, 28])piesa_plastic();
translate([53, 0, 30])IR();

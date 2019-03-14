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
         translate([25, 0, 28])
   color("white") cube([65,28,3],true);
       translate([0, 0, 38])
        color("red")cylinder (h=1, r=10, $fn=30);
         translate([0, 0, 38])
        color("white")cylinder (h=5, r=8, $fn=30);
         translate([0, 0, 43])
        color("red")cylinder (h=1, r=10, $fn=30);
    }
}


nema11();

module IR()
{
    union()
    {
    translate([53, 0, 30])
    cube([8,15,8],true);
    }
}
IR();


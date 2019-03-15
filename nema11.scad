module nema11()
{
  
    union()
    {
        $fn=10;
minkowski()
{
        translate([-14, -14, 0])
        color("gray")cube([28.2, 28.2, 31.5]);
        cylinder(r=2,h=1);
}
        translate([0, 0, 28])
        color("yellow")cylinder (h=2, r=22, $fn=30);
        translate([0, 0, 20])
        cylinder(h=20, r=5, $fn=30);
        
    }
}
nema11();
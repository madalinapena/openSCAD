import("TR1_spider.stl");

module nema11()
{
  
    union()
    {
        color("gray")cube([28, 28, 28]);
       color("yellow")cylinder (h=2, r=10, $fn=30);
       cylinder(h=30, r=3, $fn=30);
nema11();
        
module piesa_plastic()
{
    union()
    {
         color("white") cube([65,28,3],true);
    }
}
piesa_plastic();

module roata_dintata()
{
    union()
    {
        color("red")cylinder (h=1, r=10, $fn=30);
        color("white")cylinder (h=5, r=8, $fn=30);
        color("red")cylinder (h=1, r=10, $fn=30);
    }
}
roata_dintata();

module IR()
{
    union()
    {
    cube([8,15,8],true);
    }
}
IR();


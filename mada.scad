translate([30, 10, 83])
import("TR1_spider.stl");

inaltime_nema11=31.5;
module nema11()
{
    difference() {
    // body
     translate([-14.1, -14.1, 0])
            color("gray") cube([28.2, 28.2, inaltime_nema11]);
    // holes
            translate([23 / 2, 23 / 2, inaltime_nema11 - 2]) cylinder (h = 4, r=1.25, center = true, $fn=100);
            translate([23 / 2, -23 / 2, inaltime_nema11 - 2]) cylinder (h = 4, r=1.25, center = true, $fn=100);
            translate([-23 / 2, 23 / 2, inaltime_nema11 - 2])  cylinder (h = 4, r=1.25, center = true, $fn=100);
            translate([-23 / 2, -23 / 2, inaltime_nema11 - 2]) cylinder (h = 4, r=1.25, center = true, $fn=100);
    }
    translate([0, 0, inaltime_nema11]) color("yellow")cylinder (h = 2, r = 11, $fn = inaltime_nema11 - 2);
        // shaft
    translate([0, 0, inaltime_nema11]) cylinder(h = 20, r = 2.5, $fn = 30);
}
//---------------------------------------------------
module piesa_plastic()
{
    difference(){
        color("fuchsia") 
        union () {
            cube([76, 47, 2]);
        // margins
            translate ([0, 0, -4]) cube([76, 2, 4]);
            translate ([0, 45, -4]) cube([76, 2, 4]);
        }
        // motor screw holes
        translate([11.5, 47/2 - 11.5, -1]) cylinder (h = 4, r = 1.25, $fn=10);
        translate([11.5, 47/2 + 11.5, -1]) cylinder (h = 4, r = 1.25, $fn=10);
        
        // motor hole
        translate([0, 47/2, -1]) cylinder (h = 4, r = 11, $fn=100);
        // slip ring screw holes
            translate ([21 + 2 + 22, 47/2, -1] + [17.5 * sin(30), 17.5 * cos(30), 0]) cylinder (h = 4, r = 2.75);
            translate ([21 + 2 + 22, 47/2, -1] + [17.5 * sin(150), 17.5 * cos(150), 0]) cylinder (h = 4, r = 2.75);
            translate ([21 + 2 + 22, 47/2, -1] + [17.5 * sin(270), 17.5 * cos(270), 0]) cylinder (h = 4, r = 2.75);

        // slip ring hole
        translate ([21 + 2 + 22, 47/2, -1]) cylinder (h = 4, r = 11);
        // IR hole
        translate([73 - 4.5, 47/2 - 6, 0]) cube ([9, 22 - 5, 5]);
        // ir screw hole
        translate([72, 47/2 -9, -1]) cylinder (h = 4, r = 1.25, $fn = 10);
    }
}
//---------------------------------------------------
module slip_ring()
{
    cylinder(h = 16.5, r = 11, $fn = 100);
        // flange
    translate([0, 0, 17]) {
        difference(){
            cylinder(h = 2, r = 22, $fn = 100);
            // holes
            translate ([17.5 * sin(30), 17.5 * cos(30), -1]) cylinder (h = 4, r = 2.75);
            translate ([17.5 * sin(150), 17.5 * cos(150), -1]) cylinder (h = 4, r = 2.75);
            translate ([17.5 * sin(270), 17.5 * cos(270), -1]) cylinder (h = 4, r = 2.75);
        }
    }
    // rotor
    translate([0, 0, 14]) cylinder (h = 20, r = 2, $fn=100);  
}    
//---------------------------------------------------
module IR()
{
    difference(){
        color("green") cube([9, 23, 1], true);
        // screw hole
        translate([0, -9, 0]) cylinder(h=1, r=1.95, $fn=30);
    }
    translate([0, 0, 3])
    color("black")cube([6.35, 13.75, 7], true);
    
    translate([0, -3, 5])
    color("gray") sphere(2.3, $fn=100); 
    
    translate([0, 3, 5])
    color("gray") sphere(2.3, $fn=100);
}
//---------------------------------------------------
module roata_dintata()
{
    union()
    {
        color("red")cylinder (h=1, r=12.75, $fn=30);
        translate([0, 0, 1])
        color("white")cylinder (h=7.2, r=11.65, $fn=30);
        translate([0, 0, 8])
        color("red")cylinder (h=1, r=12.75, $fn=30);
    }
}
//----------------------------------------------------
module roata_dintata2()
{
    union()
    {
        
        color("red")cylinder (h=1, r=12.75, $fn=30);
        translate([0, 0, 1])
        color("white")cylinder (h=7.2, r=11.65, $fn=30);
        translate([0, 0, 8])
        color("red")cylinder (h=1, r=12.75, $fn=30);
        translate([0, 0, 15])
        color("blue")cube([12, 12, 11],true);
    }
}
//---------------------------------------------------
module piesa_plastic2()
{
    color("white") cube([50.1,58.3,3],true);
}
//---------------------------------------------------
module extensie_IR()
{
    union()
    {
        cube([15, 15, 15], true);
        translate([80, 10, 90])rotate([90, 0, 0])
         cube([18,28,8],true);
    }
}     
//---------------------------------------------------     
nema11();
translate ([45, 0, 16]) slip_ring();
translate ([71.5, 0, 34]) IR();
translate([0, -47/2, inalv                 time_nema11]) piesa_plastic();
translate([0, 0, 35])roata_dintata();
translate([45, 0, 35])roata_dintata2();
translate([45, 5, 75])rotate ([90, 0, 0])piesa_plastic2();
 translate([80, 10, 90]extensie_IR();
//---------------------------------------------------


//
// ktRACK6
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;


X = 30;


difference()
{
    union()
    {
        translate([0, 0, 0]) cube([X, 10, panel_thick]);
        translate([0, 10, 8/2]) rotate([0, 90, 0]) cylinder(X, d=8, $fn=100);
    }
    translate([6, 4, -gap1]) rotate([0, 0, 0]) cylinder(  panel_thick+gap2, d1=2.5, d2=4.5, $fn=100);
    translate([X-6, 4, -gap1]) rotate([0, 0, 0]) cylinder(  panel_thick+gap2, d1=2.5, d2=4.5, $fn=100);
    
    translate([-gap1, 10, 8/2]) rotate([0, 90, 0]) cylinder(X+gap2, d=6, $fn=100);
    translate([-gap1, 10-5/2+0.5, -gap1-2]) cube([X+gap2, 8, 6]);
}
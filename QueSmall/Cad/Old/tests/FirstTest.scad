//V2.2

ball_dia = 31.5;
ball_r = ball_dia/2+0.5;
bearing = 2.5/2+0.25;

$fn = 40;

body();
//MouseModule();

module body() {
    translate([0,0,30]) mirror([0,0,1]){
        difference(){
            outerBody();
            translate([0,0,(ball_r+12)]) sphere(ball_r);
            translate([ball_r-1.7,0,17]) sphere(bearing);
            translate([(ball_r-1.7)*cos(120),(ball_r-1.7)*sin(120),17]) sphere(bearing);
            translate([(ball_r-1.7)*cos(240),(ball_r-1.7)*sin(240),17]) sphere(bearing);
            MouseModule();
        }
    }
}

module MouseModule() {
    minkowski(){
        translate([0,0,5]) cube([22-16,20-16,13], center=true);
        cylinder(1,8,8);
    }
}

module outerBody() {
    hull(){
        translate([0,0,15]) cube([34,34,30],center=true);
        $fn=100;
        translate([0,0]) cylinder(30,20,20);
    }
}
use <write.scad>
use <opticsMount_retainingBracket.scad>

module aperture(){
	difference(){
		translate([.5,0,0]) color([0.3,0.5,0.9]) cube(size=[1,22,22],center=true);
		translate([.5,0,0]) cube(size=[2,.25,22],center=true);
	}
	rotate([90,90,-90]){
		translate([6,15,1]){
			write(".25",h=5,t=2,center=true);
		}
	}
}

translate([0,0,0]){
	retainingBracket();
	aperture();
}
/// @description Insert description here
// You can write your code in this editor
image_xscale += 0.005
blob_edge_x = x + 260 * image_xscale;
blob_dist_from_player = obj_player.x - blob_edge_x;

if (blob_dist_from_player < 400) {
//within viewport so remove arrow

}

dist_outside_view = blob_dist_from_player - VIEW_BORDER;

if (dist_outside_view < 0) {
	with (obj_blob_dist_arrow) {
		image_alpha = 0;
		image_xscale = 1;
		image_yscale = 1;
	}
} else if (dist_outside_view >= 0 && dist_outside_view < 800) {
	with (obj_blob_dist_arrow) {
		image_alpha = 1;
		image_xscale = 1 - obj_blob.dist_outside_view / 1000;
		image_yscale = 1 - obj_blob.dist_outside_view / 1000;
	}
} else {
	with (obj_blob_dist_arrow) {
		image_alpha = 1;
		image_xscale = 0.2;
		image_yscale = 0.2;
	}
}

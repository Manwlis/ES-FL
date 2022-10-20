# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
gmem_conv2d_32_weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
gmem_conv2d_32_biases { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
gmem_conv2d_64_weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
gmem_conv2d_64_biases { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
gmem_dense_weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
gmem_dense_biases { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
gmem_softmax_weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
gmem_softmax_biases { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
gmem_conv2d_32_feature_map { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
gmem_maxp2d_32_feature_map { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
gmem_conv2d_64_feature_map { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
gmem_maxp2d_64_feature_map { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
gmem_dense_feature_map { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 160
	offset_end 171
}
gmem_softmax_feature_map { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 172
	offset_end 183
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control



# This script segment is generated automatically by AutoPilot

set name accel_fadd_32ns_32ns_32_3_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 2 ALLOW_PRAGMA 1
}


set name accel_fmul_32ns_32ns_32_2_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name conv2d_32_padded_window_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_32_padded_window_stream \
    op interface \
    ports { conv2d_32_padded_window_stream_dout { I 288 vector } conv2d_32_padded_window_stream_num_data_valid { I 3 vector } conv2d_32_padded_window_stream_fifo_cap { I 3 vector } conv2d_32_padded_window_stream_empty_n { I 1 bit } conv2d_32_padded_window_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name weights_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load \
    op interface \
    ports { weights_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name weights_load_18401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18401 \
    op interface \
    ports { weights_load_18401 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name weights_load_18402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18402 \
    op interface \
    ports { weights_load_18402 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name weights_load_18403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18403 \
    op interface \
    ports { weights_load_18403 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name weights_load_18404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18404 \
    op interface \
    ports { weights_load_18404 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name weights_load_18405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18405 \
    op interface \
    ports { weights_load_18405 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name weights_load_18406 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18406 \
    op interface \
    ports { weights_load_18406 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name weights_load_18407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18407 \
    op interface \
    ports { weights_load_18407 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name weights_load_18408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18408 \
    op interface \
    ports { weights_load_18408 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name temp_sum \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum \
    op interface \
    ports { temp_sum { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name kernel_sums136 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sums136 \
    op interface \
    ports { kernel_sums136_din { O 32 vector } kernel_sums136_num_data_valid { I 3 vector } kernel_sums136_fifo_cap { I 3 vector } kernel_sums136_full_n { I 1 bit } kernel_sums136_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name weights_load_18409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18409 \
    op interface \
    ports { weights_load_18409 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name weights_load_18410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18410 \
    op interface \
    ports { weights_load_18410 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name weights_load_18411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18411 \
    op interface \
    ports { weights_load_18411 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name weights_load_18412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18412 \
    op interface \
    ports { weights_load_18412 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name weights_load_18413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18413 \
    op interface \
    ports { weights_load_18413 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name weights_load_18414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18414 \
    op interface \
    ports { weights_load_18414 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name weights_load_18415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18415 \
    op interface \
    ports { weights_load_18415 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name weights_load_18416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18416 \
    op interface \
    ports { weights_load_18416 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name weights_load_18417 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18417 \
    op interface \
    ports { weights_load_18417 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name temp_sum_4066 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4066 \
    op interface \
    ports { temp_sum_4066 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name weights_load_18418 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18418 \
    op interface \
    ports { weights_load_18418 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name weights_load_18419 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18419 \
    op interface \
    ports { weights_load_18419 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name weights_load_18420 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18420 \
    op interface \
    ports { weights_load_18420 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name weights_load_18421 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18421 \
    op interface \
    ports { weights_load_18421 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name weights_load_18422 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18422 \
    op interface \
    ports { weights_load_18422 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name weights_load_18423 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18423 \
    op interface \
    ports { weights_load_18423 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name weights_load_18424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18424 \
    op interface \
    ports { weights_load_18424 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name weights_load_18425 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18425 \
    op interface \
    ports { weights_load_18425 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name weights_load_18426 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18426 \
    op interface \
    ports { weights_load_18426 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name temp_sum_4068 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4068 \
    op interface \
    ports { temp_sum_4068 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name weights_load_18427 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18427 \
    op interface \
    ports { weights_load_18427 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name weights_load_18428 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18428 \
    op interface \
    ports { weights_load_18428 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name weights_load_18429 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18429 \
    op interface \
    ports { weights_load_18429 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name weights_load_18430 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18430 \
    op interface \
    ports { weights_load_18430 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name weights_load_18431 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18431 \
    op interface \
    ports { weights_load_18431 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name weights_load_18432 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18432 \
    op interface \
    ports { weights_load_18432 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name weights_load_18433 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18433 \
    op interface \
    ports { weights_load_18433 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name weights_load_18434 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18434 \
    op interface \
    ports { weights_load_18434 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name weights_load_18435 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18435 \
    op interface \
    ports { weights_load_18435 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name temp_sum_4070 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4070 \
    op interface \
    ports { temp_sum_4070 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name weights_load_18436 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18436 \
    op interface \
    ports { weights_load_18436 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name weights_load_18437 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18437 \
    op interface \
    ports { weights_load_18437 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name weights_load_18438 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18438 \
    op interface \
    ports { weights_load_18438 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name weights_load_18439 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18439 \
    op interface \
    ports { weights_load_18439 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name weights_load_18440 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18440 \
    op interface \
    ports { weights_load_18440 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name weights_load_18441 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18441 \
    op interface \
    ports { weights_load_18441 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name weights_load_18442 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18442 \
    op interface \
    ports { weights_load_18442 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name weights_load_18443 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18443 \
    op interface \
    ports { weights_load_18443 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name weights_load_18444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18444 \
    op interface \
    ports { weights_load_18444 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name temp_sum_4072 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4072 \
    op interface \
    ports { temp_sum_4072 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name weights_load_18445 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18445 \
    op interface \
    ports { weights_load_18445 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name weights_load_18446 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18446 \
    op interface \
    ports { weights_load_18446 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name weights_load_18447 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18447 \
    op interface \
    ports { weights_load_18447 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name weights_load_18448 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18448 \
    op interface \
    ports { weights_load_18448 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name weights_load_18449 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18449 \
    op interface \
    ports { weights_load_18449 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name weights_load_18450 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18450 \
    op interface \
    ports { weights_load_18450 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name weights_load_18451 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18451 \
    op interface \
    ports { weights_load_18451 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name weights_load_18452 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18452 \
    op interface \
    ports { weights_load_18452 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name weights_load_18453 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18453 \
    op interface \
    ports { weights_load_18453 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name temp_sum_4074 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4074 \
    op interface \
    ports { temp_sum_4074 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name weights_load_18454 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18454 \
    op interface \
    ports { weights_load_18454 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name weights_load_18455 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18455 \
    op interface \
    ports { weights_load_18455 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name weights_load_18456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18456 \
    op interface \
    ports { weights_load_18456 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name weights_load_18457 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18457 \
    op interface \
    ports { weights_load_18457 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name weights_load_18458 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18458 \
    op interface \
    ports { weights_load_18458 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name weights_load_18459 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18459 \
    op interface \
    ports { weights_load_18459 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name weights_load_18460 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18460 \
    op interface \
    ports { weights_load_18460 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name weights_load_18461 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18461 \
    op interface \
    ports { weights_load_18461 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name weights_load_18462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18462 \
    op interface \
    ports { weights_load_18462 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name temp_sum_4076 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4076 \
    op interface \
    ports { temp_sum_4076 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name weights_load_18463 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18463 \
    op interface \
    ports { weights_load_18463 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name weights_load_18464 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18464 \
    op interface \
    ports { weights_load_18464 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name weights_load_18465 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18465 \
    op interface \
    ports { weights_load_18465 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name weights_load_18466 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18466 \
    op interface \
    ports { weights_load_18466 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name weights_load_18467 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18467 \
    op interface \
    ports { weights_load_18467 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name weights_load_18468 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18468 \
    op interface \
    ports { weights_load_18468 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name weights_load_18469 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18469 \
    op interface \
    ports { weights_load_18469 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name weights_load_18470 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18470 \
    op interface \
    ports { weights_load_18470 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name weights_load_18471 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18471 \
    op interface \
    ports { weights_load_18471 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name temp_sum_4078 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4078 \
    op interface \
    ports { temp_sum_4078 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name weights_load_18472 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18472 \
    op interface \
    ports { weights_load_18472 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name weights_load_18473 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18473 \
    op interface \
    ports { weights_load_18473 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name weights_load_18474 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18474 \
    op interface \
    ports { weights_load_18474 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name weights_load_18475 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18475 \
    op interface \
    ports { weights_load_18475 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name weights_load_18476 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18476 \
    op interface \
    ports { weights_load_18476 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name weights_load_18477 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18477 \
    op interface \
    ports { weights_load_18477 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name weights_load_18478 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18478 \
    op interface \
    ports { weights_load_18478 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name weights_load_18479 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18479 \
    op interface \
    ports { weights_load_18479 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name weights_load_18480 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18480 \
    op interface \
    ports { weights_load_18480 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name temp_sum_4080 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4080 \
    op interface \
    ports { temp_sum_4080 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name weights_load_18481 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18481 \
    op interface \
    ports { weights_load_18481 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name weights_load_18482 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18482 \
    op interface \
    ports { weights_load_18482 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name weights_load_18483 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18483 \
    op interface \
    ports { weights_load_18483 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name weights_load_18484 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18484 \
    op interface \
    ports { weights_load_18484 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name weights_load_18485 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18485 \
    op interface \
    ports { weights_load_18485 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name weights_load_18486 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18486 \
    op interface \
    ports { weights_load_18486 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name weights_load_18487 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18487 \
    op interface \
    ports { weights_load_18487 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name weights_load_18488 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18488 \
    op interface \
    ports { weights_load_18488 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name weights_load_18489 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18489 \
    op interface \
    ports { weights_load_18489 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name temp_sum_4082 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4082 \
    op interface \
    ports { temp_sum_4082 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name weights_load_18490 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18490 \
    op interface \
    ports { weights_load_18490 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name weights_load_18491 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18491 \
    op interface \
    ports { weights_load_18491 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name weights_load_18492 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18492 \
    op interface \
    ports { weights_load_18492 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name weights_load_18493 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18493 \
    op interface \
    ports { weights_load_18493 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name weights_load_18494 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18494 \
    op interface \
    ports { weights_load_18494 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name weights_load_18495 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18495 \
    op interface \
    ports { weights_load_18495 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name weights_load_18496 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18496 \
    op interface \
    ports { weights_load_18496 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name weights_load_18497 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18497 \
    op interface \
    ports { weights_load_18497 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name weights_load_18498 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18498 \
    op interface \
    ports { weights_load_18498 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name temp_sum_4084 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4084 \
    op interface \
    ports { temp_sum_4084 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name weights_load_18499 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18499 \
    op interface \
    ports { weights_load_18499 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name weights_load_18500 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18500 \
    op interface \
    ports { weights_load_18500 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name weights_load_18501 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18501 \
    op interface \
    ports { weights_load_18501 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name weights_load_18502 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18502 \
    op interface \
    ports { weights_load_18502 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name weights_load_18503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18503 \
    op interface \
    ports { weights_load_18503 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name weights_load_18504 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18504 \
    op interface \
    ports { weights_load_18504 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name weights_load_18505 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18505 \
    op interface \
    ports { weights_load_18505 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name weights_load_18506 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18506 \
    op interface \
    ports { weights_load_18506 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name weights_load_18507 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18507 \
    op interface \
    ports { weights_load_18507 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name temp_sum_4086 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4086 \
    op interface \
    ports { temp_sum_4086 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name weights_load_18508 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18508 \
    op interface \
    ports { weights_load_18508 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name weights_load_18509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18509 \
    op interface \
    ports { weights_load_18509 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name weights_load_18510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18510 \
    op interface \
    ports { weights_load_18510 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name weights_load_18511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18511 \
    op interface \
    ports { weights_load_18511 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name weights_load_18512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18512 \
    op interface \
    ports { weights_load_18512 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name weights_load_18513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18513 \
    op interface \
    ports { weights_load_18513 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name weights_load_18514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18514 \
    op interface \
    ports { weights_load_18514 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name weights_load_18515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18515 \
    op interface \
    ports { weights_load_18515 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name weights_load_18516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18516 \
    op interface \
    ports { weights_load_18516 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name temp_sum_4088 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4088 \
    op interface \
    ports { temp_sum_4088 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name weights_load_18517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18517 \
    op interface \
    ports { weights_load_18517 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name weights_load_18518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18518 \
    op interface \
    ports { weights_load_18518 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name weights_load_18519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18519 \
    op interface \
    ports { weights_load_18519 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name weights_load_18520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18520 \
    op interface \
    ports { weights_load_18520 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name weights_load_18521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18521 \
    op interface \
    ports { weights_load_18521 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name weights_load_18522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18522 \
    op interface \
    ports { weights_load_18522 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name weights_load_18523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18523 \
    op interface \
    ports { weights_load_18523 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name weights_load_18524 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18524 \
    op interface \
    ports { weights_load_18524 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name weights_load_18525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18525 \
    op interface \
    ports { weights_load_18525 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name temp_sum_4090 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4090 \
    op interface \
    ports { temp_sum_4090 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name weights_load_18526 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18526 \
    op interface \
    ports { weights_load_18526 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name weights_load_18527 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18527 \
    op interface \
    ports { weights_load_18527 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name weights_load_18528 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18528 \
    op interface \
    ports { weights_load_18528 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name weights_load_18529 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18529 \
    op interface \
    ports { weights_load_18529 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name weights_load_18530 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18530 \
    op interface \
    ports { weights_load_18530 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name weights_load_18531 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18531 \
    op interface \
    ports { weights_load_18531 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name weights_load_18532 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18532 \
    op interface \
    ports { weights_load_18532 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name weights_load_18533 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18533 \
    op interface \
    ports { weights_load_18533 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name weights_load_18534 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18534 \
    op interface \
    ports { weights_load_18534 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name temp_sum_4092 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4092 \
    op interface \
    ports { temp_sum_4092 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name weights_load_18535 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18535 \
    op interface \
    ports { weights_load_18535 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name weights_load_18536 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18536 \
    op interface \
    ports { weights_load_18536 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name weights_load_18537 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18537 \
    op interface \
    ports { weights_load_18537 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name weights_load_18538 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18538 \
    op interface \
    ports { weights_load_18538 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name weights_load_18539 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18539 \
    op interface \
    ports { weights_load_18539 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name weights_load_18540 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18540 \
    op interface \
    ports { weights_load_18540 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name weights_load_18541 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18541 \
    op interface \
    ports { weights_load_18541 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name weights_load_18542 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18542 \
    op interface \
    ports { weights_load_18542 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name weights_load_18543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18543 \
    op interface \
    ports { weights_load_18543 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name temp_sum_4094 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4094 \
    op interface \
    ports { temp_sum_4094 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name weights_load_18544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18544 \
    op interface \
    ports { weights_load_18544 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name weights_load_18545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18545 \
    op interface \
    ports { weights_load_18545 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name weights_load_18546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18546 \
    op interface \
    ports { weights_load_18546 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name weights_load_18547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18547 \
    op interface \
    ports { weights_load_18547 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name weights_load_18548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18548 \
    op interface \
    ports { weights_load_18548 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name weights_load_18549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18549 \
    op interface \
    ports { weights_load_18549 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name weights_load_18550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18550 \
    op interface \
    ports { weights_load_18550 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name weights_load_18551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18551 \
    op interface \
    ports { weights_load_18551 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name weights_load_18552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18552 \
    op interface \
    ports { weights_load_18552 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name temp_sum_4096 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4096 \
    op interface \
    ports { temp_sum_4096 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name weights_load_18553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18553 \
    op interface \
    ports { weights_load_18553 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name weights_load_18554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18554 \
    op interface \
    ports { weights_load_18554 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name weights_load_18555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18555 \
    op interface \
    ports { weights_load_18555 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name weights_load_18556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18556 \
    op interface \
    ports { weights_load_18556 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name weights_load_18557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18557 \
    op interface \
    ports { weights_load_18557 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name weights_load_18558 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18558 \
    op interface \
    ports { weights_load_18558 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name weights_load_18559 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18559 \
    op interface \
    ports { weights_load_18559 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name weights_load_18560 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18560 \
    op interface \
    ports { weights_load_18560 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name weights_load_18561 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18561 \
    op interface \
    ports { weights_load_18561 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name temp_sum_4098 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4098 \
    op interface \
    ports { temp_sum_4098 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name weights_load_18562 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18562 \
    op interface \
    ports { weights_load_18562 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name weights_load_18563 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18563 \
    op interface \
    ports { weights_load_18563 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name weights_load_18564 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18564 \
    op interface \
    ports { weights_load_18564 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name weights_load_18565 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18565 \
    op interface \
    ports { weights_load_18565 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name weights_load_18566 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18566 \
    op interface \
    ports { weights_load_18566 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name weights_load_18567 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18567 \
    op interface \
    ports { weights_load_18567 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name weights_load_18568 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18568 \
    op interface \
    ports { weights_load_18568 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name weights_load_18569 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18569 \
    op interface \
    ports { weights_load_18569 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name weights_load_18570 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18570 \
    op interface \
    ports { weights_load_18570 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name temp_sum_4100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4100 \
    op interface \
    ports { temp_sum_4100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name weights_load_18571 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18571 \
    op interface \
    ports { weights_load_18571 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name weights_load_18572 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18572 \
    op interface \
    ports { weights_load_18572 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name weights_load_18573 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18573 \
    op interface \
    ports { weights_load_18573 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name weights_load_18574 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18574 \
    op interface \
    ports { weights_load_18574 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name weights_load_18575 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18575 \
    op interface \
    ports { weights_load_18575 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name weights_load_18576 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18576 \
    op interface \
    ports { weights_load_18576 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name weights_load_18577 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18577 \
    op interface \
    ports { weights_load_18577 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name weights_load_18578 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18578 \
    op interface \
    ports { weights_load_18578 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name weights_load_18579 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18579 \
    op interface \
    ports { weights_load_18579 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name temp_sum_4102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4102 \
    op interface \
    ports { temp_sum_4102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name weights_load_18580 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18580 \
    op interface \
    ports { weights_load_18580 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name weights_load_18581 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18581 \
    op interface \
    ports { weights_load_18581 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name weights_load_18582 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18582 \
    op interface \
    ports { weights_load_18582 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name weights_load_18583 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18583 \
    op interface \
    ports { weights_load_18583 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name weights_load_18584 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18584 \
    op interface \
    ports { weights_load_18584 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name weights_load_18585 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18585 \
    op interface \
    ports { weights_load_18585 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name weights_load_18586 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18586 \
    op interface \
    ports { weights_load_18586 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name weights_load_18587 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18587 \
    op interface \
    ports { weights_load_18587 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name weights_load_18588 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18588 \
    op interface \
    ports { weights_load_18588 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name temp_sum_4104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4104 \
    op interface \
    ports { temp_sum_4104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name weights_load_18589 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18589 \
    op interface \
    ports { weights_load_18589 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name weights_load_18590 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18590 \
    op interface \
    ports { weights_load_18590 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name weights_load_18591 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18591 \
    op interface \
    ports { weights_load_18591 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name weights_load_18592 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18592 \
    op interface \
    ports { weights_load_18592 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name weights_load_18593 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18593 \
    op interface \
    ports { weights_load_18593 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name weights_load_18594 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18594 \
    op interface \
    ports { weights_load_18594 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name weights_load_18595 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18595 \
    op interface \
    ports { weights_load_18595 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name weights_load_18596 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18596 \
    op interface \
    ports { weights_load_18596 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name weights_load_18597 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18597 \
    op interface \
    ports { weights_load_18597 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name temp_sum_4106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4106 \
    op interface \
    ports { temp_sum_4106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name weights_load_18598 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18598 \
    op interface \
    ports { weights_load_18598 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name weights_load_18599 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18599 \
    op interface \
    ports { weights_load_18599 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name weights_load_18600 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18600 \
    op interface \
    ports { weights_load_18600 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name weights_load_18601 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18601 \
    op interface \
    ports { weights_load_18601 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name weights_load_18602 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18602 \
    op interface \
    ports { weights_load_18602 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name weights_load_18603 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18603 \
    op interface \
    ports { weights_load_18603 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name weights_load_18604 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18604 \
    op interface \
    ports { weights_load_18604 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name weights_load_18605 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18605 \
    op interface \
    ports { weights_load_18605 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name weights_load_18606 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18606 \
    op interface \
    ports { weights_load_18606 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name temp_sum_4108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4108 \
    op interface \
    ports { temp_sum_4108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name weights_load_18607 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18607 \
    op interface \
    ports { weights_load_18607 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name weights_load_18608 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18608 \
    op interface \
    ports { weights_load_18608 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name weights_load_18609 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18609 \
    op interface \
    ports { weights_load_18609 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name weights_load_18610 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18610 \
    op interface \
    ports { weights_load_18610 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name weights_load_18611 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18611 \
    op interface \
    ports { weights_load_18611 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name weights_load_18612 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18612 \
    op interface \
    ports { weights_load_18612 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name weights_load_18613 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18613 \
    op interface \
    ports { weights_load_18613 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name weights_load_18614 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18614 \
    op interface \
    ports { weights_load_18614 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name weights_load_18615 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18615 \
    op interface \
    ports { weights_load_18615 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name temp_sum_4110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4110 \
    op interface \
    ports { temp_sum_4110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name weights_load_18616 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18616 \
    op interface \
    ports { weights_load_18616 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name weights_load_18617 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18617 \
    op interface \
    ports { weights_load_18617 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name weights_load_18618 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18618 \
    op interface \
    ports { weights_load_18618 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name weights_load_18619 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18619 \
    op interface \
    ports { weights_load_18619 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name weights_load_18620 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18620 \
    op interface \
    ports { weights_load_18620 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name weights_load_18621 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18621 \
    op interface \
    ports { weights_load_18621 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name weights_load_18622 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18622 \
    op interface \
    ports { weights_load_18622 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name weights_load_18623 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18623 \
    op interface \
    ports { weights_load_18623 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name weights_load_18624 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18624 \
    op interface \
    ports { weights_load_18624 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name temp_sum_4112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4112 \
    op interface \
    ports { temp_sum_4112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name weights_load_18625 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18625 \
    op interface \
    ports { weights_load_18625 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name weights_load_18626 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18626 \
    op interface \
    ports { weights_load_18626 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name weights_load_18627 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18627 \
    op interface \
    ports { weights_load_18627 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name weights_load_18628 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18628 \
    op interface \
    ports { weights_load_18628 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name weights_load_18629 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18629 \
    op interface \
    ports { weights_load_18629 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name weights_load_18630 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18630 \
    op interface \
    ports { weights_load_18630 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name weights_load_18631 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18631 \
    op interface \
    ports { weights_load_18631 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name weights_load_18632 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18632 \
    op interface \
    ports { weights_load_18632 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name weights_load_18633 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18633 \
    op interface \
    ports { weights_load_18633 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name temp_sum_4114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4114 \
    op interface \
    ports { temp_sum_4114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name weights_load_18634 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18634 \
    op interface \
    ports { weights_load_18634 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name weights_load_18635 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18635 \
    op interface \
    ports { weights_load_18635 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name weights_load_18636 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18636 \
    op interface \
    ports { weights_load_18636 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name weights_load_18637 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18637 \
    op interface \
    ports { weights_load_18637 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name weights_load_18638 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18638 \
    op interface \
    ports { weights_load_18638 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name weights_load_18639 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18639 \
    op interface \
    ports { weights_load_18639 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name weights_load_18640 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18640 \
    op interface \
    ports { weights_load_18640 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name weights_load_18641 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18641 \
    op interface \
    ports { weights_load_18641 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name weights_load_18642 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18642 \
    op interface \
    ports { weights_load_18642 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name temp_sum_4116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4116 \
    op interface \
    ports { temp_sum_4116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name weights_load_18643 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18643 \
    op interface \
    ports { weights_load_18643 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name weights_load_18644 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18644 \
    op interface \
    ports { weights_load_18644 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name weights_load_18645 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18645 \
    op interface \
    ports { weights_load_18645 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name weights_load_18646 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18646 \
    op interface \
    ports { weights_load_18646 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name weights_load_18647 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18647 \
    op interface \
    ports { weights_load_18647 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name weights_load_18648 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18648 \
    op interface \
    ports { weights_load_18648 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name weights_load_18649 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18649 \
    op interface \
    ports { weights_load_18649 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name weights_load_18650 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18650 \
    op interface \
    ports { weights_load_18650 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name weights_load_18651 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18651 \
    op interface \
    ports { weights_load_18651 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name temp_sum_4118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4118 \
    op interface \
    ports { temp_sum_4118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name weights_load_18652 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18652 \
    op interface \
    ports { weights_load_18652 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name weights_load_18653 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18653 \
    op interface \
    ports { weights_load_18653 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name weights_load_18654 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18654 \
    op interface \
    ports { weights_load_18654 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name weights_load_18655 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18655 \
    op interface \
    ports { weights_load_18655 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name weights_load_18656 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18656 \
    op interface \
    ports { weights_load_18656 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name weights_load_18657 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18657 \
    op interface \
    ports { weights_load_18657 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name weights_load_18658 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18658 \
    op interface \
    ports { weights_load_18658 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name weights_load_18659 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18659 \
    op interface \
    ports { weights_load_18659 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name weights_load_18660 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18660 \
    op interface \
    ports { weights_load_18660 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name temp_sum_4120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4120 \
    op interface \
    ports { temp_sum_4120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name weights_load_18661 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18661 \
    op interface \
    ports { weights_load_18661 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name weights_load_18662 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18662 \
    op interface \
    ports { weights_load_18662 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name weights_load_18663 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18663 \
    op interface \
    ports { weights_load_18663 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name weights_load_18664 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18664 \
    op interface \
    ports { weights_load_18664 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name weights_load_18665 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18665 \
    op interface \
    ports { weights_load_18665 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name weights_load_18666 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18666 \
    op interface \
    ports { weights_load_18666 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name weights_load_18667 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18667 \
    op interface \
    ports { weights_load_18667 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name weights_load_18668 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18668 \
    op interface \
    ports { weights_load_18668 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name weights_load_18669 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18669 \
    op interface \
    ports { weights_load_18669 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name temp_sum_4122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4122 \
    op interface \
    ports { temp_sum_4122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name weights_load_18670 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18670 \
    op interface \
    ports { weights_load_18670 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name weights_load_18671 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18671 \
    op interface \
    ports { weights_load_18671 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name weights_load_18672 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18672 \
    op interface \
    ports { weights_load_18672 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name weights_load_18673 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18673 \
    op interface \
    ports { weights_load_18673 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name weights_load_18674 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18674 \
    op interface \
    ports { weights_load_18674 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name weights_load_18675 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18675 \
    op interface \
    ports { weights_load_18675 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name weights_load_18676 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18676 \
    op interface \
    ports { weights_load_18676 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name weights_load_18677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18677 \
    op interface \
    ports { weights_load_18677 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name weights_load_18678 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18678 \
    op interface \
    ports { weights_load_18678 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name temp_sum_4124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4124 \
    op interface \
    ports { temp_sum_4124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name weights_load_18679 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18679 \
    op interface \
    ports { weights_load_18679 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name weights_load_18680 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18680 \
    op interface \
    ports { weights_load_18680 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name weights_load_18681 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18681 \
    op interface \
    ports { weights_load_18681 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name weights_load_18682 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18682 \
    op interface \
    ports { weights_load_18682 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name weights_load_18683 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18683 \
    op interface \
    ports { weights_load_18683 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name weights_load_18684 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18684 \
    op interface \
    ports { weights_load_18684 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name weights_load_18685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18685 \
    op interface \
    ports { weights_load_18685 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name weights_load_18686 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18686 \
    op interface \
    ports { weights_load_18686 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name weights_load_18687 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18687 \
    op interface \
    ports { weights_load_18687 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name temp_sum_4126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_sum_4126 \
    op interface \
    ports { temp_sum_4126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName accel_flow_control_loop_pipe_sequential_init_U
set CompName accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}



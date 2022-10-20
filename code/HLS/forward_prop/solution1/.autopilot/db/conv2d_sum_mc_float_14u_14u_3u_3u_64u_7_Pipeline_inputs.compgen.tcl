# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4759 \
    name conv2d_64_padded_window_stream_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_7 \
    op interface \
    ports { conv2d_64_padded_window_stream_7_dout { I 288 vector } conv2d_64_padded_window_stream_7_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_7_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_7_empty_n { I 1 bit } conv2d_64_padded_window_stream_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4760 \
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
    id 4761 \
    name weights_load_1151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1151 \
    op interface \
    ports { weights_load_1151 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4762 \
    name weights_load_1152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1152 \
    op interface \
    ports { weights_load_1152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4763 \
    name weights_load_1153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1153 \
    op interface \
    ports { weights_load_1153 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4764 \
    name weights_load_1154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1154 \
    op interface \
    ports { weights_load_1154 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4765 \
    name weights_load_1155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1155 \
    op interface \
    ports { weights_load_1155 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4766 \
    name weights_load_1156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1156 \
    op interface \
    ports { weights_load_1156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4767 \
    name weights_load_1157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1157 \
    op interface \
    ports { weights_load_1157 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4768 \
    name weights_load_1158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1158 \
    op interface \
    ports { weights_load_1158 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4769 \
    name in_channel_map_stream_7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_7 \
    op interface \
    ports { in_channel_map_stream_7_din { O 32 vector } in_channel_map_stream_7_num_data_valid { I 3 vector } in_channel_map_stream_7_fifo_cap { I 3 vector } in_channel_map_stream_7_full_n { I 1 bit } in_channel_map_stream_7_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4770 \
    name weights_load_1159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1159 \
    op interface \
    ports { weights_load_1159 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4771 \
    name weights_load_1160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1160 \
    op interface \
    ports { weights_load_1160 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4772 \
    name weights_load_1161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1161 \
    op interface \
    ports { weights_load_1161 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4773 \
    name weights_load_1162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1162 \
    op interface \
    ports { weights_load_1162 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4774 \
    name weights_load_1163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1163 \
    op interface \
    ports { weights_load_1163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4775 \
    name weights_load_1164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1164 \
    op interface \
    ports { weights_load_1164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4776 \
    name weights_load_1165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1165 \
    op interface \
    ports { weights_load_1165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4777 \
    name weights_load_1166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1166 \
    op interface \
    ports { weights_load_1166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4778 \
    name weights_load_1167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1167 \
    op interface \
    ports { weights_load_1167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4779 \
    name weights_load_1168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1168 \
    op interface \
    ports { weights_load_1168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4780 \
    name weights_load_1169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1169 \
    op interface \
    ports { weights_load_1169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4781 \
    name weights_load_1170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1170 \
    op interface \
    ports { weights_load_1170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4782 \
    name weights_load_1171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1171 \
    op interface \
    ports { weights_load_1171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4783 \
    name weights_load_1172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1172 \
    op interface \
    ports { weights_load_1172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4784 \
    name weights_load_1173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1173 \
    op interface \
    ports { weights_load_1173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4785 \
    name weights_load_1174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1174 \
    op interface \
    ports { weights_load_1174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4786 \
    name weights_load_1175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1175 \
    op interface \
    ports { weights_load_1175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4787 \
    name weights_load_1176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1176 \
    op interface \
    ports { weights_load_1176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4788 \
    name weights_load_1177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1177 \
    op interface \
    ports { weights_load_1177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4789 \
    name weights_load_1178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1178 \
    op interface \
    ports { weights_load_1178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4790 \
    name weights_load_1179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1179 \
    op interface \
    ports { weights_load_1179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4791 \
    name weights_load_1180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1180 \
    op interface \
    ports { weights_load_1180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4792 \
    name weights_load_1181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1181 \
    op interface \
    ports { weights_load_1181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4793 \
    name weights_load_1182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1182 \
    op interface \
    ports { weights_load_1182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4794 \
    name weights_load_1183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1183 \
    op interface \
    ports { weights_load_1183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4795 \
    name weights_load_1184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1184 \
    op interface \
    ports { weights_load_1184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4796 \
    name weights_load_1185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1185 \
    op interface \
    ports { weights_load_1185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4797 \
    name weights_load_1186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1186 \
    op interface \
    ports { weights_load_1186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4798 \
    name weights_load_1187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1187 \
    op interface \
    ports { weights_load_1187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4799 \
    name weights_load_1188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1188 \
    op interface \
    ports { weights_load_1188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4800 \
    name weights_load_1189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1189 \
    op interface \
    ports { weights_load_1189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4801 \
    name weights_load_1190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1190 \
    op interface \
    ports { weights_load_1190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4802 \
    name weights_load_1191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1191 \
    op interface \
    ports { weights_load_1191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4803 \
    name weights_load_1192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1192 \
    op interface \
    ports { weights_load_1192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4804 \
    name weights_load_1193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1193 \
    op interface \
    ports { weights_load_1193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4805 \
    name weights_load_1194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1194 \
    op interface \
    ports { weights_load_1194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4806 \
    name weights_load_1195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1195 \
    op interface \
    ports { weights_load_1195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4807 \
    name weights_load_1196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1196 \
    op interface \
    ports { weights_load_1196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4808 \
    name weights_load_1197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1197 \
    op interface \
    ports { weights_load_1197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4809 \
    name weights_load_1198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1198 \
    op interface \
    ports { weights_load_1198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4810 \
    name weights_load_1199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1199 \
    op interface \
    ports { weights_load_1199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4811 \
    name weights_load_1200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1200 \
    op interface \
    ports { weights_load_1200 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4812 \
    name weights_load_1201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1201 \
    op interface \
    ports { weights_load_1201 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4813 \
    name weights_load_1202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1202 \
    op interface \
    ports { weights_load_1202 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4814 \
    name weights_load_1203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1203 \
    op interface \
    ports { weights_load_1203 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4815 \
    name weights_load_1204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1204 \
    op interface \
    ports { weights_load_1204 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4816 \
    name weights_load_1205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1205 \
    op interface \
    ports { weights_load_1205 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4817 \
    name weights_load_1206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1206 \
    op interface \
    ports { weights_load_1206 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4818 \
    name weights_load_1207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1207 \
    op interface \
    ports { weights_load_1207 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4819 \
    name weights_load_1208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1208 \
    op interface \
    ports { weights_load_1208 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4820 \
    name weights_load_1209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1209 \
    op interface \
    ports { weights_load_1209 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4821 \
    name weights_load_1210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1210 \
    op interface \
    ports { weights_load_1210 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4822 \
    name weights_load_1211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1211 \
    op interface \
    ports { weights_load_1211 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4823 \
    name weights_load_1212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1212 \
    op interface \
    ports { weights_load_1212 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4824 \
    name weights_load_1213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1213 \
    op interface \
    ports { weights_load_1213 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4825 \
    name weights_load_1214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1214 \
    op interface \
    ports { weights_load_1214 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4826 \
    name weights_load_1215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1215 \
    op interface \
    ports { weights_load_1215 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4827 \
    name weights_load_1216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1216 \
    op interface \
    ports { weights_load_1216 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4828 \
    name weights_load_1217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1217 \
    op interface \
    ports { weights_load_1217 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4829 \
    name weights_load_1218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1218 \
    op interface \
    ports { weights_load_1218 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4830 \
    name weights_load_1219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1219 \
    op interface \
    ports { weights_load_1219 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4831 \
    name weights_load_1220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1220 \
    op interface \
    ports { weights_load_1220 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4832 \
    name weights_load_1221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1221 \
    op interface \
    ports { weights_load_1221 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4833 \
    name weights_load_1222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1222 \
    op interface \
    ports { weights_load_1222 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4834 \
    name weights_load_1223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1223 \
    op interface \
    ports { weights_load_1223 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4835 \
    name weights_load_1224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1224 \
    op interface \
    ports { weights_load_1224 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4836 \
    name weights_load_1225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1225 \
    op interface \
    ports { weights_load_1225 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4837 \
    name weights_load_1226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1226 \
    op interface \
    ports { weights_load_1226 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4838 \
    name weights_load_1227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1227 \
    op interface \
    ports { weights_load_1227 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4839 \
    name weights_load_1228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1228 \
    op interface \
    ports { weights_load_1228 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4840 \
    name weights_load_1229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1229 \
    op interface \
    ports { weights_load_1229 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4841 \
    name weights_load_1230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1230 \
    op interface \
    ports { weights_load_1230 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4842 \
    name weights_load_1231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1231 \
    op interface \
    ports { weights_load_1231 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4843 \
    name weights_load_1232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1232 \
    op interface \
    ports { weights_load_1232 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4844 \
    name weights_load_1233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1233 \
    op interface \
    ports { weights_load_1233 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4845 \
    name weights_load_1234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1234 \
    op interface \
    ports { weights_load_1234 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4846 \
    name weights_load_1235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1235 \
    op interface \
    ports { weights_load_1235 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4847 \
    name weights_load_1236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1236 \
    op interface \
    ports { weights_load_1236 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4848 \
    name weights_load_1237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1237 \
    op interface \
    ports { weights_load_1237 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4849 \
    name weights_load_1238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1238 \
    op interface \
    ports { weights_load_1238 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4850 \
    name weights_load_1239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1239 \
    op interface \
    ports { weights_load_1239 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4851 \
    name weights_load_1240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1240 \
    op interface \
    ports { weights_load_1240 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4852 \
    name weights_load_1241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1241 \
    op interface \
    ports { weights_load_1241 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4853 \
    name weights_load_1242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1242 \
    op interface \
    ports { weights_load_1242 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4854 \
    name weights_load_1243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1243 \
    op interface \
    ports { weights_load_1243 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4855 \
    name weights_load_1244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1244 \
    op interface \
    ports { weights_load_1244 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4856 \
    name weights_load_1245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1245 \
    op interface \
    ports { weights_load_1245 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4857 \
    name weights_load_1246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1246 \
    op interface \
    ports { weights_load_1246 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4858 \
    name weights_load_1247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1247 \
    op interface \
    ports { weights_load_1247 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4859 \
    name weights_load_1248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1248 \
    op interface \
    ports { weights_load_1248 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4860 \
    name weights_load_1249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1249 \
    op interface \
    ports { weights_load_1249 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4861 \
    name weights_load_1250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1250 \
    op interface \
    ports { weights_load_1250 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4862 \
    name weights_load_1251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1251 \
    op interface \
    ports { weights_load_1251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4863 \
    name weights_load_1252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1252 \
    op interface \
    ports { weights_load_1252 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4864 \
    name weights_load_1253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1253 \
    op interface \
    ports { weights_load_1253 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4865 \
    name weights_load_1254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1254 \
    op interface \
    ports { weights_load_1254 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4866 \
    name weights_load_1255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1255 \
    op interface \
    ports { weights_load_1255 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4867 \
    name weights_load_1256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1256 \
    op interface \
    ports { weights_load_1256 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4868 \
    name weights_load_1257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1257 \
    op interface \
    ports { weights_load_1257 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4869 \
    name weights_load_1258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1258 \
    op interface \
    ports { weights_load_1258 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4870 \
    name weights_load_1259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1259 \
    op interface \
    ports { weights_load_1259 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4871 \
    name weights_load_1260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1260 \
    op interface \
    ports { weights_load_1260 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4872 \
    name weights_load_1261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1261 \
    op interface \
    ports { weights_load_1261 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4873 \
    name weights_load_1262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1262 \
    op interface \
    ports { weights_load_1262 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4874 \
    name weights_load_1263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1263 \
    op interface \
    ports { weights_load_1263 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4875 \
    name weights_load_1264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1264 \
    op interface \
    ports { weights_load_1264 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4876 \
    name weights_load_1265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1265 \
    op interface \
    ports { weights_load_1265 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4877 \
    name weights_load_1266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1266 \
    op interface \
    ports { weights_load_1266 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4878 \
    name weights_load_1267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1267 \
    op interface \
    ports { weights_load_1267 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4879 \
    name weights_load_1268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1268 \
    op interface \
    ports { weights_load_1268 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4880 \
    name weights_load_1269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1269 \
    op interface \
    ports { weights_load_1269 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4881 \
    name weights_load_1270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1270 \
    op interface \
    ports { weights_load_1270 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4882 \
    name weights_load_1271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1271 \
    op interface \
    ports { weights_load_1271 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4883 \
    name weights_load_1272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1272 \
    op interface \
    ports { weights_load_1272 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4884 \
    name weights_load_1273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1273 \
    op interface \
    ports { weights_load_1273 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4885 \
    name weights_load_1274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1274 \
    op interface \
    ports { weights_load_1274 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4886 \
    name weights_load_1275 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1275 \
    op interface \
    ports { weights_load_1275 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4887 \
    name weights_load_1276 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1276 \
    op interface \
    ports { weights_load_1276 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4888 \
    name weights_load_1277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1277 \
    op interface \
    ports { weights_load_1277 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4889 \
    name weights_load_1278 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1278 \
    op interface \
    ports { weights_load_1278 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4890 \
    name weights_load_1279 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1279 \
    op interface \
    ports { weights_load_1279 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4891 \
    name weights_load_1280 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1280 \
    op interface \
    ports { weights_load_1280 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4892 \
    name weights_load_1281 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1281 \
    op interface \
    ports { weights_load_1281 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4893 \
    name weights_load_1282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1282 \
    op interface \
    ports { weights_load_1282 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4894 \
    name weights_load_1283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1283 \
    op interface \
    ports { weights_load_1283 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4895 \
    name weights_load_1284 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1284 \
    op interface \
    ports { weights_load_1284 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4896 \
    name weights_load_1285 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1285 \
    op interface \
    ports { weights_load_1285 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4897 \
    name weights_load_1286 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1286 \
    op interface \
    ports { weights_load_1286 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4898 \
    name weights_load_1287 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1287 \
    op interface \
    ports { weights_load_1287 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4899 \
    name weights_load_1288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1288 \
    op interface \
    ports { weights_load_1288 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4900 \
    name weights_load_1289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1289 \
    op interface \
    ports { weights_load_1289 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4901 \
    name weights_load_1290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1290 \
    op interface \
    ports { weights_load_1290 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4902 \
    name weights_load_1291 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1291 \
    op interface \
    ports { weights_load_1291 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4903 \
    name weights_load_1292 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1292 \
    op interface \
    ports { weights_load_1292 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4904 \
    name weights_load_1293 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1293 \
    op interface \
    ports { weights_load_1293 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4905 \
    name weights_load_1294 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1294 \
    op interface \
    ports { weights_load_1294 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4906 \
    name weights_load_1295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1295 \
    op interface \
    ports { weights_load_1295 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4907 \
    name weights_load_1296 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1296 \
    op interface \
    ports { weights_load_1296 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4908 \
    name weights_load_1297 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1297 \
    op interface \
    ports { weights_load_1297 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4909 \
    name weights_load_1298 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1298 \
    op interface \
    ports { weights_load_1298 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4910 \
    name weights_load_1299 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1299 \
    op interface \
    ports { weights_load_1299 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4911 \
    name weights_load_1300 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1300 \
    op interface \
    ports { weights_load_1300 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4912 \
    name weights_load_1301 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1301 \
    op interface \
    ports { weights_load_1301 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4913 \
    name weights_load_1302 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1302 \
    op interface \
    ports { weights_load_1302 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4914 \
    name weights_load_1303 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1303 \
    op interface \
    ports { weights_load_1303 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4915 \
    name weights_load_1304 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1304 \
    op interface \
    ports { weights_load_1304 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4916 \
    name weights_load_1305 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1305 \
    op interface \
    ports { weights_load_1305 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4917 \
    name weights_load_1306 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1306 \
    op interface \
    ports { weights_load_1306 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4918 \
    name weights_load_1307 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1307 \
    op interface \
    ports { weights_load_1307 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4919 \
    name weights_load_1308 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1308 \
    op interface \
    ports { weights_load_1308 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4920 \
    name weights_load_1309 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1309 \
    op interface \
    ports { weights_load_1309 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4921 \
    name weights_load_1310 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1310 \
    op interface \
    ports { weights_load_1310 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4922 \
    name weights_load_1311 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1311 \
    op interface \
    ports { weights_load_1311 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4923 \
    name weights_load_1312 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1312 \
    op interface \
    ports { weights_load_1312 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4924 \
    name weights_load_1313 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1313 \
    op interface \
    ports { weights_load_1313 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4925 \
    name weights_load_1314 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1314 \
    op interface \
    ports { weights_load_1314 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4926 \
    name weights_load_1315 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1315 \
    op interface \
    ports { weights_load_1315 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4927 \
    name weights_load_1316 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1316 \
    op interface \
    ports { weights_load_1316 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4928 \
    name weights_load_1317 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1317 \
    op interface \
    ports { weights_load_1317 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4929 \
    name weights_load_1318 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1318 \
    op interface \
    ports { weights_load_1318 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4930 \
    name weights_load_1319 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1319 \
    op interface \
    ports { weights_load_1319 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4931 \
    name weights_load_1320 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1320 \
    op interface \
    ports { weights_load_1320 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4932 \
    name weights_load_1321 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1321 \
    op interface \
    ports { weights_load_1321 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4933 \
    name weights_load_1322 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1322 \
    op interface \
    ports { weights_load_1322 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4934 \
    name weights_load_1323 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1323 \
    op interface \
    ports { weights_load_1323 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4935 \
    name weights_load_1324 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1324 \
    op interface \
    ports { weights_load_1324 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4936 \
    name weights_load_1325 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1325 \
    op interface \
    ports { weights_load_1325 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4937 \
    name weights_load_1326 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1326 \
    op interface \
    ports { weights_load_1326 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4938 \
    name weights_load_1327 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1327 \
    op interface \
    ports { weights_load_1327 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4939 \
    name weights_load_1328 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1328 \
    op interface \
    ports { weights_load_1328 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4940 \
    name weights_load_1329 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1329 \
    op interface \
    ports { weights_load_1329 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4941 \
    name weights_load_1330 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1330 \
    op interface \
    ports { weights_load_1330 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4942 \
    name weights_load_1331 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1331 \
    op interface \
    ports { weights_load_1331 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4943 \
    name weights_load_1332 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1332 \
    op interface \
    ports { weights_load_1332 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4944 \
    name weights_load_1333 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1333 \
    op interface \
    ports { weights_load_1333 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4945 \
    name weights_load_1334 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1334 \
    op interface \
    ports { weights_load_1334 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4946 \
    name weights_load_1335 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1335 \
    op interface \
    ports { weights_load_1335 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4947 \
    name weights_load_1336 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1336 \
    op interface \
    ports { weights_load_1336 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4948 \
    name weights_load_1337 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1337 \
    op interface \
    ports { weights_load_1337 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4949 \
    name weights_load_1338 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1338 \
    op interface \
    ports { weights_load_1338 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4950 \
    name weights_load_1339 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1339 \
    op interface \
    ports { weights_load_1339 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4951 \
    name weights_load_1340 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1340 \
    op interface \
    ports { weights_load_1340 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4952 \
    name weights_load_1341 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1341 \
    op interface \
    ports { weights_load_1341 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4953 \
    name weights_load_1342 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1342 \
    op interface \
    ports { weights_load_1342 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4954 \
    name weights_load_1343 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1343 \
    op interface \
    ports { weights_load_1343 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4955 \
    name weights_load_1344 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1344 \
    op interface \
    ports { weights_load_1344 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4956 \
    name weights_load_1345 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1345 \
    op interface \
    ports { weights_load_1345 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4957 \
    name weights_load_1346 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1346 \
    op interface \
    ports { weights_load_1346 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4958 \
    name weights_load_1347 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1347 \
    op interface \
    ports { weights_load_1347 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4959 \
    name weights_load_1348 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1348 \
    op interface \
    ports { weights_load_1348 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4960 \
    name weights_load_1349 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1349 \
    op interface \
    ports { weights_load_1349 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4961 \
    name weights_load_1350 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1350 \
    op interface \
    ports { weights_load_1350 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4962 \
    name weights_load_1351 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1351 \
    op interface \
    ports { weights_load_1351 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4963 \
    name weights_load_1352 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1352 \
    op interface \
    ports { weights_load_1352 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4964 \
    name weights_load_1353 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1353 \
    op interface \
    ports { weights_load_1353 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4965 \
    name weights_load_1354 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1354 \
    op interface \
    ports { weights_load_1354 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4966 \
    name weights_load_1355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1355 \
    op interface \
    ports { weights_load_1355 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4967 \
    name weights_load_1356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1356 \
    op interface \
    ports { weights_load_1356 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4968 \
    name weights_load_1357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1357 \
    op interface \
    ports { weights_load_1357 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4969 \
    name weights_load_1358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1358 \
    op interface \
    ports { weights_load_1358 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4970 \
    name weights_load_1359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1359 \
    op interface \
    ports { weights_load_1359 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4971 \
    name weights_load_1360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1360 \
    op interface \
    ports { weights_load_1360 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4972 \
    name weights_load_1361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1361 \
    op interface \
    ports { weights_load_1361 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4973 \
    name weights_load_1362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1362 \
    op interface \
    ports { weights_load_1362 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4974 \
    name weights_load_1363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1363 \
    op interface \
    ports { weights_load_1363 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4975 \
    name weights_load_1364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1364 \
    op interface \
    ports { weights_load_1364 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4976 \
    name weights_load_1365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1365 \
    op interface \
    ports { weights_load_1365 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4977 \
    name weights_load_1366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1366 \
    op interface \
    ports { weights_load_1366 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4978 \
    name weights_load_1367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1367 \
    op interface \
    ports { weights_load_1367 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4979 \
    name weights_load_1368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1368 \
    op interface \
    ports { weights_load_1368 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4980 \
    name weights_load_1369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1369 \
    op interface \
    ports { weights_load_1369 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4981 \
    name weights_load_1370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1370 \
    op interface \
    ports { weights_load_1370 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4982 \
    name weights_load_1371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1371 \
    op interface \
    ports { weights_load_1371 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4983 \
    name weights_load_1372 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1372 \
    op interface \
    ports { weights_load_1372 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4984 \
    name weights_load_1373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1373 \
    op interface \
    ports { weights_load_1373 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4985 \
    name weights_load_1374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1374 \
    op interface \
    ports { weights_load_1374 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4986 \
    name weights_load_1375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1375 \
    op interface \
    ports { weights_load_1375 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4987 \
    name weights_load_1376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1376 \
    op interface \
    ports { weights_load_1376 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4988 \
    name weights_load_1377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1377 \
    op interface \
    ports { weights_load_1377 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4989 \
    name weights_load_1378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1378 \
    op interface \
    ports { weights_load_1378 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4990 \
    name weights_load_1379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1379 \
    op interface \
    ports { weights_load_1379 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4991 \
    name weights_load_1380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1380 \
    op interface \
    ports { weights_load_1380 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4992 \
    name weights_load_1381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1381 \
    op interface \
    ports { weights_load_1381 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4993 \
    name weights_load_1382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1382 \
    op interface \
    ports { weights_load_1382 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4994 \
    name weights_load_1383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1383 \
    op interface \
    ports { weights_load_1383 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4995 \
    name weights_load_1384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1384 \
    op interface \
    ports { weights_load_1384 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4996 \
    name weights_load_1385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1385 \
    op interface \
    ports { weights_load_1385 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4997 \
    name weights_load_1386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1386 \
    op interface \
    ports { weights_load_1386 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4998 \
    name weights_load_1387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1387 \
    op interface \
    ports { weights_load_1387 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4999 \
    name weights_load_1388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1388 \
    op interface \
    ports { weights_load_1388 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5000 \
    name weights_load_1389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1389 \
    op interface \
    ports { weights_load_1389 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5001 \
    name weights_load_1390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1390 \
    op interface \
    ports { weights_load_1390 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5002 \
    name weights_load_1391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1391 \
    op interface \
    ports { weights_load_1391 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5003 \
    name weights_load_1392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1392 \
    op interface \
    ports { weights_load_1392 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5004 \
    name weights_load_1393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1393 \
    op interface \
    ports { weights_load_1393 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5005 \
    name weights_load_1394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1394 \
    op interface \
    ports { weights_load_1394 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5006 \
    name weights_load_1395 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1395 \
    op interface \
    ports { weights_load_1395 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5007 \
    name weights_load_1396 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1396 \
    op interface \
    ports { weights_load_1396 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5008 \
    name weights_load_1397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1397 \
    op interface \
    ports { weights_load_1397 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5009 \
    name weights_load_1398 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1398 \
    op interface \
    ports { weights_load_1398 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5010 \
    name weights_load_1399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1399 \
    op interface \
    ports { weights_load_1399 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5011 \
    name weights_load_1400 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1400 \
    op interface \
    ports { weights_load_1400 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5012 \
    name weights_load_1401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1401 \
    op interface \
    ports { weights_load_1401 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5013 \
    name weights_load_1402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1402 \
    op interface \
    ports { weights_load_1402 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5014 \
    name weights_load_1403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1403 \
    op interface \
    ports { weights_load_1403 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5015 \
    name weights_load_1404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1404 \
    op interface \
    ports { weights_load_1404 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5016 \
    name weights_load_1405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1405 \
    op interface \
    ports { weights_load_1405 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5017 \
    name weights_load_1406 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1406 \
    op interface \
    ports { weights_load_1406 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5018 \
    name weights_load_1407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1407 \
    op interface \
    ports { weights_load_1407 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5019 \
    name weights_load_1408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1408 \
    op interface \
    ports { weights_load_1408 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5020 \
    name weights_load_1409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1409 \
    op interface \
    ports { weights_load_1409 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5021 \
    name weights_load_1410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1410 \
    op interface \
    ports { weights_load_1410 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5022 \
    name weights_load_1411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1411 \
    op interface \
    ports { weights_load_1411 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5023 \
    name weights_load_1412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1412 \
    op interface \
    ports { weights_load_1412 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5024 \
    name weights_load_1413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1413 \
    op interface \
    ports { weights_load_1413 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5025 \
    name weights_load_1414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1414 \
    op interface \
    ports { weights_load_1414 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5026 \
    name weights_load_1415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1415 \
    op interface \
    ports { weights_load_1415 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5027 \
    name weights_load_1416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1416 \
    op interface \
    ports { weights_load_1416 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5028 \
    name weights_load_1417 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1417 \
    op interface \
    ports { weights_load_1417 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5029 \
    name weights_load_1418 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1418 \
    op interface \
    ports { weights_load_1418 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5030 \
    name weights_load_1419 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1419 \
    op interface \
    ports { weights_load_1419 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5031 \
    name weights_load_1420 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1420 \
    op interface \
    ports { weights_load_1420 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5032 \
    name weights_load_1421 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1421 \
    op interface \
    ports { weights_load_1421 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5033 \
    name weights_load_1422 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1422 \
    op interface \
    ports { weights_load_1422 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5034 \
    name weights_load_1423 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1423 \
    op interface \
    ports { weights_load_1423 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5035 \
    name weights_load_1424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1424 \
    op interface \
    ports { weights_load_1424 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5036 \
    name weights_load_1425 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1425 \
    op interface \
    ports { weights_load_1425 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5037 \
    name weights_load_1426 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1426 \
    op interface \
    ports { weights_load_1426 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5038 \
    name weights_load_1427 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1427 \
    op interface \
    ports { weights_load_1427 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5039 \
    name weights_load_1428 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1428 \
    op interface \
    ports { weights_load_1428 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5040 \
    name weights_load_1429 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1429 \
    op interface \
    ports { weights_load_1429 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5041 \
    name weights_load_1430 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1430 \
    op interface \
    ports { weights_load_1430 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5042 \
    name weights_load_1431 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1431 \
    op interface \
    ports { weights_load_1431 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5043 \
    name weights_load_1432 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1432 \
    op interface \
    ports { weights_load_1432 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5044 \
    name weights_load_1433 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1433 \
    op interface \
    ports { weights_load_1433 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5045 \
    name weights_load_1434 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1434 \
    op interface \
    ports { weights_load_1434 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5046 \
    name weights_load_1435 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1435 \
    op interface \
    ports { weights_load_1435 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5047 \
    name weights_load_1436 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1436 \
    op interface \
    ports { weights_load_1436 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5048 \
    name weights_load_1437 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1437 \
    op interface \
    ports { weights_load_1437 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5049 \
    name weights_load_1438 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1438 \
    op interface \
    ports { weights_load_1438 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5050 \
    name weights_load_1439 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1439 \
    op interface \
    ports { weights_load_1439 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5051 \
    name weights_load_1440 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1440 \
    op interface \
    ports { weights_load_1440 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5052 \
    name weights_load_1441 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1441 \
    op interface \
    ports { weights_load_1441 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5053 \
    name weights_load_1442 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1442 \
    op interface \
    ports { weights_load_1442 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5054 \
    name weights_load_1443 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1443 \
    op interface \
    ports { weights_load_1443 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5055 \
    name weights_load_1444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1444 \
    op interface \
    ports { weights_load_1444 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5056 \
    name weights_load_1445 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1445 \
    op interface \
    ports { weights_load_1445 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5057 \
    name weights_load_1446 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1446 \
    op interface \
    ports { weights_load_1446 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5058 \
    name weights_load_1447 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1447 \
    op interface \
    ports { weights_load_1447 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5059 \
    name weights_load_1448 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1448 \
    op interface \
    ports { weights_load_1448 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5060 \
    name weights_load_1449 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1449 \
    op interface \
    ports { weights_load_1449 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5061 \
    name weights_load_1450 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1450 \
    op interface \
    ports { weights_load_1450 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5062 \
    name weights_load_1451 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1451 \
    op interface \
    ports { weights_load_1451 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5063 \
    name weights_load_1452 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1452 \
    op interface \
    ports { weights_load_1452 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5064 \
    name weights_load_1453 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1453 \
    op interface \
    ports { weights_load_1453 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5065 \
    name weights_load_1454 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1454 \
    op interface \
    ports { weights_load_1454 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5066 \
    name weights_load_1455 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1455 \
    op interface \
    ports { weights_load_1455 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5067 \
    name weights_load_1456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1456 \
    op interface \
    ports { weights_load_1456 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5068 \
    name weights_load_1457 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1457 \
    op interface \
    ports { weights_load_1457 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5069 \
    name weights_load_1458 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1458 \
    op interface \
    ports { weights_load_1458 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5070 \
    name weights_load_1459 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1459 \
    op interface \
    ports { weights_load_1459 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5071 \
    name weights_load_1460 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1460 \
    op interface \
    ports { weights_load_1460 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5072 \
    name weights_load_1461 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1461 \
    op interface \
    ports { weights_load_1461 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5073 \
    name weights_load_1462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1462 \
    op interface \
    ports { weights_load_1462 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5074 \
    name weights_load_1463 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1463 \
    op interface \
    ports { weights_load_1463 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5075 \
    name weights_load_1464 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1464 \
    op interface \
    ports { weights_load_1464 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5076 \
    name weights_load_1465 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1465 \
    op interface \
    ports { weights_load_1465 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5077 \
    name weights_load_1466 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1466 \
    op interface \
    ports { weights_load_1466 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5078 \
    name weights_load_1467 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1467 \
    op interface \
    ports { weights_load_1467 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5079 \
    name weights_load_1468 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1468 \
    op interface \
    ports { weights_load_1468 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5080 \
    name weights_load_1469 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1469 \
    op interface \
    ports { weights_load_1469 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5081 \
    name weights_load_1470 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1470 \
    op interface \
    ports { weights_load_1470 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5082 \
    name weights_load_1471 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1471 \
    op interface \
    ports { weights_load_1471 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5083 \
    name weights_load_1472 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1472 \
    op interface \
    ports { weights_load_1472 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5084 \
    name weights_load_1473 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1473 \
    op interface \
    ports { weights_load_1473 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5085 \
    name weights_load_1474 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1474 \
    op interface \
    ports { weights_load_1474 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5086 \
    name weights_load_1475 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1475 \
    op interface \
    ports { weights_load_1475 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5087 \
    name weights_load_1476 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1476 \
    op interface \
    ports { weights_load_1476 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5088 \
    name weights_load_1477 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1477 \
    op interface \
    ports { weights_load_1477 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5089 \
    name weights_load_1478 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1478 \
    op interface \
    ports { weights_load_1478 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5090 \
    name weights_load_1479 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1479 \
    op interface \
    ports { weights_load_1479 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5091 \
    name weights_load_1480 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1480 \
    op interface \
    ports { weights_load_1480 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5092 \
    name weights_load_1481 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1481 \
    op interface \
    ports { weights_load_1481 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5093 \
    name weights_load_1482 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1482 \
    op interface \
    ports { weights_load_1482 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5094 \
    name weights_load_1483 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1483 \
    op interface \
    ports { weights_load_1483 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5095 \
    name weights_load_1484 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1484 \
    op interface \
    ports { weights_load_1484 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5096 \
    name weights_load_1485 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1485 \
    op interface \
    ports { weights_load_1485 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5097 \
    name weights_load_1486 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1486 \
    op interface \
    ports { weights_load_1486 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5098 \
    name weights_load_1487 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1487 \
    op interface \
    ports { weights_load_1487 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5099 \
    name weights_load_1488 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1488 \
    op interface \
    ports { weights_load_1488 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5100 \
    name weights_load_1489 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1489 \
    op interface \
    ports { weights_load_1489 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5101 \
    name weights_load_1490 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1490 \
    op interface \
    ports { weights_load_1490 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5102 \
    name weights_load_1491 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1491 \
    op interface \
    ports { weights_load_1491 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5103 \
    name weights_load_1492 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1492 \
    op interface \
    ports { weights_load_1492 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5104 \
    name weights_load_1493 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1493 \
    op interface \
    ports { weights_load_1493 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5105 \
    name weights_load_1494 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1494 \
    op interface \
    ports { weights_load_1494 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5106 \
    name weights_load_1495 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1495 \
    op interface \
    ports { weights_load_1495 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5107 \
    name weights_load_1496 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1496 \
    op interface \
    ports { weights_load_1496 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5108 \
    name weights_load_1497 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1497 \
    op interface \
    ports { weights_load_1497 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5109 \
    name weights_load_1498 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1498 \
    op interface \
    ports { weights_load_1498 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5110 \
    name weights_load_1499 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1499 \
    op interface \
    ports { weights_load_1499 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5111 \
    name weights_load_1500 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1500 \
    op interface \
    ports { weights_load_1500 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5112 \
    name weights_load_1501 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1501 \
    op interface \
    ports { weights_load_1501 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5113 \
    name weights_load_1502 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1502 \
    op interface \
    ports { weights_load_1502 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5114 \
    name weights_load_1503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1503 \
    op interface \
    ports { weights_load_1503 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5115 \
    name weights_load_1504 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1504 \
    op interface \
    ports { weights_load_1504 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5116 \
    name weights_load_1505 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1505 \
    op interface \
    ports { weights_load_1505 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5117 \
    name weights_load_1506 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1506 \
    op interface \
    ports { weights_load_1506 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5118 \
    name weights_load_1507 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1507 \
    op interface \
    ports { weights_load_1507 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5119 \
    name weights_load_1508 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1508 \
    op interface \
    ports { weights_load_1508 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5120 \
    name weights_load_1509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1509 \
    op interface \
    ports { weights_load_1509 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5121 \
    name weights_load_1510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1510 \
    op interface \
    ports { weights_load_1510 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5122 \
    name weights_load_1511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1511 \
    op interface \
    ports { weights_load_1511 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5123 \
    name weights_load_1512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1512 \
    op interface \
    ports { weights_load_1512 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5124 \
    name weights_load_1513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1513 \
    op interface \
    ports { weights_load_1513 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5125 \
    name weights_load_1514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1514 \
    op interface \
    ports { weights_load_1514 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5126 \
    name weights_load_1515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1515 \
    op interface \
    ports { weights_load_1515 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5127 \
    name weights_load_1516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1516 \
    op interface \
    ports { weights_load_1516 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5128 \
    name weights_load_1517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1517 \
    op interface \
    ports { weights_load_1517 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5129 \
    name weights_load_1518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1518 \
    op interface \
    ports { weights_load_1518 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5130 \
    name weights_load_1519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1519 \
    op interface \
    ports { weights_load_1519 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5131 \
    name weights_load_1520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1520 \
    op interface \
    ports { weights_load_1520 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5132 \
    name weights_load_1521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1521 \
    op interface \
    ports { weights_load_1521 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5133 \
    name weights_load_1522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1522 \
    op interface \
    ports { weights_load_1522 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5134 \
    name weights_load_1523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1523 \
    op interface \
    ports { weights_load_1523 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5135 \
    name weights_load_1524 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1524 \
    op interface \
    ports { weights_load_1524 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5136 \
    name weights_load_1525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1525 \
    op interface \
    ports { weights_load_1525 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5137 \
    name weights_load_1526 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1526 \
    op interface \
    ports { weights_load_1526 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5138 \
    name weights_load_1527 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1527 \
    op interface \
    ports { weights_load_1527 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5139 \
    name weights_load_1528 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1528 \
    op interface \
    ports { weights_load_1528 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5140 \
    name weights_load_1529 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1529 \
    op interface \
    ports { weights_load_1529 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5141 \
    name weights_load_1530 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1530 \
    op interface \
    ports { weights_load_1530 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5142 \
    name weights_load_1531 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1531 \
    op interface \
    ports { weights_load_1531 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5143 \
    name weights_load_1532 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1532 \
    op interface \
    ports { weights_load_1532 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5144 \
    name weights_load_1533 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1533 \
    op interface \
    ports { weights_load_1533 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5145 \
    name weights_load_1534 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1534 \
    op interface \
    ports { weights_load_1534 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5146 \
    name weights_load_1535 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1535 \
    op interface \
    ports { weights_load_1535 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5147 \
    name weights_load_1536 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1536 \
    op interface \
    ports { weights_load_1536 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5148 \
    name weights_load_1537 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1537 \
    op interface \
    ports { weights_load_1537 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5149 \
    name weights_load_1538 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1538 \
    op interface \
    ports { weights_load_1538 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5150 \
    name weights_load_1539 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1539 \
    op interface \
    ports { weights_load_1539 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5151 \
    name weights_load_1540 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1540 \
    op interface \
    ports { weights_load_1540 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5152 \
    name weights_load_1541 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1541 \
    op interface \
    ports { weights_load_1541 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5153 \
    name weights_load_1542 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1542 \
    op interface \
    ports { weights_load_1542 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5154 \
    name weights_load_1543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1543 \
    op interface \
    ports { weights_load_1543 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5155 \
    name weights_load_1544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1544 \
    op interface \
    ports { weights_load_1544 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5156 \
    name weights_load_1545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1545 \
    op interface \
    ports { weights_load_1545 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5157 \
    name weights_load_1546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1546 \
    op interface \
    ports { weights_load_1546 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5158 \
    name weights_load_1547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1547 \
    op interface \
    ports { weights_load_1547 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5159 \
    name weights_load_1548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1548 \
    op interface \
    ports { weights_load_1548 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5160 \
    name weights_load_1549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1549 \
    op interface \
    ports { weights_load_1549 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5161 \
    name weights_load_1550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1550 \
    op interface \
    ports { weights_load_1550 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5162 \
    name weights_load_1551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1551 \
    op interface \
    ports { weights_load_1551 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5163 \
    name weights_load_1552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1552 \
    op interface \
    ports { weights_load_1552 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5164 \
    name weights_load_1553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1553 \
    op interface \
    ports { weights_load_1553 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5165 \
    name weights_load_1554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1554 \
    op interface \
    ports { weights_load_1554 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5166 \
    name weights_load_1555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1555 \
    op interface \
    ports { weights_load_1555 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5167 \
    name weights_load_1556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1556 \
    op interface \
    ports { weights_load_1556 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5168 \
    name weights_load_1557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1557 \
    op interface \
    ports { weights_load_1557 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5169 \
    name weights_load_1558 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1558 \
    op interface \
    ports { weights_load_1558 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5170 \
    name weights_load_1559 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1559 \
    op interface \
    ports { weights_load_1559 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5171 \
    name weights_load_1560 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1560 \
    op interface \
    ports { weights_load_1560 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5172 \
    name weights_load_1561 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1561 \
    op interface \
    ports { weights_load_1561 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5173 \
    name weights_load_1562 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1562 \
    op interface \
    ports { weights_load_1562 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5174 \
    name weights_load_1563 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1563 \
    op interface \
    ports { weights_load_1563 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5175 \
    name weights_load_1564 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1564 \
    op interface \
    ports { weights_load_1564 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5176 \
    name weights_load_1565 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1565 \
    op interface \
    ports { weights_load_1565 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5177 \
    name weights_load_1566 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1566 \
    op interface \
    ports { weights_load_1566 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5178 \
    name weights_load_1567 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1567 \
    op interface \
    ports { weights_load_1567 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5179 \
    name weights_load_1568 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1568 \
    op interface \
    ports { weights_load_1568 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5180 \
    name weights_load_1569 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1569 \
    op interface \
    ports { weights_load_1569 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5181 \
    name weights_load_1570 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1570 \
    op interface \
    ports { weights_load_1570 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5182 \
    name weights_load_1571 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1571 \
    op interface \
    ports { weights_load_1571 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5183 \
    name weights_load_1572 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1572 \
    op interface \
    ports { weights_load_1572 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5184 \
    name weights_load_1573 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1573 \
    op interface \
    ports { weights_load_1573 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5185 \
    name weights_load_1574 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1574 \
    op interface \
    ports { weights_load_1574 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5186 \
    name weights_load_1575 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1575 \
    op interface \
    ports { weights_load_1575 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5187 \
    name weights_load_1576 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1576 \
    op interface \
    ports { weights_load_1576 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5188 \
    name weights_load_1577 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1577 \
    op interface \
    ports { weights_load_1577 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5189 \
    name weights_load_1578 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1578 \
    op interface \
    ports { weights_load_1578 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5190 \
    name weights_load_1579 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1579 \
    op interface \
    ports { weights_load_1579 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5191 \
    name weights_load_1580 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1580 \
    op interface \
    ports { weights_load_1580 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5192 \
    name weights_load_1581 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1581 \
    op interface \
    ports { weights_load_1581 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5193 \
    name weights_load_1582 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1582 \
    op interface \
    ports { weights_load_1582 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5194 \
    name weights_load_1583 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1583 \
    op interface \
    ports { weights_load_1583 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5195 \
    name weights_load_1584 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1584 \
    op interface \
    ports { weights_load_1584 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5196 \
    name weights_load_1585 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1585 \
    op interface \
    ports { weights_load_1585 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5197 \
    name weights_load_1586 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1586 \
    op interface \
    ports { weights_load_1586 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5198 \
    name weights_load_1587 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1587 \
    op interface \
    ports { weights_load_1587 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5199 \
    name weights_load_1588 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1588 \
    op interface \
    ports { weights_load_1588 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5200 \
    name weights_load_1589 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1589 \
    op interface \
    ports { weights_load_1589 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5201 \
    name weights_load_1590 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1590 \
    op interface \
    ports { weights_load_1590 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5202 \
    name weights_load_1591 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1591 \
    op interface \
    ports { weights_load_1591 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5203 \
    name weights_load_1592 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1592 \
    op interface \
    ports { weights_load_1592 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5204 \
    name weights_load_1593 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1593 \
    op interface \
    ports { weights_load_1593 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5205 \
    name weights_load_1594 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1594 \
    op interface \
    ports { weights_load_1594 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5206 \
    name weights_load_1595 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1595 \
    op interface \
    ports { weights_load_1595 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5207 \
    name weights_load_1596 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1596 \
    op interface \
    ports { weights_load_1596 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5208 \
    name weights_load_1597 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1597 \
    op interface \
    ports { weights_load_1597 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5209 \
    name weights_load_1598 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1598 \
    op interface \
    ports { weights_load_1598 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5210 \
    name weights_load_1599 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1599 \
    op interface \
    ports { weights_load_1599 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5211 \
    name weights_load_1600 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1600 \
    op interface \
    ports { weights_load_1600 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5212 \
    name weights_load_1601 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1601 \
    op interface \
    ports { weights_load_1601 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5213 \
    name weights_load_1602 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1602 \
    op interface \
    ports { weights_load_1602 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5214 \
    name weights_load_1603 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1603 \
    op interface \
    ports { weights_load_1603 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5215 \
    name weights_load_1604 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1604 \
    op interface \
    ports { weights_load_1604 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5216 \
    name weights_load_1605 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1605 \
    op interface \
    ports { weights_load_1605 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5217 \
    name weights_load_1606 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1606 \
    op interface \
    ports { weights_load_1606 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5218 \
    name weights_load_1607 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1607 \
    op interface \
    ports { weights_load_1607 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5219 \
    name weights_load_1608 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1608 \
    op interface \
    ports { weights_load_1608 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5220 \
    name weights_load_1609 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1609 \
    op interface \
    ports { weights_load_1609 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5221 \
    name weights_load_1610 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1610 \
    op interface \
    ports { weights_load_1610 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5222 \
    name weights_load_1611 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1611 \
    op interface \
    ports { weights_load_1611 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5223 \
    name weights_load_1612 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1612 \
    op interface \
    ports { weights_load_1612 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5224 \
    name weights_load_1613 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1613 \
    op interface \
    ports { weights_load_1613 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5225 \
    name weights_load_1614 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1614 \
    op interface \
    ports { weights_load_1614 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5226 \
    name weights_load_1615 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1615 \
    op interface \
    ports { weights_load_1615 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5227 \
    name weights_load_1616 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1616 \
    op interface \
    ports { weights_load_1616 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5228 \
    name weights_load_1617 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1617 \
    op interface \
    ports { weights_load_1617 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5229 \
    name weights_load_1618 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1618 \
    op interface \
    ports { weights_load_1618 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5230 \
    name weights_load_1619 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1619 \
    op interface \
    ports { weights_load_1619 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5231 \
    name weights_load_1620 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1620 \
    op interface \
    ports { weights_load_1620 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5232 \
    name weights_load_1621 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1621 \
    op interface \
    ports { weights_load_1621 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5233 \
    name weights_load_1622 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1622 \
    op interface \
    ports { weights_load_1622 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5234 \
    name weights_load_1623 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1623 \
    op interface \
    ports { weights_load_1623 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5235 \
    name weights_load_1624 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1624 \
    op interface \
    ports { weights_load_1624 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5236 \
    name weights_load_1625 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1625 \
    op interface \
    ports { weights_load_1625 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5237 \
    name weights_load_1626 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1626 \
    op interface \
    ports { weights_load_1626 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5238 \
    name weights_load_1627 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1627 \
    op interface \
    ports { weights_load_1627 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5239 \
    name weights_load_1628 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1628 \
    op interface \
    ports { weights_load_1628 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5240 \
    name weights_load_1629 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1629 \
    op interface \
    ports { weights_load_1629 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5241 \
    name weights_load_1630 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1630 \
    op interface \
    ports { weights_load_1630 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5242 \
    name weights_load_1631 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1631 \
    op interface \
    ports { weights_load_1631 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5243 \
    name weights_load_1632 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1632 \
    op interface \
    ports { weights_load_1632 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5244 \
    name weights_load_1633 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1633 \
    op interface \
    ports { weights_load_1633 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5245 \
    name weights_load_1634 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1634 \
    op interface \
    ports { weights_load_1634 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5246 \
    name weights_load_1635 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1635 \
    op interface \
    ports { weights_load_1635 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5247 \
    name weights_load_1636 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1636 \
    op interface \
    ports { weights_load_1636 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5248 \
    name weights_load_1637 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1637 \
    op interface \
    ports { weights_load_1637 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5249 \
    name weights_load_1638 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1638 \
    op interface \
    ports { weights_load_1638 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5250 \
    name weights_load_1639 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1639 \
    op interface \
    ports { weights_load_1639 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5251 \
    name weights_load_1640 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1640 \
    op interface \
    ports { weights_load_1640 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5252 \
    name weights_load_1641 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1641 \
    op interface \
    ports { weights_load_1641 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5253 \
    name weights_load_1642 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1642 \
    op interface \
    ports { weights_load_1642 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5254 \
    name weights_load_1643 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1643 \
    op interface \
    ports { weights_load_1643 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5255 \
    name weights_load_1644 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1644 \
    op interface \
    ports { weights_load_1644 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5256 \
    name weights_load_1645 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1645 \
    op interface \
    ports { weights_load_1645 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5257 \
    name weights_load_1646 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1646 \
    op interface \
    ports { weights_load_1646 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5258 \
    name weights_load_1647 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1647 \
    op interface \
    ports { weights_load_1647 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5259 \
    name weights_load_1648 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1648 \
    op interface \
    ports { weights_load_1648 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5260 \
    name weights_load_1649 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1649 \
    op interface \
    ports { weights_load_1649 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5261 \
    name weights_load_1650 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1650 \
    op interface \
    ports { weights_load_1650 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5262 \
    name weights_load_1651 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1651 \
    op interface \
    ports { weights_load_1651 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5263 \
    name weights_load_1652 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1652 \
    op interface \
    ports { weights_load_1652 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5264 \
    name weights_load_1653 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1653 \
    op interface \
    ports { weights_load_1653 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5265 \
    name weights_load_1654 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1654 \
    op interface \
    ports { weights_load_1654 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5266 \
    name weights_load_1655 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1655 \
    op interface \
    ports { weights_load_1655 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5267 \
    name weights_load_1656 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1656 \
    op interface \
    ports { weights_load_1656 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5268 \
    name weights_load_1657 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1657 \
    op interface \
    ports { weights_load_1657 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5269 \
    name weights_load_1658 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1658 \
    op interface \
    ports { weights_load_1658 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5270 \
    name weights_load_1659 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1659 \
    op interface \
    ports { weights_load_1659 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5271 \
    name weights_load_1660 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1660 \
    op interface \
    ports { weights_load_1660 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5272 \
    name weights_load_1661 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1661 \
    op interface \
    ports { weights_load_1661 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5273 \
    name weights_load_1662 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1662 \
    op interface \
    ports { weights_load_1662 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5274 \
    name weights_load_1663 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1663 \
    op interface \
    ports { weights_load_1663 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5275 \
    name weights_load_1664 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1664 \
    op interface \
    ports { weights_load_1664 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5276 \
    name weights_load_1665 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1665 \
    op interface \
    ports { weights_load_1665 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5277 \
    name weights_load_1666 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1666 \
    op interface \
    ports { weights_load_1666 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5278 \
    name weights_load_1667 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1667 \
    op interface \
    ports { weights_load_1667 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5279 \
    name weights_load_1668 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1668 \
    op interface \
    ports { weights_load_1668 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5280 \
    name weights_load_1669 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1669 \
    op interface \
    ports { weights_load_1669 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5281 \
    name weights_load_1670 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1670 \
    op interface \
    ports { weights_load_1670 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5282 \
    name weights_load_1671 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1671 \
    op interface \
    ports { weights_load_1671 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5283 \
    name weights_load_1672 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1672 \
    op interface \
    ports { weights_load_1672 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5284 \
    name weights_load_1673 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1673 \
    op interface \
    ports { weights_load_1673 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5285 \
    name weights_load_1674 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1674 \
    op interface \
    ports { weights_load_1674 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5286 \
    name weights_load_1675 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1675 \
    op interface \
    ports { weights_load_1675 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5287 \
    name weights_load_1676 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1676 \
    op interface \
    ports { weights_load_1676 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5288 \
    name weights_load_1677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1677 \
    op interface \
    ports { weights_load_1677 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5289 \
    name weights_load_1678 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1678 \
    op interface \
    ports { weights_load_1678 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5290 \
    name weights_load_1679 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1679 \
    op interface \
    ports { weights_load_1679 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5291 \
    name weights_load_1680 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1680 \
    op interface \
    ports { weights_load_1680 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5292 \
    name weights_load_1681 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1681 \
    op interface \
    ports { weights_load_1681 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5293 \
    name weights_load_1682 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1682 \
    op interface \
    ports { weights_load_1682 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5294 \
    name weights_load_1683 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1683 \
    op interface \
    ports { weights_load_1683 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5295 \
    name weights_load_1684 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1684 \
    op interface \
    ports { weights_load_1684 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5296 \
    name weights_load_1685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1685 \
    op interface \
    ports { weights_load_1685 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5297 \
    name weights_load_1686 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1686 \
    op interface \
    ports { weights_load_1686 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5298 \
    name weights_load_1687 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1687 \
    op interface \
    ports { weights_load_1687 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5299 \
    name weights_load_1688 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1688 \
    op interface \
    ports { weights_load_1688 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5300 \
    name weights_load_1689 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1689 \
    op interface \
    ports { weights_load_1689 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5301 \
    name weights_load_1690 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1690 \
    op interface \
    ports { weights_load_1690 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5302 \
    name weights_load_1691 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1691 \
    op interface \
    ports { weights_load_1691 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5303 \
    name weights_load_1692 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1692 \
    op interface \
    ports { weights_load_1692 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5304 \
    name weights_load_1693 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1693 \
    op interface \
    ports { weights_load_1693 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5305 \
    name weights_load_1694 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1694 \
    op interface \
    ports { weights_load_1694 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5306 \
    name weights_load_1695 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1695 \
    op interface \
    ports { weights_load_1695 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5307 \
    name weights_load_1696 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1696 \
    op interface \
    ports { weights_load_1696 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5308 \
    name weights_load_1697 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1697 \
    op interface \
    ports { weights_load_1697 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5309 \
    name weights_load_1698 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1698 \
    op interface \
    ports { weights_load_1698 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5310 \
    name weights_load_1699 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1699 \
    op interface \
    ports { weights_load_1699 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5311 \
    name weights_load_1700 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1700 \
    op interface \
    ports { weights_load_1700 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5312 \
    name weights_load_1701 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1701 \
    op interface \
    ports { weights_load_1701 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5313 \
    name weights_load_1702 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1702 \
    op interface \
    ports { weights_load_1702 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5314 \
    name weights_load_1703 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1703 \
    op interface \
    ports { weights_load_1703 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5315 \
    name weights_load_1704 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1704 \
    op interface \
    ports { weights_load_1704 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5316 \
    name weights_load_1705 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1705 \
    op interface \
    ports { weights_load_1705 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5317 \
    name weights_load_1706 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1706 \
    op interface \
    ports { weights_load_1706 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5318 \
    name weights_load_1707 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1707 \
    op interface \
    ports { weights_load_1707 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5319 \
    name weights_load_1708 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1708 \
    op interface \
    ports { weights_load_1708 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5320 \
    name weights_load_1709 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1709 \
    op interface \
    ports { weights_load_1709 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5321 \
    name weights_load_1710 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1710 \
    op interface \
    ports { weights_load_1710 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5322 \
    name weights_load_1711 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1711 \
    op interface \
    ports { weights_load_1711 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5323 \
    name weights_load_1712 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1712 \
    op interface \
    ports { weights_load_1712 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5324 \
    name weights_load_1713 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1713 \
    op interface \
    ports { weights_load_1713 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5325 \
    name weights_load_1714 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1714 \
    op interface \
    ports { weights_load_1714 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5326 \
    name weights_load_1715 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1715 \
    op interface \
    ports { weights_load_1715 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5327 \
    name weights_load_1716 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1716 \
    op interface \
    ports { weights_load_1716 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5328 \
    name weights_load_1717 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1717 \
    op interface \
    ports { weights_load_1717 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5329 \
    name weights_load_1718 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1718 \
    op interface \
    ports { weights_load_1718 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5330 \
    name weights_load_1719 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1719 \
    op interface \
    ports { weights_load_1719 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5331 \
    name weights_load_1720 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1720 \
    op interface \
    ports { weights_load_1720 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5332 \
    name weights_load_1721 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1721 \
    op interface \
    ports { weights_load_1721 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5333 \
    name weights_load_1722 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1722 \
    op interface \
    ports { weights_load_1722 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5334 \
    name weights_load_1723 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1723 \
    op interface \
    ports { weights_load_1723 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5335 \
    name weights_load_1724 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1724 \
    op interface \
    ports { weights_load_1724 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5336 \
    name weights_load_1725 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1725 \
    op interface \
    ports { weights_load_1725 { I 32 vector } } \
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



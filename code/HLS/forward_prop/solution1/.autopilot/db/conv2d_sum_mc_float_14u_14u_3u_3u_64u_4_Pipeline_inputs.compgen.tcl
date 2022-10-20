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
    id 2965 \
    name conv2d_64_padded_window_stream_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_4 \
    op interface \
    ports { conv2d_64_padded_window_stream_4_dout { I 288 vector } conv2d_64_padded_window_stream_4_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_4_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_4_empty_n { I 1 bit } conv2d_64_padded_window_stream_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2966 \
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
    id 2967 \
    name weights_load_2876 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2876 \
    op interface \
    ports { weights_load_2876 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2968 \
    name weights_load_2877 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2877 \
    op interface \
    ports { weights_load_2877 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2969 \
    name weights_load_2878 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2878 \
    op interface \
    ports { weights_load_2878 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2970 \
    name weights_load_2879 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2879 \
    op interface \
    ports { weights_load_2879 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2971 \
    name weights_load_2880 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2880 \
    op interface \
    ports { weights_load_2880 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2972 \
    name weights_load_2881 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2881 \
    op interface \
    ports { weights_load_2881 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2973 \
    name weights_load_2882 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2882 \
    op interface \
    ports { weights_load_2882 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2974 \
    name weights_load_2883 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2883 \
    op interface \
    ports { weights_load_2883 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2975 \
    name in_channel_map_stream_4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_4 \
    op interface \
    ports { in_channel_map_stream_4_din { O 32 vector } in_channel_map_stream_4_num_data_valid { I 3 vector } in_channel_map_stream_4_fifo_cap { I 3 vector } in_channel_map_stream_4_full_n { I 1 bit } in_channel_map_stream_4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2976 \
    name weights_load_2884 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2884 \
    op interface \
    ports { weights_load_2884 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2977 \
    name weights_load_2885 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2885 \
    op interface \
    ports { weights_load_2885 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2978 \
    name weights_load_2886 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2886 \
    op interface \
    ports { weights_load_2886 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2979 \
    name weights_load_2887 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2887 \
    op interface \
    ports { weights_load_2887 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2980 \
    name weights_load_2888 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2888 \
    op interface \
    ports { weights_load_2888 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2981 \
    name weights_load_2889 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2889 \
    op interface \
    ports { weights_load_2889 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2982 \
    name weights_load_2890 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2890 \
    op interface \
    ports { weights_load_2890 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2983 \
    name weights_load_2891 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2891 \
    op interface \
    ports { weights_load_2891 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2984 \
    name weights_load_2892 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2892 \
    op interface \
    ports { weights_load_2892 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2985 \
    name weights_load_2893 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2893 \
    op interface \
    ports { weights_load_2893 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2986 \
    name weights_load_2894 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2894 \
    op interface \
    ports { weights_load_2894 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2987 \
    name weights_load_2895 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2895 \
    op interface \
    ports { weights_load_2895 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2988 \
    name weights_load_2896 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2896 \
    op interface \
    ports { weights_load_2896 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2989 \
    name weights_load_2897 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2897 \
    op interface \
    ports { weights_load_2897 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2990 \
    name weights_load_2898 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2898 \
    op interface \
    ports { weights_load_2898 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2991 \
    name weights_load_2899 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2899 \
    op interface \
    ports { weights_load_2899 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2992 \
    name weights_load_2900 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2900 \
    op interface \
    ports { weights_load_2900 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2993 \
    name weights_load_2901 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2901 \
    op interface \
    ports { weights_load_2901 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2994 \
    name weights_load_2902 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2902 \
    op interface \
    ports { weights_load_2902 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2995 \
    name weights_load_2903 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2903 \
    op interface \
    ports { weights_load_2903 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2996 \
    name weights_load_2904 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2904 \
    op interface \
    ports { weights_load_2904 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2997 \
    name weights_load_2905 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2905 \
    op interface \
    ports { weights_load_2905 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2998 \
    name weights_load_2906 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2906 \
    op interface \
    ports { weights_load_2906 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2999 \
    name weights_load_2907 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2907 \
    op interface \
    ports { weights_load_2907 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3000 \
    name weights_load_2908 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2908 \
    op interface \
    ports { weights_load_2908 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3001 \
    name weights_load_2909 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2909 \
    op interface \
    ports { weights_load_2909 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3002 \
    name weights_load_2910 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2910 \
    op interface \
    ports { weights_load_2910 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3003 \
    name weights_load_2911 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2911 \
    op interface \
    ports { weights_load_2911 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3004 \
    name weights_load_2912 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2912 \
    op interface \
    ports { weights_load_2912 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3005 \
    name weights_load_2913 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2913 \
    op interface \
    ports { weights_load_2913 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3006 \
    name weights_load_2914 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2914 \
    op interface \
    ports { weights_load_2914 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3007 \
    name weights_load_2915 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2915 \
    op interface \
    ports { weights_load_2915 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3008 \
    name weights_load_2916 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2916 \
    op interface \
    ports { weights_load_2916 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3009 \
    name weights_load_2917 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2917 \
    op interface \
    ports { weights_load_2917 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3010 \
    name weights_load_2918 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2918 \
    op interface \
    ports { weights_load_2918 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3011 \
    name weights_load_2919 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2919 \
    op interface \
    ports { weights_load_2919 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3012 \
    name weights_load_2920 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2920 \
    op interface \
    ports { weights_load_2920 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3013 \
    name weights_load_2921 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2921 \
    op interface \
    ports { weights_load_2921 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3014 \
    name weights_load_2922 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2922 \
    op interface \
    ports { weights_load_2922 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3015 \
    name weights_load_2923 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2923 \
    op interface \
    ports { weights_load_2923 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3016 \
    name weights_load_2924 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2924 \
    op interface \
    ports { weights_load_2924 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3017 \
    name weights_load_2925 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2925 \
    op interface \
    ports { weights_load_2925 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3018 \
    name weights_load_2926 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2926 \
    op interface \
    ports { weights_load_2926 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3019 \
    name weights_load_2927 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2927 \
    op interface \
    ports { weights_load_2927 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3020 \
    name weights_load_2928 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2928 \
    op interface \
    ports { weights_load_2928 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3021 \
    name weights_load_2929 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2929 \
    op interface \
    ports { weights_load_2929 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3022 \
    name weights_load_2930 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2930 \
    op interface \
    ports { weights_load_2930 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3023 \
    name weights_load_2931 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2931 \
    op interface \
    ports { weights_load_2931 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3024 \
    name weights_load_2932 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2932 \
    op interface \
    ports { weights_load_2932 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3025 \
    name weights_load_2933 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2933 \
    op interface \
    ports { weights_load_2933 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3026 \
    name weights_load_2934 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2934 \
    op interface \
    ports { weights_load_2934 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3027 \
    name weights_load_2935 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2935 \
    op interface \
    ports { weights_load_2935 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3028 \
    name weights_load_2936 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2936 \
    op interface \
    ports { weights_load_2936 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3029 \
    name weights_load_2937 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2937 \
    op interface \
    ports { weights_load_2937 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3030 \
    name weights_load_2938 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2938 \
    op interface \
    ports { weights_load_2938 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3031 \
    name weights_load_2939 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2939 \
    op interface \
    ports { weights_load_2939 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3032 \
    name weights_load_2940 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2940 \
    op interface \
    ports { weights_load_2940 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3033 \
    name weights_load_2941 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2941 \
    op interface \
    ports { weights_load_2941 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3034 \
    name weights_load_2942 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2942 \
    op interface \
    ports { weights_load_2942 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3035 \
    name weights_load_2943 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2943 \
    op interface \
    ports { weights_load_2943 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3036 \
    name weights_load_2944 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2944 \
    op interface \
    ports { weights_load_2944 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3037 \
    name weights_load_2945 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2945 \
    op interface \
    ports { weights_load_2945 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3038 \
    name weights_load_2946 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2946 \
    op interface \
    ports { weights_load_2946 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3039 \
    name weights_load_2947 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2947 \
    op interface \
    ports { weights_load_2947 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3040 \
    name weights_load_2948 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2948 \
    op interface \
    ports { weights_load_2948 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3041 \
    name weights_load_2949 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2949 \
    op interface \
    ports { weights_load_2949 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3042 \
    name weights_load_2950 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2950 \
    op interface \
    ports { weights_load_2950 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3043 \
    name weights_load_2951 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2951 \
    op interface \
    ports { weights_load_2951 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3044 \
    name weights_load_2952 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2952 \
    op interface \
    ports { weights_load_2952 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3045 \
    name weights_load_2953 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2953 \
    op interface \
    ports { weights_load_2953 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3046 \
    name weights_load_2954 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2954 \
    op interface \
    ports { weights_load_2954 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3047 \
    name weights_load_2955 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2955 \
    op interface \
    ports { weights_load_2955 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3048 \
    name weights_load_2956 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2956 \
    op interface \
    ports { weights_load_2956 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3049 \
    name weights_load_2957 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2957 \
    op interface \
    ports { weights_load_2957 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3050 \
    name weights_load_2958 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2958 \
    op interface \
    ports { weights_load_2958 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3051 \
    name weights_load_2959 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2959 \
    op interface \
    ports { weights_load_2959 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3052 \
    name weights_load_2960 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2960 \
    op interface \
    ports { weights_load_2960 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3053 \
    name weights_load_2961 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2961 \
    op interface \
    ports { weights_load_2961 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3054 \
    name weights_load_2962 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2962 \
    op interface \
    ports { weights_load_2962 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3055 \
    name weights_load_2963 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2963 \
    op interface \
    ports { weights_load_2963 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3056 \
    name weights_load_2964 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2964 \
    op interface \
    ports { weights_load_2964 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3057 \
    name weights_load_2965 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2965 \
    op interface \
    ports { weights_load_2965 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3058 \
    name weights_load_2966 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2966 \
    op interface \
    ports { weights_load_2966 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3059 \
    name weights_load_2967 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2967 \
    op interface \
    ports { weights_load_2967 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3060 \
    name weights_load_2968 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2968 \
    op interface \
    ports { weights_load_2968 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3061 \
    name weights_load_2969 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2969 \
    op interface \
    ports { weights_load_2969 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3062 \
    name weights_load_2970 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2970 \
    op interface \
    ports { weights_load_2970 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3063 \
    name weights_load_2971 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2971 \
    op interface \
    ports { weights_load_2971 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3064 \
    name weights_load_2972 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2972 \
    op interface \
    ports { weights_load_2972 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3065 \
    name weights_load_2973 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2973 \
    op interface \
    ports { weights_load_2973 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3066 \
    name weights_load_2974 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2974 \
    op interface \
    ports { weights_load_2974 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3067 \
    name weights_load_2975 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2975 \
    op interface \
    ports { weights_load_2975 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3068 \
    name weights_load_2976 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2976 \
    op interface \
    ports { weights_load_2976 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3069 \
    name weights_load_2977 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2977 \
    op interface \
    ports { weights_load_2977 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3070 \
    name weights_load_2978 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2978 \
    op interface \
    ports { weights_load_2978 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3071 \
    name weights_load_2979 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2979 \
    op interface \
    ports { weights_load_2979 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3072 \
    name weights_load_2980 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2980 \
    op interface \
    ports { weights_load_2980 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3073 \
    name weights_load_2981 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2981 \
    op interface \
    ports { weights_load_2981 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3074 \
    name weights_load_2982 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2982 \
    op interface \
    ports { weights_load_2982 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3075 \
    name weights_load_2983 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2983 \
    op interface \
    ports { weights_load_2983 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3076 \
    name weights_load_2984 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2984 \
    op interface \
    ports { weights_load_2984 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3077 \
    name weights_load_2985 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2985 \
    op interface \
    ports { weights_load_2985 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3078 \
    name weights_load_2986 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2986 \
    op interface \
    ports { weights_load_2986 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3079 \
    name weights_load_2987 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2987 \
    op interface \
    ports { weights_load_2987 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3080 \
    name weights_load_2988 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2988 \
    op interface \
    ports { weights_load_2988 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3081 \
    name weights_load_2989 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2989 \
    op interface \
    ports { weights_load_2989 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3082 \
    name weights_load_2990 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2990 \
    op interface \
    ports { weights_load_2990 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3083 \
    name weights_load_2991 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2991 \
    op interface \
    ports { weights_load_2991 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3084 \
    name weights_load_2992 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2992 \
    op interface \
    ports { weights_load_2992 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3085 \
    name weights_load_2993 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2993 \
    op interface \
    ports { weights_load_2993 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3086 \
    name weights_load_2994 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2994 \
    op interface \
    ports { weights_load_2994 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3087 \
    name weights_load_2995 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2995 \
    op interface \
    ports { weights_load_2995 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3088 \
    name weights_load_2996 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2996 \
    op interface \
    ports { weights_load_2996 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3089 \
    name weights_load_2997 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2997 \
    op interface \
    ports { weights_load_2997 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3090 \
    name weights_load_2998 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2998 \
    op interface \
    ports { weights_load_2998 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3091 \
    name weights_load_2999 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2999 \
    op interface \
    ports { weights_load_2999 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3092 \
    name weights_load_3000 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3000 \
    op interface \
    ports { weights_load_3000 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3093 \
    name weights_load_3001 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3001 \
    op interface \
    ports { weights_load_3001 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3094 \
    name weights_load_3002 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3002 \
    op interface \
    ports { weights_load_3002 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3095 \
    name weights_load_3003 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3003 \
    op interface \
    ports { weights_load_3003 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3096 \
    name weights_load_3004 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3004 \
    op interface \
    ports { weights_load_3004 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3097 \
    name weights_load_3005 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3005 \
    op interface \
    ports { weights_load_3005 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3098 \
    name weights_load_3006 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3006 \
    op interface \
    ports { weights_load_3006 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3099 \
    name weights_load_3007 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3007 \
    op interface \
    ports { weights_load_3007 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3100 \
    name weights_load_3008 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3008 \
    op interface \
    ports { weights_load_3008 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3101 \
    name weights_load_3009 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3009 \
    op interface \
    ports { weights_load_3009 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3102 \
    name weights_load_3010 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3010 \
    op interface \
    ports { weights_load_3010 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3103 \
    name weights_load_3011 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3011 \
    op interface \
    ports { weights_load_3011 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3104 \
    name weights_load_3012 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3012 \
    op interface \
    ports { weights_load_3012 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3105 \
    name weights_load_3013 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3013 \
    op interface \
    ports { weights_load_3013 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3106 \
    name weights_load_3014 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3014 \
    op interface \
    ports { weights_load_3014 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3107 \
    name weights_load_3015 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3015 \
    op interface \
    ports { weights_load_3015 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3108 \
    name weights_load_3016 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3016 \
    op interface \
    ports { weights_load_3016 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3109 \
    name weights_load_3017 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3017 \
    op interface \
    ports { weights_load_3017 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3110 \
    name weights_load_3018 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3018 \
    op interface \
    ports { weights_load_3018 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3111 \
    name weights_load_3019 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3019 \
    op interface \
    ports { weights_load_3019 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3112 \
    name weights_load_3020 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3020 \
    op interface \
    ports { weights_load_3020 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3113 \
    name weights_load_3021 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3021 \
    op interface \
    ports { weights_load_3021 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3114 \
    name weights_load_3022 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3022 \
    op interface \
    ports { weights_load_3022 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3115 \
    name weights_load_3023 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3023 \
    op interface \
    ports { weights_load_3023 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3116 \
    name weights_load_3024 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3024 \
    op interface \
    ports { weights_load_3024 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3117 \
    name weights_load_3025 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3025 \
    op interface \
    ports { weights_load_3025 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3118 \
    name weights_load_3026 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3026 \
    op interface \
    ports { weights_load_3026 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3119 \
    name weights_load_3027 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3027 \
    op interface \
    ports { weights_load_3027 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3120 \
    name weights_load_3028 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3028 \
    op interface \
    ports { weights_load_3028 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3121 \
    name weights_load_3029 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3029 \
    op interface \
    ports { weights_load_3029 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3122 \
    name weights_load_3030 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3030 \
    op interface \
    ports { weights_load_3030 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3123 \
    name weights_load_3031 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3031 \
    op interface \
    ports { weights_load_3031 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3124 \
    name weights_load_3032 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3032 \
    op interface \
    ports { weights_load_3032 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3125 \
    name weights_load_3033 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3033 \
    op interface \
    ports { weights_load_3033 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3126 \
    name weights_load_3034 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3034 \
    op interface \
    ports { weights_load_3034 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3127 \
    name weights_load_3035 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3035 \
    op interface \
    ports { weights_load_3035 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3128 \
    name weights_load_3036 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3036 \
    op interface \
    ports { weights_load_3036 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3129 \
    name weights_load_3037 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3037 \
    op interface \
    ports { weights_load_3037 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3130 \
    name weights_load_3038 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3038 \
    op interface \
    ports { weights_load_3038 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3131 \
    name weights_load_3039 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3039 \
    op interface \
    ports { weights_load_3039 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3132 \
    name weights_load_3040 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3040 \
    op interface \
    ports { weights_load_3040 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3133 \
    name weights_load_3041 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3041 \
    op interface \
    ports { weights_load_3041 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3134 \
    name weights_load_3042 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3042 \
    op interface \
    ports { weights_load_3042 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3135 \
    name weights_load_3043 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3043 \
    op interface \
    ports { weights_load_3043 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3136 \
    name weights_load_3044 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3044 \
    op interface \
    ports { weights_load_3044 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3137 \
    name weights_load_3045 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3045 \
    op interface \
    ports { weights_load_3045 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3138 \
    name weights_load_3046 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3046 \
    op interface \
    ports { weights_load_3046 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3139 \
    name weights_load_3047 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3047 \
    op interface \
    ports { weights_load_3047 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3140 \
    name weights_load_3048 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3048 \
    op interface \
    ports { weights_load_3048 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3141 \
    name weights_load_3049 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3049 \
    op interface \
    ports { weights_load_3049 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3142 \
    name weights_load_3050 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3050 \
    op interface \
    ports { weights_load_3050 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3143 \
    name weights_load_3051 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3051 \
    op interface \
    ports { weights_load_3051 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3144 \
    name weights_load_3052 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3052 \
    op interface \
    ports { weights_load_3052 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3145 \
    name weights_load_3053 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3053 \
    op interface \
    ports { weights_load_3053 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3146 \
    name weights_load_3054 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3054 \
    op interface \
    ports { weights_load_3054 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3147 \
    name weights_load_3055 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3055 \
    op interface \
    ports { weights_load_3055 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3148 \
    name weights_load_3056 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3056 \
    op interface \
    ports { weights_load_3056 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3149 \
    name weights_load_3057 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3057 \
    op interface \
    ports { weights_load_3057 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3150 \
    name weights_load_3058 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3058 \
    op interface \
    ports { weights_load_3058 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3151 \
    name weights_load_3059 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3059 \
    op interface \
    ports { weights_load_3059 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3152 \
    name weights_load_3060 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3060 \
    op interface \
    ports { weights_load_3060 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3153 \
    name weights_load_3061 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3061 \
    op interface \
    ports { weights_load_3061 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3154 \
    name weights_load_3062 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3062 \
    op interface \
    ports { weights_load_3062 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3155 \
    name weights_load_3063 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3063 \
    op interface \
    ports { weights_load_3063 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3156 \
    name weights_load_3064 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3064 \
    op interface \
    ports { weights_load_3064 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3157 \
    name weights_load_3065 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3065 \
    op interface \
    ports { weights_load_3065 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3158 \
    name weights_load_3066 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3066 \
    op interface \
    ports { weights_load_3066 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3159 \
    name weights_load_3067 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3067 \
    op interface \
    ports { weights_load_3067 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3160 \
    name weights_load_3068 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3068 \
    op interface \
    ports { weights_load_3068 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3161 \
    name weights_load_3069 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3069 \
    op interface \
    ports { weights_load_3069 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3162 \
    name weights_load_3070 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3070 \
    op interface \
    ports { weights_load_3070 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3163 \
    name weights_load_3071 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3071 \
    op interface \
    ports { weights_load_3071 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3164 \
    name weights_load_3072 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3072 \
    op interface \
    ports { weights_load_3072 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3165 \
    name weights_load_3073 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3073 \
    op interface \
    ports { weights_load_3073 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3166 \
    name weights_load_3074 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3074 \
    op interface \
    ports { weights_load_3074 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3167 \
    name weights_load_3075 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3075 \
    op interface \
    ports { weights_load_3075 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3168 \
    name weights_load_3076 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3076 \
    op interface \
    ports { weights_load_3076 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3169 \
    name weights_load_3077 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3077 \
    op interface \
    ports { weights_load_3077 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3170 \
    name weights_load_3078 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3078 \
    op interface \
    ports { weights_load_3078 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3171 \
    name weights_load_3079 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3079 \
    op interface \
    ports { weights_load_3079 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3172 \
    name weights_load_3080 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3080 \
    op interface \
    ports { weights_load_3080 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3173 \
    name weights_load_3081 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3081 \
    op interface \
    ports { weights_load_3081 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3174 \
    name weights_load_3082 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3082 \
    op interface \
    ports { weights_load_3082 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3175 \
    name weights_load_3083 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3083 \
    op interface \
    ports { weights_load_3083 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3176 \
    name weights_load_3084 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3084 \
    op interface \
    ports { weights_load_3084 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3177 \
    name weights_load_3085 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3085 \
    op interface \
    ports { weights_load_3085 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3178 \
    name weights_load_3086 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3086 \
    op interface \
    ports { weights_load_3086 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3179 \
    name weights_load_3087 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3087 \
    op interface \
    ports { weights_load_3087 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3180 \
    name weights_load_3088 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3088 \
    op interface \
    ports { weights_load_3088 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3181 \
    name weights_load_3089 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3089 \
    op interface \
    ports { weights_load_3089 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3182 \
    name weights_load_3090 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3090 \
    op interface \
    ports { weights_load_3090 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3183 \
    name weights_load_3091 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3091 \
    op interface \
    ports { weights_load_3091 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3184 \
    name weights_load_3092 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3092 \
    op interface \
    ports { weights_load_3092 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3185 \
    name weights_load_3093 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3093 \
    op interface \
    ports { weights_load_3093 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3186 \
    name weights_load_3094 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3094 \
    op interface \
    ports { weights_load_3094 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3187 \
    name weights_load_3095 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3095 \
    op interface \
    ports { weights_load_3095 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3188 \
    name weights_load_3096 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3096 \
    op interface \
    ports { weights_load_3096 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3189 \
    name weights_load_3097 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3097 \
    op interface \
    ports { weights_load_3097 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3190 \
    name weights_load_3098 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3098 \
    op interface \
    ports { weights_load_3098 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3191 \
    name weights_load_3099 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3099 \
    op interface \
    ports { weights_load_3099 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3192 \
    name weights_load_3100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3100 \
    op interface \
    ports { weights_load_3100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3193 \
    name weights_load_3101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3101 \
    op interface \
    ports { weights_load_3101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3194 \
    name weights_load_3102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3102 \
    op interface \
    ports { weights_load_3102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3195 \
    name weights_load_3103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3103 \
    op interface \
    ports { weights_load_3103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3196 \
    name weights_load_3104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3104 \
    op interface \
    ports { weights_load_3104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3197 \
    name weights_load_3105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3105 \
    op interface \
    ports { weights_load_3105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3198 \
    name weights_load_3106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3106 \
    op interface \
    ports { weights_load_3106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3199 \
    name weights_load_3107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3107 \
    op interface \
    ports { weights_load_3107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3200 \
    name weights_load_3108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3108 \
    op interface \
    ports { weights_load_3108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3201 \
    name weights_load_3109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3109 \
    op interface \
    ports { weights_load_3109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3202 \
    name weights_load_3110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3110 \
    op interface \
    ports { weights_load_3110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3203 \
    name weights_load_3111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3111 \
    op interface \
    ports { weights_load_3111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3204 \
    name weights_load_3112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3112 \
    op interface \
    ports { weights_load_3112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3205 \
    name weights_load_3113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3113 \
    op interface \
    ports { weights_load_3113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3206 \
    name weights_load_3114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3114 \
    op interface \
    ports { weights_load_3114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3207 \
    name weights_load_3115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3115 \
    op interface \
    ports { weights_load_3115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3208 \
    name weights_load_3116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3116 \
    op interface \
    ports { weights_load_3116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3209 \
    name weights_load_3117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3117 \
    op interface \
    ports { weights_load_3117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3210 \
    name weights_load_3118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3118 \
    op interface \
    ports { weights_load_3118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3211 \
    name weights_load_3119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3119 \
    op interface \
    ports { weights_load_3119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3212 \
    name weights_load_3120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3120 \
    op interface \
    ports { weights_load_3120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3213 \
    name weights_load_3121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3121 \
    op interface \
    ports { weights_load_3121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3214 \
    name weights_load_3122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3122 \
    op interface \
    ports { weights_load_3122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3215 \
    name weights_load_3123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3123 \
    op interface \
    ports { weights_load_3123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3216 \
    name weights_load_3124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3124 \
    op interface \
    ports { weights_load_3124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3217 \
    name weights_load_3125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3125 \
    op interface \
    ports { weights_load_3125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3218 \
    name weights_load_3126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3126 \
    op interface \
    ports { weights_load_3126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3219 \
    name weights_load_3127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3127 \
    op interface \
    ports { weights_load_3127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3220 \
    name weights_load_3128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3128 \
    op interface \
    ports { weights_load_3128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3221 \
    name weights_load_3129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3129 \
    op interface \
    ports { weights_load_3129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3222 \
    name weights_load_3130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3130 \
    op interface \
    ports { weights_load_3130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3223 \
    name weights_load_3131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3131 \
    op interface \
    ports { weights_load_3131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3224 \
    name weights_load_3132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3132 \
    op interface \
    ports { weights_load_3132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3225 \
    name weights_load_3133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3133 \
    op interface \
    ports { weights_load_3133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3226 \
    name weights_load_3134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3134 \
    op interface \
    ports { weights_load_3134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3227 \
    name weights_load_3135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3135 \
    op interface \
    ports { weights_load_3135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3228 \
    name weights_load_3136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3136 \
    op interface \
    ports { weights_load_3136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3229 \
    name weights_load_3137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3137 \
    op interface \
    ports { weights_load_3137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3230 \
    name weights_load_3138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3138 \
    op interface \
    ports { weights_load_3138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3231 \
    name weights_load_3139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3139 \
    op interface \
    ports { weights_load_3139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3232 \
    name weights_load_3140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3140 \
    op interface \
    ports { weights_load_3140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3233 \
    name weights_load_3141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3141 \
    op interface \
    ports { weights_load_3141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3234 \
    name weights_load_3142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3142 \
    op interface \
    ports { weights_load_3142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3235 \
    name weights_load_3143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3143 \
    op interface \
    ports { weights_load_3143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3236 \
    name weights_load_3144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3144 \
    op interface \
    ports { weights_load_3144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3237 \
    name weights_load_3145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3145 \
    op interface \
    ports { weights_load_3145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3238 \
    name weights_load_3146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3146 \
    op interface \
    ports { weights_load_3146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3239 \
    name weights_load_3147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3147 \
    op interface \
    ports { weights_load_3147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3240 \
    name weights_load_3148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3148 \
    op interface \
    ports { weights_load_3148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3241 \
    name weights_load_3149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3149 \
    op interface \
    ports { weights_load_3149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3242 \
    name weights_load_3150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3150 \
    op interface \
    ports { weights_load_3150 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3243 \
    name weights_load_3151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3151 \
    op interface \
    ports { weights_load_3151 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3244 \
    name weights_load_3152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3152 \
    op interface \
    ports { weights_load_3152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3245 \
    name weights_load_3153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3153 \
    op interface \
    ports { weights_load_3153 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3246 \
    name weights_load_3154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3154 \
    op interface \
    ports { weights_load_3154 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3247 \
    name weights_load_3155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3155 \
    op interface \
    ports { weights_load_3155 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3248 \
    name weights_load_3156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3156 \
    op interface \
    ports { weights_load_3156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3249 \
    name weights_load_3157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3157 \
    op interface \
    ports { weights_load_3157 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3250 \
    name weights_load_3158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3158 \
    op interface \
    ports { weights_load_3158 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3251 \
    name weights_load_3159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3159 \
    op interface \
    ports { weights_load_3159 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3252 \
    name weights_load_3160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3160 \
    op interface \
    ports { weights_load_3160 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3253 \
    name weights_load_3161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3161 \
    op interface \
    ports { weights_load_3161 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3254 \
    name weights_load_3162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3162 \
    op interface \
    ports { weights_load_3162 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3255 \
    name weights_load_3163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3163 \
    op interface \
    ports { weights_load_3163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3256 \
    name weights_load_3164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3164 \
    op interface \
    ports { weights_load_3164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3257 \
    name weights_load_3165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3165 \
    op interface \
    ports { weights_load_3165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3258 \
    name weights_load_3166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3166 \
    op interface \
    ports { weights_load_3166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3259 \
    name weights_load_3167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3167 \
    op interface \
    ports { weights_load_3167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3260 \
    name weights_load_3168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3168 \
    op interface \
    ports { weights_load_3168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3261 \
    name weights_load_3169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3169 \
    op interface \
    ports { weights_load_3169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3262 \
    name weights_load_3170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3170 \
    op interface \
    ports { weights_load_3170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3263 \
    name weights_load_3171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3171 \
    op interface \
    ports { weights_load_3171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3264 \
    name weights_load_3172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3172 \
    op interface \
    ports { weights_load_3172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3265 \
    name weights_load_3173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3173 \
    op interface \
    ports { weights_load_3173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3266 \
    name weights_load_3174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3174 \
    op interface \
    ports { weights_load_3174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3267 \
    name weights_load_3175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3175 \
    op interface \
    ports { weights_load_3175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3268 \
    name weights_load_3176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3176 \
    op interface \
    ports { weights_load_3176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3269 \
    name weights_load_3177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3177 \
    op interface \
    ports { weights_load_3177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3270 \
    name weights_load_3178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3178 \
    op interface \
    ports { weights_load_3178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3271 \
    name weights_load_3179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3179 \
    op interface \
    ports { weights_load_3179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3272 \
    name weights_load_3180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3180 \
    op interface \
    ports { weights_load_3180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3273 \
    name weights_load_3181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3181 \
    op interface \
    ports { weights_load_3181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3274 \
    name weights_load_3182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3182 \
    op interface \
    ports { weights_load_3182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3275 \
    name weights_load_3183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3183 \
    op interface \
    ports { weights_load_3183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3276 \
    name weights_load_3184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3184 \
    op interface \
    ports { weights_load_3184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3277 \
    name weights_load_3185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3185 \
    op interface \
    ports { weights_load_3185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3278 \
    name weights_load_3186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3186 \
    op interface \
    ports { weights_load_3186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3279 \
    name weights_load_3187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3187 \
    op interface \
    ports { weights_load_3187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3280 \
    name weights_load_3188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3188 \
    op interface \
    ports { weights_load_3188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3281 \
    name weights_load_3189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3189 \
    op interface \
    ports { weights_load_3189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3282 \
    name weights_load_3190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3190 \
    op interface \
    ports { weights_load_3190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3283 \
    name weights_load_3191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3191 \
    op interface \
    ports { weights_load_3191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3284 \
    name weights_load_3192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3192 \
    op interface \
    ports { weights_load_3192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3285 \
    name weights_load_3193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3193 \
    op interface \
    ports { weights_load_3193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3286 \
    name weights_load_3194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3194 \
    op interface \
    ports { weights_load_3194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3287 \
    name weights_load_3195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3195 \
    op interface \
    ports { weights_load_3195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3288 \
    name weights_load_3196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3196 \
    op interface \
    ports { weights_load_3196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3289 \
    name weights_load_3197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3197 \
    op interface \
    ports { weights_load_3197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3290 \
    name weights_load_3198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3198 \
    op interface \
    ports { weights_load_3198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3291 \
    name weights_load_3199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3199 \
    op interface \
    ports { weights_load_3199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3292 \
    name weights_load_3200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3200 \
    op interface \
    ports { weights_load_3200 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3293 \
    name weights_load_3201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3201 \
    op interface \
    ports { weights_load_3201 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3294 \
    name weights_load_3202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3202 \
    op interface \
    ports { weights_load_3202 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3295 \
    name weights_load_3203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3203 \
    op interface \
    ports { weights_load_3203 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3296 \
    name weights_load_3204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3204 \
    op interface \
    ports { weights_load_3204 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3297 \
    name weights_load_3205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3205 \
    op interface \
    ports { weights_load_3205 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3298 \
    name weights_load_3206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3206 \
    op interface \
    ports { weights_load_3206 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3299 \
    name weights_load_3207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3207 \
    op interface \
    ports { weights_load_3207 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3300 \
    name weights_load_3208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3208 \
    op interface \
    ports { weights_load_3208 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3301 \
    name weights_load_3209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3209 \
    op interface \
    ports { weights_load_3209 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3302 \
    name weights_load_3210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3210 \
    op interface \
    ports { weights_load_3210 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3303 \
    name weights_load_3211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3211 \
    op interface \
    ports { weights_load_3211 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3304 \
    name weights_load_3212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3212 \
    op interface \
    ports { weights_load_3212 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3305 \
    name weights_load_3213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3213 \
    op interface \
    ports { weights_load_3213 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3306 \
    name weights_load_3214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3214 \
    op interface \
    ports { weights_load_3214 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3307 \
    name weights_load_3215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3215 \
    op interface \
    ports { weights_load_3215 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3308 \
    name weights_load_3216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3216 \
    op interface \
    ports { weights_load_3216 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3309 \
    name weights_load_3217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3217 \
    op interface \
    ports { weights_load_3217 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3310 \
    name weights_load_3218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3218 \
    op interface \
    ports { weights_load_3218 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3311 \
    name weights_load_3219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3219 \
    op interface \
    ports { weights_load_3219 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3312 \
    name weights_load_3220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3220 \
    op interface \
    ports { weights_load_3220 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3313 \
    name weights_load_3221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3221 \
    op interface \
    ports { weights_load_3221 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3314 \
    name weights_load_3222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3222 \
    op interface \
    ports { weights_load_3222 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3315 \
    name weights_load_3223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3223 \
    op interface \
    ports { weights_load_3223 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3316 \
    name weights_load_3224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3224 \
    op interface \
    ports { weights_load_3224 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3317 \
    name weights_load_3225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3225 \
    op interface \
    ports { weights_load_3225 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3318 \
    name weights_load_3226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3226 \
    op interface \
    ports { weights_load_3226 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3319 \
    name weights_load_3227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3227 \
    op interface \
    ports { weights_load_3227 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3320 \
    name weights_load_3228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3228 \
    op interface \
    ports { weights_load_3228 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3321 \
    name weights_load_3229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3229 \
    op interface \
    ports { weights_load_3229 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3322 \
    name weights_load_3230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3230 \
    op interface \
    ports { weights_load_3230 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3323 \
    name weights_load_3231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3231 \
    op interface \
    ports { weights_load_3231 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3324 \
    name weights_load_3232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3232 \
    op interface \
    ports { weights_load_3232 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3325 \
    name weights_load_3233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3233 \
    op interface \
    ports { weights_load_3233 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3326 \
    name weights_load_3234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3234 \
    op interface \
    ports { weights_load_3234 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3327 \
    name weights_load_3235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3235 \
    op interface \
    ports { weights_load_3235 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3328 \
    name weights_load_3236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3236 \
    op interface \
    ports { weights_load_3236 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3329 \
    name weights_load_3237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3237 \
    op interface \
    ports { weights_load_3237 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3330 \
    name weights_load_3238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3238 \
    op interface \
    ports { weights_load_3238 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3331 \
    name weights_load_3239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3239 \
    op interface \
    ports { weights_load_3239 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3332 \
    name weights_load_3240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3240 \
    op interface \
    ports { weights_load_3240 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3333 \
    name weights_load_3241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3241 \
    op interface \
    ports { weights_load_3241 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3334 \
    name weights_load_3242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3242 \
    op interface \
    ports { weights_load_3242 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3335 \
    name weights_load_3243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3243 \
    op interface \
    ports { weights_load_3243 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3336 \
    name weights_load_3244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3244 \
    op interface \
    ports { weights_load_3244 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3337 \
    name weights_load_3245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3245 \
    op interface \
    ports { weights_load_3245 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3338 \
    name weights_load_3246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3246 \
    op interface \
    ports { weights_load_3246 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3339 \
    name weights_load_3247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3247 \
    op interface \
    ports { weights_load_3247 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3340 \
    name weights_load_3248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3248 \
    op interface \
    ports { weights_load_3248 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3341 \
    name weights_load_3249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3249 \
    op interface \
    ports { weights_load_3249 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3342 \
    name weights_load_3250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3250 \
    op interface \
    ports { weights_load_3250 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3343 \
    name weights_load_3251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3251 \
    op interface \
    ports { weights_load_3251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3344 \
    name weights_load_3252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3252 \
    op interface \
    ports { weights_load_3252 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3345 \
    name weights_load_3253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3253 \
    op interface \
    ports { weights_load_3253 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3346 \
    name weights_load_3254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3254 \
    op interface \
    ports { weights_load_3254 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3347 \
    name weights_load_3255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3255 \
    op interface \
    ports { weights_load_3255 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3348 \
    name weights_load_3256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3256 \
    op interface \
    ports { weights_load_3256 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3349 \
    name weights_load_3257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3257 \
    op interface \
    ports { weights_load_3257 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3350 \
    name weights_load_3258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3258 \
    op interface \
    ports { weights_load_3258 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3351 \
    name weights_load_3259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3259 \
    op interface \
    ports { weights_load_3259 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3352 \
    name weights_load_3260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3260 \
    op interface \
    ports { weights_load_3260 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3353 \
    name weights_load_3261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3261 \
    op interface \
    ports { weights_load_3261 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3354 \
    name weights_load_3262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3262 \
    op interface \
    ports { weights_load_3262 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3355 \
    name weights_load_3263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3263 \
    op interface \
    ports { weights_load_3263 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3356 \
    name weights_load_3264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3264 \
    op interface \
    ports { weights_load_3264 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3357 \
    name weights_load_3265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3265 \
    op interface \
    ports { weights_load_3265 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3358 \
    name weights_load_3266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3266 \
    op interface \
    ports { weights_load_3266 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3359 \
    name weights_load_3267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3267 \
    op interface \
    ports { weights_load_3267 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3360 \
    name weights_load_3268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3268 \
    op interface \
    ports { weights_load_3268 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3361 \
    name weights_load_3269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3269 \
    op interface \
    ports { weights_load_3269 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3362 \
    name weights_load_3270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3270 \
    op interface \
    ports { weights_load_3270 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3363 \
    name weights_load_3271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3271 \
    op interface \
    ports { weights_load_3271 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3364 \
    name weights_load_3272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3272 \
    op interface \
    ports { weights_load_3272 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3365 \
    name weights_load_3273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3273 \
    op interface \
    ports { weights_load_3273 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3366 \
    name weights_load_3274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3274 \
    op interface \
    ports { weights_load_3274 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3367 \
    name weights_load_3275 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3275 \
    op interface \
    ports { weights_load_3275 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3368 \
    name weights_load_3276 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3276 \
    op interface \
    ports { weights_load_3276 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3369 \
    name weights_load_3277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3277 \
    op interface \
    ports { weights_load_3277 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3370 \
    name weights_load_3278 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3278 \
    op interface \
    ports { weights_load_3278 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3371 \
    name weights_load_3279 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3279 \
    op interface \
    ports { weights_load_3279 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3372 \
    name weights_load_3280 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3280 \
    op interface \
    ports { weights_load_3280 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3373 \
    name weights_load_3281 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3281 \
    op interface \
    ports { weights_load_3281 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3374 \
    name weights_load_3282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3282 \
    op interface \
    ports { weights_load_3282 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3375 \
    name weights_load_3283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3283 \
    op interface \
    ports { weights_load_3283 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3376 \
    name weights_load_3284 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3284 \
    op interface \
    ports { weights_load_3284 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3377 \
    name weights_load_3285 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3285 \
    op interface \
    ports { weights_load_3285 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3378 \
    name weights_load_3286 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3286 \
    op interface \
    ports { weights_load_3286 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3379 \
    name weights_load_3287 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3287 \
    op interface \
    ports { weights_load_3287 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3380 \
    name weights_load_3288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3288 \
    op interface \
    ports { weights_load_3288 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3381 \
    name weights_load_3289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3289 \
    op interface \
    ports { weights_load_3289 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3382 \
    name weights_load_3290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3290 \
    op interface \
    ports { weights_load_3290 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3383 \
    name weights_load_3291 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3291 \
    op interface \
    ports { weights_load_3291 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3384 \
    name weights_load_3292 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3292 \
    op interface \
    ports { weights_load_3292 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3385 \
    name weights_load_3293 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3293 \
    op interface \
    ports { weights_load_3293 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3386 \
    name weights_load_3294 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3294 \
    op interface \
    ports { weights_load_3294 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3387 \
    name weights_load_3295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3295 \
    op interface \
    ports { weights_load_3295 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3388 \
    name weights_load_3296 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3296 \
    op interface \
    ports { weights_load_3296 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3389 \
    name weights_load_3297 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3297 \
    op interface \
    ports { weights_load_3297 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3390 \
    name weights_load_3298 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3298 \
    op interface \
    ports { weights_load_3298 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3391 \
    name weights_load_3299 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3299 \
    op interface \
    ports { weights_load_3299 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3392 \
    name weights_load_3300 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3300 \
    op interface \
    ports { weights_load_3300 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3393 \
    name weights_load_3301 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3301 \
    op interface \
    ports { weights_load_3301 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3394 \
    name weights_load_3302 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3302 \
    op interface \
    ports { weights_load_3302 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3395 \
    name weights_load_3303 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3303 \
    op interface \
    ports { weights_load_3303 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3396 \
    name weights_load_3304 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3304 \
    op interface \
    ports { weights_load_3304 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3397 \
    name weights_load_3305 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3305 \
    op interface \
    ports { weights_load_3305 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3398 \
    name weights_load_3306 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3306 \
    op interface \
    ports { weights_load_3306 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3399 \
    name weights_load_3307 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3307 \
    op interface \
    ports { weights_load_3307 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3400 \
    name weights_load_3308 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3308 \
    op interface \
    ports { weights_load_3308 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3401 \
    name weights_load_3309 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3309 \
    op interface \
    ports { weights_load_3309 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3402 \
    name weights_load_3310 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3310 \
    op interface \
    ports { weights_load_3310 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3403 \
    name weights_load_3311 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3311 \
    op interface \
    ports { weights_load_3311 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3404 \
    name weights_load_3312 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3312 \
    op interface \
    ports { weights_load_3312 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3405 \
    name weights_load_3313 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3313 \
    op interface \
    ports { weights_load_3313 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3406 \
    name weights_load_3314 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3314 \
    op interface \
    ports { weights_load_3314 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3407 \
    name weights_load_3315 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3315 \
    op interface \
    ports { weights_load_3315 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3408 \
    name weights_load_3316 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3316 \
    op interface \
    ports { weights_load_3316 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3409 \
    name weights_load_3317 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3317 \
    op interface \
    ports { weights_load_3317 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3410 \
    name weights_load_3318 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3318 \
    op interface \
    ports { weights_load_3318 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3411 \
    name weights_load_3319 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3319 \
    op interface \
    ports { weights_load_3319 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3412 \
    name weights_load_3320 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3320 \
    op interface \
    ports { weights_load_3320 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3413 \
    name weights_load_3321 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3321 \
    op interface \
    ports { weights_load_3321 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3414 \
    name weights_load_3322 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3322 \
    op interface \
    ports { weights_load_3322 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3415 \
    name weights_load_3323 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3323 \
    op interface \
    ports { weights_load_3323 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3416 \
    name weights_load_3324 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3324 \
    op interface \
    ports { weights_load_3324 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3417 \
    name weights_load_3325 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3325 \
    op interface \
    ports { weights_load_3325 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3418 \
    name weights_load_3326 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3326 \
    op interface \
    ports { weights_load_3326 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3419 \
    name weights_load_3327 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3327 \
    op interface \
    ports { weights_load_3327 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3420 \
    name weights_load_3328 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3328 \
    op interface \
    ports { weights_load_3328 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3421 \
    name weights_load_3329 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3329 \
    op interface \
    ports { weights_load_3329 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3422 \
    name weights_load_3330 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3330 \
    op interface \
    ports { weights_load_3330 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3423 \
    name weights_load_3331 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3331 \
    op interface \
    ports { weights_load_3331 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3424 \
    name weights_load_3332 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3332 \
    op interface \
    ports { weights_load_3332 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3425 \
    name weights_load_3333 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3333 \
    op interface \
    ports { weights_load_3333 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3426 \
    name weights_load_3334 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3334 \
    op interface \
    ports { weights_load_3334 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3427 \
    name weights_load_3335 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3335 \
    op interface \
    ports { weights_load_3335 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3428 \
    name weights_load_3336 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3336 \
    op interface \
    ports { weights_load_3336 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3429 \
    name weights_load_3337 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3337 \
    op interface \
    ports { weights_load_3337 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3430 \
    name weights_load_3338 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3338 \
    op interface \
    ports { weights_load_3338 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3431 \
    name weights_load_3339 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3339 \
    op interface \
    ports { weights_load_3339 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3432 \
    name weights_load_3340 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3340 \
    op interface \
    ports { weights_load_3340 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3433 \
    name weights_load_3341 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3341 \
    op interface \
    ports { weights_load_3341 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3434 \
    name weights_load_3342 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3342 \
    op interface \
    ports { weights_load_3342 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3435 \
    name weights_load_3343 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3343 \
    op interface \
    ports { weights_load_3343 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3436 \
    name weights_load_3344 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3344 \
    op interface \
    ports { weights_load_3344 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3437 \
    name weights_load_3345 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3345 \
    op interface \
    ports { weights_load_3345 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3438 \
    name weights_load_3346 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3346 \
    op interface \
    ports { weights_load_3346 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3439 \
    name weights_load_3347 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3347 \
    op interface \
    ports { weights_load_3347 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3440 \
    name weights_load_3348 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3348 \
    op interface \
    ports { weights_load_3348 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3441 \
    name weights_load_3349 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3349 \
    op interface \
    ports { weights_load_3349 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3442 \
    name weights_load_3350 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3350 \
    op interface \
    ports { weights_load_3350 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3443 \
    name weights_load_3351 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3351 \
    op interface \
    ports { weights_load_3351 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3444 \
    name weights_load_3352 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3352 \
    op interface \
    ports { weights_load_3352 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3445 \
    name weights_load_3353 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3353 \
    op interface \
    ports { weights_load_3353 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3446 \
    name weights_load_3354 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3354 \
    op interface \
    ports { weights_load_3354 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3447 \
    name weights_load_3355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3355 \
    op interface \
    ports { weights_load_3355 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3448 \
    name weights_load_3356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3356 \
    op interface \
    ports { weights_load_3356 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3449 \
    name weights_load_3357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3357 \
    op interface \
    ports { weights_load_3357 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3450 \
    name weights_load_3358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3358 \
    op interface \
    ports { weights_load_3358 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3451 \
    name weights_load_3359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3359 \
    op interface \
    ports { weights_load_3359 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3452 \
    name weights_load_3360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3360 \
    op interface \
    ports { weights_load_3360 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3453 \
    name weights_load_3361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3361 \
    op interface \
    ports { weights_load_3361 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3454 \
    name weights_load_3362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3362 \
    op interface \
    ports { weights_load_3362 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3455 \
    name weights_load_3363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3363 \
    op interface \
    ports { weights_load_3363 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3456 \
    name weights_load_3364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3364 \
    op interface \
    ports { weights_load_3364 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3457 \
    name weights_load_3365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3365 \
    op interface \
    ports { weights_load_3365 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3458 \
    name weights_load_3366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3366 \
    op interface \
    ports { weights_load_3366 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3459 \
    name weights_load_3367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3367 \
    op interface \
    ports { weights_load_3367 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3460 \
    name weights_load_3368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3368 \
    op interface \
    ports { weights_load_3368 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3461 \
    name weights_load_3369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3369 \
    op interface \
    ports { weights_load_3369 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3462 \
    name weights_load_3370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3370 \
    op interface \
    ports { weights_load_3370 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3463 \
    name weights_load_3371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3371 \
    op interface \
    ports { weights_load_3371 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3464 \
    name weights_load_3372 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3372 \
    op interface \
    ports { weights_load_3372 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3465 \
    name weights_load_3373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3373 \
    op interface \
    ports { weights_load_3373 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3466 \
    name weights_load_3374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3374 \
    op interface \
    ports { weights_load_3374 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3467 \
    name weights_load_3375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3375 \
    op interface \
    ports { weights_load_3375 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3468 \
    name weights_load_3376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3376 \
    op interface \
    ports { weights_load_3376 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3469 \
    name weights_load_3377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3377 \
    op interface \
    ports { weights_load_3377 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3470 \
    name weights_load_3378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3378 \
    op interface \
    ports { weights_load_3378 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3471 \
    name weights_load_3379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3379 \
    op interface \
    ports { weights_load_3379 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3472 \
    name weights_load_3380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3380 \
    op interface \
    ports { weights_load_3380 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3473 \
    name weights_load_3381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3381 \
    op interface \
    ports { weights_load_3381 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3474 \
    name weights_load_3382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3382 \
    op interface \
    ports { weights_load_3382 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3475 \
    name weights_load_3383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3383 \
    op interface \
    ports { weights_load_3383 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3476 \
    name weights_load_3384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3384 \
    op interface \
    ports { weights_load_3384 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3477 \
    name weights_load_3385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3385 \
    op interface \
    ports { weights_load_3385 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3478 \
    name weights_load_3386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3386 \
    op interface \
    ports { weights_load_3386 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3479 \
    name weights_load_3387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3387 \
    op interface \
    ports { weights_load_3387 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3480 \
    name weights_load_3388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3388 \
    op interface \
    ports { weights_load_3388 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3481 \
    name weights_load_3389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3389 \
    op interface \
    ports { weights_load_3389 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3482 \
    name weights_load_3390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3390 \
    op interface \
    ports { weights_load_3390 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3483 \
    name weights_load_3391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3391 \
    op interface \
    ports { weights_load_3391 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3484 \
    name weights_load_3392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3392 \
    op interface \
    ports { weights_load_3392 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3485 \
    name weights_load_3393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3393 \
    op interface \
    ports { weights_load_3393 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3486 \
    name weights_load_3394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3394 \
    op interface \
    ports { weights_load_3394 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3487 \
    name weights_load_3395 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3395 \
    op interface \
    ports { weights_load_3395 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3488 \
    name weights_load_3396 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3396 \
    op interface \
    ports { weights_load_3396 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3489 \
    name weights_load_3397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3397 \
    op interface \
    ports { weights_load_3397 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3490 \
    name weights_load_3398 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3398 \
    op interface \
    ports { weights_load_3398 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3491 \
    name weights_load_3399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3399 \
    op interface \
    ports { weights_load_3399 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3492 \
    name weights_load_3400 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3400 \
    op interface \
    ports { weights_load_3400 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3493 \
    name weights_load_3401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3401 \
    op interface \
    ports { weights_load_3401 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3494 \
    name weights_load_3402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3402 \
    op interface \
    ports { weights_load_3402 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3495 \
    name weights_load_3403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3403 \
    op interface \
    ports { weights_load_3403 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3496 \
    name weights_load_3404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3404 \
    op interface \
    ports { weights_load_3404 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3497 \
    name weights_load_3405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3405 \
    op interface \
    ports { weights_load_3405 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3498 \
    name weights_load_3406 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3406 \
    op interface \
    ports { weights_load_3406 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3499 \
    name weights_load_3407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3407 \
    op interface \
    ports { weights_load_3407 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3500 \
    name weights_load_3408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3408 \
    op interface \
    ports { weights_load_3408 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3501 \
    name weights_load_3409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3409 \
    op interface \
    ports { weights_load_3409 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3502 \
    name weights_load_3410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3410 \
    op interface \
    ports { weights_load_3410 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3503 \
    name weights_load_3411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3411 \
    op interface \
    ports { weights_load_3411 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3504 \
    name weights_load_3412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3412 \
    op interface \
    ports { weights_load_3412 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3505 \
    name weights_load_3413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3413 \
    op interface \
    ports { weights_load_3413 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3506 \
    name weights_load_3414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3414 \
    op interface \
    ports { weights_load_3414 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3507 \
    name weights_load_3415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3415 \
    op interface \
    ports { weights_load_3415 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3508 \
    name weights_load_3416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3416 \
    op interface \
    ports { weights_load_3416 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3509 \
    name weights_load_3417 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3417 \
    op interface \
    ports { weights_load_3417 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3510 \
    name weights_load_3418 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3418 \
    op interface \
    ports { weights_load_3418 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3511 \
    name weights_load_3419 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3419 \
    op interface \
    ports { weights_load_3419 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3512 \
    name weights_load_3420 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3420 \
    op interface \
    ports { weights_load_3420 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3513 \
    name weights_load_3421 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3421 \
    op interface \
    ports { weights_load_3421 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3514 \
    name weights_load_3422 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3422 \
    op interface \
    ports { weights_load_3422 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3515 \
    name weights_load_3423 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3423 \
    op interface \
    ports { weights_load_3423 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3516 \
    name weights_load_3424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3424 \
    op interface \
    ports { weights_load_3424 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3517 \
    name weights_load_3425 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3425 \
    op interface \
    ports { weights_load_3425 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3518 \
    name weights_load_3426 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3426 \
    op interface \
    ports { weights_load_3426 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3519 \
    name weights_load_3427 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3427 \
    op interface \
    ports { weights_load_3427 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3520 \
    name weights_load_3428 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3428 \
    op interface \
    ports { weights_load_3428 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3521 \
    name weights_load_3429 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3429 \
    op interface \
    ports { weights_load_3429 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3522 \
    name weights_load_3430 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3430 \
    op interface \
    ports { weights_load_3430 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3523 \
    name weights_load_3431 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3431 \
    op interface \
    ports { weights_load_3431 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3524 \
    name weights_load_3432 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3432 \
    op interface \
    ports { weights_load_3432 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3525 \
    name weights_load_3433 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3433 \
    op interface \
    ports { weights_load_3433 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3526 \
    name weights_load_3434 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3434 \
    op interface \
    ports { weights_load_3434 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3527 \
    name weights_load_3435 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3435 \
    op interface \
    ports { weights_load_3435 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3528 \
    name weights_load_3436 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3436 \
    op interface \
    ports { weights_load_3436 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3529 \
    name weights_load_3437 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3437 \
    op interface \
    ports { weights_load_3437 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3530 \
    name weights_load_3438 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3438 \
    op interface \
    ports { weights_load_3438 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3531 \
    name weights_load_3439 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3439 \
    op interface \
    ports { weights_load_3439 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3532 \
    name weights_load_3440 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3440 \
    op interface \
    ports { weights_load_3440 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3533 \
    name weights_load_3441 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3441 \
    op interface \
    ports { weights_load_3441 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3534 \
    name weights_load_3442 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3442 \
    op interface \
    ports { weights_load_3442 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3535 \
    name weights_load_3443 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3443 \
    op interface \
    ports { weights_load_3443 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3536 \
    name weights_load_3444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3444 \
    op interface \
    ports { weights_load_3444 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3537 \
    name weights_load_3445 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3445 \
    op interface \
    ports { weights_load_3445 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3538 \
    name weights_load_3446 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3446 \
    op interface \
    ports { weights_load_3446 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3539 \
    name weights_load_3447 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3447 \
    op interface \
    ports { weights_load_3447 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3540 \
    name weights_load_3448 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3448 \
    op interface \
    ports { weights_load_3448 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3541 \
    name weights_load_3449 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3449 \
    op interface \
    ports { weights_load_3449 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3542 \
    name weights_load_3450 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3450 \
    op interface \
    ports { weights_load_3450 { I 32 vector } } \
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



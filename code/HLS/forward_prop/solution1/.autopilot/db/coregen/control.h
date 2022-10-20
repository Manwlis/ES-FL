// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of gmem_conv2d_32_weights
//        bit 31~0 - gmem_conv2d_32_weights[31:0] (Read/Write)
// 0x14 : Data signal of gmem_conv2d_32_weights
//        bit 31~0 - gmem_conv2d_32_weights[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of gmem_conv2d_32_biases
//        bit 31~0 - gmem_conv2d_32_biases[31:0] (Read/Write)
// 0x20 : Data signal of gmem_conv2d_32_biases
//        bit 31~0 - gmem_conv2d_32_biases[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of gmem_conv2d_64_weights
//        bit 31~0 - gmem_conv2d_64_weights[31:0] (Read/Write)
// 0x2c : Data signal of gmem_conv2d_64_weights
//        bit 31~0 - gmem_conv2d_64_weights[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of gmem_conv2d_64_biases
//        bit 31~0 - gmem_conv2d_64_biases[31:0] (Read/Write)
// 0x38 : Data signal of gmem_conv2d_64_biases
//        bit 31~0 - gmem_conv2d_64_biases[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of gmem_dense_weights
//        bit 31~0 - gmem_dense_weights[31:0] (Read/Write)
// 0x44 : Data signal of gmem_dense_weights
//        bit 31~0 - gmem_dense_weights[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of gmem_dense_biases
//        bit 31~0 - gmem_dense_biases[31:0] (Read/Write)
// 0x50 : Data signal of gmem_dense_biases
//        bit 31~0 - gmem_dense_biases[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of gmem_softmax_weights
//        bit 31~0 - gmem_softmax_weights[31:0] (Read/Write)
// 0x5c : Data signal of gmem_softmax_weights
//        bit 31~0 - gmem_softmax_weights[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of gmem_softmax_biases
//        bit 31~0 - gmem_softmax_biases[31:0] (Read/Write)
// 0x68 : Data signal of gmem_softmax_biases
//        bit 31~0 - gmem_softmax_biases[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of gmem_conv2d_32_feature_map
//        bit 31~0 - gmem_conv2d_32_feature_map[31:0] (Read/Write)
// 0x74 : Data signal of gmem_conv2d_32_feature_map
//        bit 31~0 - gmem_conv2d_32_feature_map[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of gmem_maxp2d_32_feature_map
//        bit 31~0 - gmem_maxp2d_32_feature_map[31:0] (Read/Write)
// 0x80 : Data signal of gmem_maxp2d_32_feature_map
//        bit 31~0 - gmem_maxp2d_32_feature_map[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of gmem_conv2d_64_feature_map
//        bit 31~0 - gmem_conv2d_64_feature_map[31:0] (Read/Write)
// 0x8c : Data signal of gmem_conv2d_64_feature_map
//        bit 31~0 - gmem_conv2d_64_feature_map[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of gmem_maxp2d_64_feature_map
//        bit 31~0 - gmem_maxp2d_64_feature_map[31:0] (Read/Write)
// 0x98 : Data signal of gmem_maxp2d_64_feature_map
//        bit 31~0 - gmem_maxp2d_64_feature_map[63:32] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of gmem_dense_feature_map
//        bit 31~0 - gmem_dense_feature_map[31:0] (Read/Write)
// 0xa4 : Data signal of gmem_dense_feature_map
//        bit 31~0 - gmem_dense_feature_map[63:32] (Read/Write)
// 0xa8 : reserved
// 0xac : Data signal of gmem_softmax_feature_map
//        bit 31~0 - gmem_softmax_feature_map[31:0] (Read/Write)
// 0xb0 : Data signal of gmem_softmax_feature_map
//        bit 31~0 - gmem_softmax_feature_map[63:32] (Read/Write)
// 0xb4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL                         0x00
#define CONTROL_ADDR_GIE                             0x04
#define CONTROL_ADDR_IER                             0x08
#define CONTROL_ADDR_ISR                             0x0c
#define CONTROL_ADDR_GMEM_CONV2D_32_WEIGHTS_DATA     0x10
#define CONTROL_BITS_GMEM_CONV2D_32_WEIGHTS_DATA     64
#define CONTROL_ADDR_GMEM_CONV2D_32_BIASES_DATA      0x1c
#define CONTROL_BITS_GMEM_CONV2D_32_BIASES_DATA      64
#define CONTROL_ADDR_GMEM_CONV2D_64_WEIGHTS_DATA     0x28
#define CONTROL_BITS_GMEM_CONV2D_64_WEIGHTS_DATA     64
#define CONTROL_ADDR_GMEM_CONV2D_64_BIASES_DATA      0x34
#define CONTROL_BITS_GMEM_CONV2D_64_BIASES_DATA      64
#define CONTROL_ADDR_GMEM_DENSE_WEIGHTS_DATA         0x40
#define CONTROL_BITS_GMEM_DENSE_WEIGHTS_DATA         64
#define CONTROL_ADDR_GMEM_DENSE_BIASES_DATA          0x4c
#define CONTROL_BITS_GMEM_DENSE_BIASES_DATA          64
#define CONTROL_ADDR_GMEM_SOFTMAX_WEIGHTS_DATA       0x58
#define CONTROL_BITS_GMEM_SOFTMAX_WEIGHTS_DATA       64
#define CONTROL_ADDR_GMEM_SOFTMAX_BIASES_DATA        0x64
#define CONTROL_BITS_GMEM_SOFTMAX_BIASES_DATA        64
#define CONTROL_ADDR_GMEM_CONV2D_32_FEATURE_MAP_DATA 0x70
#define CONTROL_BITS_GMEM_CONV2D_32_FEATURE_MAP_DATA 64
#define CONTROL_ADDR_GMEM_MAXP2D_32_FEATURE_MAP_DATA 0x7c
#define CONTROL_BITS_GMEM_MAXP2D_32_FEATURE_MAP_DATA 64
#define CONTROL_ADDR_GMEM_CONV2D_64_FEATURE_MAP_DATA 0x88
#define CONTROL_BITS_GMEM_CONV2D_64_FEATURE_MAP_DATA 64
#define CONTROL_ADDR_GMEM_MAXP2D_64_FEATURE_MAP_DATA 0x94
#define CONTROL_BITS_GMEM_MAXP2D_64_FEATURE_MAP_DATA 64
#define CONTROL_ADDR_GMEM_DENSE_FEATURE_MAP_DATA     0xa0
#define CONTROL_BITS_GMEM_DENSE_FEATURE_MAP_DATA     64
#define CONTROL_ADDR_GMEM_SOFTMAX_FEATURE_MAP_DATA   0xac
#define CONTROL_BITS_GMEM_SOFTMAX_FEATURE_MAP_DATA   64

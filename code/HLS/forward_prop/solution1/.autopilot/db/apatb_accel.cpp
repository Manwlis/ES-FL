#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_input_stream_V_data_V "../tv/cdatafile/c.accel.autotvin_input_stream_V_data_V.dat"
#define AUTOTB_TVOUT_input_stream_V_data_V "../tv/cdatafile/c.accel.autotvout_input_stream_V_data_V.dat"
#define AUTOTB_TVIN_input_stream_V_keep_V "../tv/cdatafile/c.accel.autotvin_input_stream_V_keep_V.dat"
#define AUTOTB_TVOUT_input_stream_V_keep_V "../tv/cdatafile/c.accel.autotvout_input_stream_V_keep_V.dat"
#define AUTOTB_TVIN_input_stream_V_strb_V "../tv/cdatafile/c.accel.autotvin_input_stream_V_strb_V.dat"
#define AUTOTB_TVOUT_input_stream_V_strb_V "../tv/cdatafile/c.accel.autotvout_input_stream_V_strb_V.dat"
#define AUTOTB_TVIN_input_stream_V_last_V "../tv/cdatafile/c.accel.autotvin_input_stream_V_last_V.dat"
#define AUTOTB_TVOUT_input_stream_V_last_V "../tv/cdatafile/c.accel.autotvout_input_stream_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_stream_V_data_V "../tv/stream_size/stream_size_in_input_stream_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_stream_V_data_V "../tv/stream_size/stream_ingress_status_input_stream_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_stream_V_keep_V "../tv/stream_size/stream_size_in_input_stream_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_stream_V_keep_V "../tv/stream_size/stream_ingress_status_input_stream_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_stream_V_strb_V "../tv/stream_size/stream_size_in_input_stream_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_stream_V_strb_V "../tv/stream_size/stream_ingress_status_input_stream_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_stream_V_last_V "../tv/stream_size/stream_size_in_input_stream_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_stream_V_last_V "../tv/stream_size/stream_ingress_status_input_stream_V_last_V.dat"
#define AUTOTB_TVIN_gmem_conv2d_32_weights "../tv/cdatafile/c.accel.autotvin_gmem_conv2d_32_weights.dat"
#define AUTOTB_TVOUT_gmem_conv2d_32_weights "../tv/cdatafile/c.accel.autotvout_gmem_conv2d_32_weights.dat"
#define AUTOTB_TVIN_gmem_conv2d_32_biases "../tv/cdatafile/c.accel.autotvin_gmem_conv2d_32_biases.dat"
#define AUTOTB_TVOUT_gmem_conv2d_32_biases "../tv/cdatafile/c.accel.autotvout_gmem_conv2d_32_biases.dat"
#define AUTOTB_TVIN_gmem_conv2d_64_weights "../tv/cdatafile/c.accel.autotvin_gmem_conv2d_64_weights.dat"
#define AUTOTB_TVOUT_gmem_conv2d_64_weights "../tv/cdatafile/c.accel.autotvout_gmem_conv2d_64_weights.dat"
#define AUTOTB_TVIN_gmem_conv2d_64_biases "../tv/cdatafile/c.accel.autotvin_gmem_conv2d_64_biases.dat"
#define AUTOTB_TVOUT_gmem_conv2d_64_biases "../tv/cdatafile/c.accel.autotvout_gmem_conv2d_64_biases.dat"
#define AUTOTB_TVIN_gmem_dense_weights "../tv/cdatafile/c.accel.autotvin_gmem_dense_weights.dat"
#define AUTOTB_TVOUT_gmem_dense_weights "../tv/cdatafile/c.accel.autotvout_gmem_dense_weights.dat"
#define AUTOTB_TVIN_gmem_dense_biases "../tv/cdatafile/c.accel.autotvin_gmem_dense_biases.dat"
#define AUTOTB_TVOUT_gmem_dense_biases "../tv/cdatafile/c.accel.autotvout_gmem_dense_biases.dat"
#define AUTOTB_TVIN_gmem_softmax_weights "../tv/cdatafile/c.accel.autotvin_gmem_softmax_weights.dat"
#define AUTOTB_TVOUT_gmem_softmax_weights "../tv/cdatafile/c.accel.autotvout_gmem_softmax_weights.dat"
#define AUTOTB_TVIN_gmem_softmax_biases "../tv/cdatafile/c.accel.autotvin_gmem_softmax_biases.dat"
#define AUTOTB_TVOUT_gmem_softmax_biases "../tv/cdatafile/c.accel.autotvout_gmem_softmax_biases.dat"
#define AUTOTB_TVIN_gmem_conv2d_32_feature_map "../tv/cdatafile/c.accel.autotvin_gmem_conv2d_32_feature_map.dat"
#define AUTOTB_TVOUT_gmem_conv2d_32_feature_map "../tv/cdatafile/c.accel.autotvout_gmem_conv2d_32_feature_map.dat"
#define AUTOTB_TVIN_gmem_maxp2d_32_feature_map "../tv/cdatafile/c.accel.autotvin_gmem_maxp2d_32_feature_map.dat"
#define AUTOTB_TVOUT_gmem_maxp2d_32_feature_map "../tv/cdatafile/c.accel.autotvout_gmem_maxp2d_32_feature_map.dat"
#define AUTOTB_TVIN_gmem_conv2d_64_feature_map "../tv/cdatafile/c.accel.autotvin_gmem_conv2d_64_feature_map.dat"
#define AUTOTB_TVOUT_gmem_conv2d_64_feature_map "../tv/cdatafile/c.accel.autotvout_gmem_conv2d_64_feature_map.dat"
#define AUTOTB_TVIN_gmem_maxp2d_64_feature_map "../tv/cdatafile/c.accel.autotvin_gmem_maxp2d_64_feature_map.dat"
#define AUTOTB_TVOUT_gmem_maxp2d_64_feature_map "../tv/cdatafile/c.accel.autotvout_gmem_maxp2d_64_feature_map.dat"
#define AUTOTB_TVIN_gmem_dense_feature_map "../tv/cdatafile/c.accel.autotvin_gmem_dense_feature_map.dat"
#define AUTOTB_TVOUT_gmem_dense_feature_map "../tv/cdatafile/c.accel.autotvout_gmem_dense_feature_map.dat"
#define AUTOTB_TVIN_gmem_softmax_feature_map "../tv/cdatafile/c.accel.autotvin_gmem_softmax_feature_map.dat"
#define AUTOTB_TVOUT_gmem_softmax_feature_map "../tv/cdatafile/c.accel.autotvout_gmem_softmax_feature_map.dat"
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.accel.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.accel.autotvout_gmem.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_input_stream_V_data_V "../tv/rtldatafile/rtl.accel.autotvout_input_stream_V_data_V.dat"
#define AUTOTB_TVOUT_PC_input_stream_V_keep_V "../tv/rtldatafile/rtl.accel.autotvout_input_stream_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_input_stream_V_strb_V "../tv/rtldatafile/rtl.accel.autotvout_input_stream_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_input_stream_V_last_V "../tv/rtldatafile/rtl.accel.autotvout_input_stream_V_last_V.dat"
#define AUTOTB_TVOUT_PC_gmem_conv2d_32_weights "../tv/rtldatafile/rtl.accel.autotvout_gmem_conv2d_32_weights.dat"
#define AUTOTB_TVOUT_PC_gmem_conv2d_32_biases "../tv/rtldatafile/rtl.accel.autotvout_gmem_conv2d_32_biases.dat"
#define AUTOTB_TVOUT_PC_gmem_conv2d_64_weights "../tv/rtldatafile/rtl.accel.autotvout_gmem_conv2d_64_weights.dat"
#define AUTOTB_TVOUT_PC_gmem_conv2d_64_biases "../tv/rtldatafile/rtl.accel.autotvout_gmem_conv2d_64_biases.dat"
#define AUTOTB_TVOUT_PC_gmem_dense_weights "../tv/rtldatafile/rtl.accel.autotvout_gmem_dense_weights.dat"
#define AUTOTB_TVOUT_PC_gmem_dense_biases "../tv/rtldatafile/rtl.accel.autotvout_gmem_dense_biases.dat"
#define AUTOTB_TVOUT_PC_gmem_softmax_weights "../tv/rtldatafile/rtl.accel.autotvout_gmem_softmax_weights.dat"
#define AUTOTB_TVOUT_PC_gmem_softmax_biases "../tv/rtldatafile/rtl.accel.autotvout_gmem_softmax_biases.dat"
#define AUTOTB_TVOUT_PC_gmem_conv2d_32_feature_map "../tv/rtldatafile/rtl.accel.autotvout_gmem_conv2d_32_feature_map.dat"
#define AUTOTB_TVOUT_PC_gmem_maxp2d_32_feature_map "../tv/rtldatafile/rtl.accel.autotvout_gmem_maxp2d_32_feature_map.dat"
#define AUTOTB_TVOUT_PC_gmem_conv2d_64_feature_map "../tv/rtldatafile/rtl.accel.autotvout_gmem_conv2d_64_feature_map.dat"
#define AUTOTB_TVOUT_PC_gmem_maxp2d_64_feature_map "../tv/rtldatafile/rtl.accel.autotvout_gmem_maxp2d_64_feature_map.dat"
#define AUTOTB_TVOUT_PC_gmem_dense_feature_map "../tv/rtldatafile/rtl.accel.autotvout_gmem_dense_feature_map.dat"
#define AUTOTB_TVOUT_PC_gmem_softmax_feature_map "../tv/rtldatafile/rtl.accel.autotvout_gmem_softmax_feature_map.dat"
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.accel.autotvout_gmem.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  input_stream_V_data_V_depth = 0;
  input_stream_V_keep_V_depth = 0;
  input_stream_V_strb_V_depth = 0;
  input_stream_V_last_V_depth = 0;
  gmem_conv2d_32_weights_depth = 0;
  gmem_conv2d_32_biases_depth = 0;
  gmem_conv2d_64_weights_depth = 0;
  gmem_conv2d_64_biases_depth = 0;
  gmem_dense_weights_depth = 0;
  gmem_dense_biases_depth = 0;
  gmem_softmax_weights_depth = 0;
  gmem_softmax_biases_depth = 0;
  gmem_conv2d_32_feature_map_depth = 0;
  gmem_maxp2d_32_feature_map_depth = 0;
  gmem_conv2d_64_feature_map_depth = 0;
  gmem_maxp2d_64_feature_map_depth = 0;
  gmem_dense_feature_map_depth = 0;
  gmem_softmax_feature_map_depth = 0;
  gmem_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{input_stream_V_data_V " << input_stream_V_data_V_depth << "}\n";
  total_list << "{input_stream_V_keep_V " << input_stream_V_keep_V_depth << "}\n";
  total_list << "{input_stream_V_strb_V " << input_stream_V_strb_V_depth << "}\n";
  total_list << "{input_stream_V_last_V " << input_stream_V_last_V_depth << "}\n";
  total_list << "{gmem_conv2d_32_weights " << gmem_conv2d_32_weights_depth << "}\n";
  total_list << "{gmem_conv2d_32_biases " << gmem_conv2d_32_biases_depth << "}\n";
  total_list << "{gmem_conv2d_64_weights " << gmem_conv2d_64_weights_depth << "}\n";
  total_list << "{gmem_conv2d_64_biases " << gmem_conv2d_64_biases_depth << "}\n";
  total_list << "{gmem_dense_weights " << gmem_dense_weights_depth << "}\n";
  total_list << "{gmem_dense_biases " << gmem_dense_biases_depth << "}\n";
  total_list << "{gmem_softmax_weights " << gmem_softmax_weights_depth << "}\n";
  total_list << "{gmem_softmax_biases " << gmem_softmax_biases_depth << "}\n";
  total_list << "{gmem_conv2d_32_feature_map " << gmem_conv2d_32_feature_map_depth << "}\n";
  total_list << "{gmem_maxp2d_32_feature_map " << gmem_maxp2d_32_feature_map_depth << "}\n";
  total_list << "{gmem_conv2d_64_feature_map " << gmem_conv2d_64_feature_map_depth << "}\n";
  total_list << "{gmem_maxp2d_64_feature_map " << gmem_maxp2d_64_feature_map_depth << "}\n";
  total_list << "{gmem_dense_feature_map " << gmem_dense_feature_map_depth << "}\n";
  total_list << "{gmem_softmax_feature_map " << gmem_softmax_feature_map_depth << "}\n";
  total_list << "{gmem " << gmem_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int input_stream_V_data_V_depth;
    int input_stream_V_keep_V_depth;
    int input_stream_V_strb_V_depth;
    int input_stream_V_last_V_depth;
    int gmem_conv2d_32_weights_depth;
    int gmem_conv2d_32_biases_depth;
    int gmem_conv2d_64_weights_depth;
    int gmem_conv2d_64_biases_depth;
    int gmem_dense_weights_depth;
    int gmem_dense_biases_depth;
    int gmem_softmax_weights_depth;
    int gmem_softmax_biases_depth;
    int gmem_conv2d_32_feature_map_depth;
    int gmem_maxp2d_32_feature_map_depth;
    int gmem_conv2d_64_feature_map_depth;
    int gmem_maxp2d_64_feature_map_depth;
    int gmem_dense_feature_map_depth;
    int gmem_softmax_feature_map_depth;
    int gmem_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s64__ { char data[64]; };
extern "C" void accel_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_accel_hw(volatile void * __xlx_apatb_param_input_stream_V_data_V, volatile void * __xlx_apatb_param_input_stream_V_keep_V, volatile void * __xlx_apatb_param_input_stream_V_strb_V, volatile void * __xlx_apatb_param_input_stream_V_last_V, volatile void * __xlx_apatb_param_gmem_conv2d_32_weights, volatile void * __xlx_apatb_param_gmem_conv2d_32_biases, volatile void * __xlx_apatb_param_gmem_conv2d_64_weights, volatile void * __xlx_apatb_param_gmem_conv2d_64_biases, volatile void * __xlx_apatb_param_gmem_dense_weights, volatile void * __xlx_apatb_param_gmem_dense_biases, volatile void * __xlx_apatb_param_gmem_softmax_weights, volatile void * __xlx_apatb_param_gmem_softmax_biases, volatile void * __xlx_apatb_param_gmem_conv2d_32_feature_map, volatile void * __xlx_apatb_param_gmem_maxp2d_32_feature_map, volatile void * __xlx_apatb_param_gmem_conv2d_64_feature_map, volatile void * __xlx_apatb_param_gmem_maxp2d_64_feature_map, volatile void * __xlx_apatb_param_gmem_dense_feature_map, volatile void * __xlx_apatb_param_gmem_softmax_feature_map) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_input_stream_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_input_stream_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_input_stream_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_input_stream_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_input_stream_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_input_stream_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_input_stream_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_input_stream_V_last_V)->read();
}
#ifdef USE_BINARY_TV_FILE
{
transaction<512> tr(29302);
aesl_fh.read(AUTOTB_TVOUT_PC_gmem, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<64>((char*)__xlx_apatb_param_gmem_conv2d_32_weights, 18, 0);
tr.send<64>((char*)__xlx_apatb_param_gmem_conv2d_32_biases, 2, 18);
tr.send<64>((char*)__xlx_apatb_param_gmem_conv2d_64_weights, 1152, 20);
tr.send<64>((char*)__xlx_apatb_param_gmem_conv2d_64_biases, 4, 1172);
tr.send<64>((char*)__xlx_apatb_param_gmem_dense_weights, 25088, 1176);
tr.send<64>((char*)__xlx_apatb_param_gmem_dense_biases, 8, 26264);
tr.send<64>((char*)__xlx_apatb_param_gmem_softmax_weights, 80, 26272);
tr.send<64>((char*)__xlx_apatb_param_gmem_softmax_biases, 1, 26352);
tr.send<64>((char*)__xlx_apatb_param_gmem_conv2d_32_feature_map, 1568, 26353);
tr.send<64>((char*)__xlx_apatb_param_gmem_maxp2d_32_feature_map, 392, 27921);
tr.send<64>((char*)__xlx_apatb_param_gmem_conv2d_64_feature_map, 784, 28313);
tr.send<64>((char*)__xlx_apatb_param_gmem_maxp2d_64_feature_map, 196, 29097);
tr.send<64>((char*)__xlx_apatb_param_gmem_dense_feature_map, 8, 29293);
tr.send<64>((char*)__xlx_apatb_param_gmem_softmax_feature_map, 1, 29301);
}
#else
try {
static PostCheck<512> pc(AUTOTB_TVOUT_PC_gmem);
pc.psize = 64;
pc.param = (char*)__xlx_apatb_param_gmem_conv2d_32_weights;
pc.depth = 18;
pc.run(AESL_transaction_pc, 0);pc.param = (char*)__xlx_apatb_param_gmem_conv2d_32_biases;
pc.depth = 2;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_conv2d_64_weights;
pc.depth = 1152;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_conv2d_64_biases;
pc.depth = 4;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_dense_weights;
pc.depth = 25088;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_dense_biases;
pc.depth = 8;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_softmax_weights;
pc.depth = 80;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_softmax_biases;
pc.depth = 1;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_conv2d_32_feature_map;
pc.depth = 1568;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_maxp2d_32_feature_map;
pc.depth = 392;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_conv2d_64_feature_map;
pc.depth = 784;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_maxp2d_64_feature_map;
pc.depth = 196;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_dense_feature_map;
pc.depth = 8;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_gmem_softmax_feature_map;
pc.depth = 1;
pc.run(AESL_transaction_pc, 0);

} catch (SimException &e) {
  std::cout << "at line " << e.line << " occurred exception, " << e.msg << "\n";
}
#endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_stream_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_stream_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_stream_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_stream_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_last_V);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_gmem_conv2d_32_weights = 0;
unsigned __xlx_offset_byte_param_gmem_conv2d_32_biases = 0;
unsigned __xlx_offset_byte_param_gmem_conv2d_64_weights = 0;
unsigned __xlx_offset_byte_param_gmem_conv2d_64_biases = 0;
unsigned __xlx_offset_byte_param_gmem_dense_weights = 0;
unsigned __xlx_offset_byte_param_gmem_dense_biases = 0;
unsigned __xlx_offset_byte_param_gmem_softmax_weights = 0;
unsigned __xlx_offset_byte_param_gmem_softmax_biases = 0;
unsigned __xlx_offset_byte_param_gmem_conv2d_32_feature_map = 0;
unsigned __xlx_offset_byte_param_gmem_maxp2d_32_feature_map = 0;
unsigned __xlx_offset_byte_param_gmem_conv2d_64_feature_map = 0;
unsigned __xlx_offset_byte_param_gmem_maxp2d_64_feature_map = 0;
unsigned __xlx_offset_byte_param_gmem_dense_feature_map = 0;
unsigned __xlx_offset_byte_param_gmem_softmax_feature_map = 0;
// data
std::vector<int> __xlx_apatb_param_input_stream_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_input_stream_V_data_V)->empty())
    __xlx_apatb_param_input_stream_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_input_stream_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_input_stream_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_input_stream_V_data_V)->write(__xlx_apatb_param_input_stream_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_input_stream_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_input_stream_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_input_stream_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_input_stream_V_keep_V)->empty())
    __xlx_apatb_param_input_stream_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_input_stream_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_input_stream_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_input_stream_V_keep_V)->write(__xlx_apatb_param_input_stream_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_input_stream_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_input_stream_V_strb_V)->empty())
    __xlx_apatb_param_input_stream_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_input_stream_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_input_stream_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_input_stream_V_strb_V)->write(__xlx_apatb_param_input_stream_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_input_stream_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_input_stream_V_last_V)->empty())
    __xlx_apatb_param_input_stream_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_input_stream_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_input_stream_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_input_stream_V_last_V)->write(__xlx_apatb_param_input_stream_V_last_V_stream_buf[i]);
  }
// id
// dest
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem, 'b');
transaction<512> tr(29302);
__xlx_offset_byte_param_gmem_conv2d_32_weights = 0*64;
if (__xlx_apatb_param_gmem_conv2d_32_weights) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_32_weights, 18, 0);
}
__xlx_offset_byte_param_gmem_conv2d_32_biases = 18*64;
if (__xlx_apatb_param_gmem_conv2d_32_biases) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_32_biases, 2, 0);
}
__xlx_offset_byte_param_gmem_conv2d_64_weights = 20*64;
if (__xlx_apatb_param_gmem_conv2d_64_weights) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_64_weights, 1152, 0);
}
__xlx_offset_byte_param_gmem_conv2d_64_biases = 1172*64;
if (__xlx_apatb_param_gmem_conv2d_64_biases) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_64_biases, 4, 0);
}
__xlx_offset_byte_param_gmem_dense_weights = 1176*64;
if (__xlx_apatb_param_gmem_dense_weights) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_dense_weights, 25088, 0);
}
__xlx_offset_byte_param_gmem_dense_biases = 26264*64;
if (__xlx_apatb_param_gmem_dense_biases) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_dense_biases, 8, 0);
}
__xlx_offset_byte_param_gmem_softmax_weights = 26272*64;
if (__xlx_apatb_param_gmem_softmax_weights) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_softmax_weights, 80, 0);
}
__xlx_offset_byte_param_gmem_softmax_biases = 26352*64;
if (__xlx_apatb_param_gmem_softmax_biases) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_softmax_biases, 1, 0);
}
__xlx_offset_byte_param_gmem_conv2d_32_feature_map = 26353*64;
if (__xlx_apatb_param_gmem_conv2d_32_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_32_feature_map, 1568, 0);
}
__xlx_offset_byte_param_gmem_maxp2d_32_feature_map = 27921*64;
if (__xlx_apatb_param_gmem_maxp2d_32_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_maxp2d_32_feature_map, 392, 0);
}
__xlx_offset_byte_param_gmem_conv2d_64_feature_map = 28313*64;
if (__xlx_apatb_param_gmem_conv2d_64_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_64_feature_map, 784, 0);
}
__xlx_offset_byte_param_gmem_maxp2d_64_feature_map = 29097*64;
if (__xlx_apatb_param_gmem_maxp2d_64_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_maxp2d_64_feature_map, 196, 0);
}
__xlx_offset_byte_param_gmem_dense_feature_map = 29293*64;
if (__xlx_apatb_param_gmem_dense_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_dense_feature_map, 8, 0);
}
__xlx_offset_byte_param_gmem_softmax_feature_map = 29301*64;
if (__xlx_apatb_param_gmem_softmax_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_softmax_feature_map, 1, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem, tr.p, tr.tbytes);
tcl_file.set_num(29302, &tcl_file.gmem_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem);
{
aesl_fh.write(AUTOTB_TVIN_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_gmem_conv2d_32_weights = 0*64;
if (__xlx_apatb_param_gmem_conv2d_32_weights) {
for (size_t i = 0; i < 18; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_32_weights + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_conv2d_32_biases = 18*64;
if (__xlx_apatb_param_gmem_conv2d_32_biases) {
for (size_t i = 0; i < 2; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_32_biases + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_conv2d_64_weights = 20*64;
if (__xlx_apatb_param_gmem_conv2d_64_weights) {
for (size_t i = 0; i < 1152; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_64_weights + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_conv2d_64_biases = 1172*64;
if (__xlx_apatb_param_gmem_conv2d_64_biases) {
for (size_t i = 0; i < 4; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_64_biases + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_dense_weights = 1176*64;
if (__xlx_apatb_param_gmem_dense_weights) {
for (size_t i = 0; i < 25088; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_dense_weights + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_dense_biases = 26264*64;
if (__xlx_apatb_param_gmem_dense_biases) {
for (size_t i = 0; i < 8; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_dense_biases + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_softmax_weights = 26272*64;
if (__xlx_apatb_param_gmem_softmax_weights) {
for (size_t i = 0; i < 80; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_softmax_weights + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_softmax_biases = 26352*64;
if (__xlx_apatb_param_gmem_softmax_biases) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_softmax_biases + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_conv2d_32_feature_map = 26353*64;
if (__xlx_apatb_param_gmem_conv2d_32_feature_map) {
for (size_t i = 0; i < 1568; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_32_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_maxp2d_32_feature_map = 27921*64;
if (__xlx_apatb_param_gmem_maxp2d_32_feature_map) {
for (size_t i = 0; i < 392; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_maxp2d_32_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_conv2d_64_feature_map = 28313*64;
if (__xlx_apatb_param_gmem_conv2d_64_feature_map) {
for (size_t i = 0; i < 784; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_64_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_maxp2d_64_feature_map = 29097*64;
if (__xlx_apatb_param_gmem_maxp2d_64_feature_map) {
for (size_t i = 0; i < 196; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_maxp2d_64_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_dense_feature_map = 29293*64;
if (__xlx_apatb_param_gmem_dense_feature_map) {
for (size_t i = 0; i < 8; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_dense_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
__xlx_offset_byte_param_gmem_softmax_feature_map = 29301*64;
if (__xlx_apatb_param_gmem_softmax_feature_map) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_softmax_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
tcl_file.set_num(29302, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVIN_gmem, end_str());
}
#endif
// print gmem_conv2d_32_weights Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_32_weights, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_conv2d_32_weights;
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_32_weights, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_conv2d_32_weights_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_32_weights, end_str());
}

// print gmem_conv2d_32_biases Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_32_biases, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_conv2d_32_biases;
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_32_biases, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_conv2d_32_biases_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_32_biases, end_str());
}

// print gmem_conv2d_64_weights Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_64_weights, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_conv2d_64_weights;
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_64_weights, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_conv2d_64_weights_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_64_weights, end_str());
}

// print gmem_conv2d_64_biases Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_64_biases, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_conv2d_64_biases;
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_64_biases, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_conv2d_64_biases_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_64_biases, end_str());
}

// print gmem_dense_weights Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_dense_weights, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_dense_weights;
aesl_fh.write(AUTOTB_TVIN_gmem_dense_weights, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_dense_weights_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_dense_weights, end_str());
}

// print gmem_dense_biases Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_dense_biases, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_dense_biases;
aesl_fh.write(AUTOTB_TVIN_gmem_dense_biases, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_dense_biases_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_dense_biases, end_str());
}

// print gmem_softmax_weights Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_softmax_weights, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_softmax_weights;
aesl_fh.write(AUTOTB_TVIN_gmem_softmax_weights, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_softmax_weights_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_softmax_weights, end_str());
}

// print gmem_softmax_biases Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_softmax_biases, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_softmax_biases;
aesl_fh.write(AUTOTB_TVIN_gmem_softmax_biases, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_softmax_biases_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_softmax_biases, end_str());
}

// print gmem_conv2d_32_feature_map Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_32_feature_map, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_conv2d_32_feature_map;
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_32_feature_map, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_conv2d_32_feature_map_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_32_feature_map, end_str());
}

// print gmem_maxp2d_32_feature_map Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_maxp2d_32_feature_map, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_maxp2d_32_feature_map;
aesl_fh.write(AUTOTB_TVIN_gmem_maxp2d_32_feature_map, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_maxp2d_32_feature_map_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_maxp2d_32_feature_map, end_str());
}

// print gmem_conv2d_64_feature_map Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_64_feature_map, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_conv2d_64_feature_map;
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_64_feature_map, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_conv2d_64_feature_map_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_conv2d_64_feature_map, end_str());
}

// print gmem_maxp2d_64_feature_map Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_maxp2d_64_feature_map, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_maxp2d_64_feature_map;
aesl_fh.write(AUTOTB_TVIN_gmem_maxp2d_64_feature_map, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_maxp2d_64_feature_map_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_maxp2d_64_feature_map, end_str());
}

// print gmem_dense_feature_map Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_dense_feature_map, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_dense_feature_map;
aesl_fh.write(AUTOTB_TVIN_gmem_dense_feature_map, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_dense_feature_map_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_dense_feature_map, end_str());
}

// print gmem_softmax_feature_map Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem_softmax_feature_map, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_gmem_softmax_feature_map;
aesl_fh.write(AUTOTB_TVIN_gmem_softmax_feature_map, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.gmem_softmax_feature_map_depth);
aesl_fh.write(AUTOTB_TVIN_gmem_softmax_feature_map, end_str());
}

CodeState = CALL_C_DUT;
accel_hw_stub_wrapper(__xlx_apatb_param_input_stream_V_data_V, __xlx_apatb_param_input_stream_V_keep_V, __xlx_apatb_param_input_stream_V_strb_V, __xlx_apatb_param_input_stream_V_last_V, __xlx_apatb_param_gmem_conv2d_32_weights, __xlx_apatb_param_gmem_conv2d_32_biases, __xlx_apatb_param_gmem_conv2d_64_weights, __xlx_apatb_param_gmem_conv2d_64_biases, __xlx_apatb_param_gmem_dense_weights, __xlx_apatb_param_gmem_dense_biases, __xlx_apatb_param_gmem_softmax_weights, __xlx_apatb_param_gmem_softmax_biases, __xlx_apatb_param_gmem_conv2d_32_feature_map, __xlx_apatb_param_gmem_maxp2d_32_feature_map, __xlx_apatb_param_gmem_conv2d_64_feature_map, __xlx_apatb_param_gmem_maxp2d_64_feature_map, __xlx_apatb_param_gmem_dense_feature_map, __xlx_apatb_param_gmem_softmax_feature_map);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_input_stream_stream_buf_final_size = __xlx_apatb_param_input_stream_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_input_stream_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_input_stream_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_input_stream_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_input_stream_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_input_stream_V_last_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_input_stream_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_input_stream_V_data_V_stream_buf.data()+i), 32);
aesl_fh.write(AUTOTB_TVIN_input_stream_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_input_stream_V_keep_V_stream_buf.data()+i), 4);
aesl_fh.write(AUTOTB_TVIN_input_stream_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_input_stream_V_strb_V_stream_buf.data()+i), 4);
aesl_fh.write(AUTOTB_TVIN_input_stream_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_input_stream_V_last_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_input_stream_V_last_V, s);
}
tcl_file.set_num(__xlx_apatb_param_input_stream_stream_buf_final_size, &tcl_file.input_stream_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_input_stream_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_input_stream_stream_buf_final_size, &tcl_file.input_stream_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_input_stream_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_input_stream_stream_buf_final_size, &tcl_file.input_stream_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_input_stream_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_input_stream_stream_buf_final_size, &tcl_file.input_stream_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_input_stream_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_input_stream_stream_buf_final_size > 0) {
  long input_stream_V_data_V_stream_ingress_size = __xlx_apatb_param_input_stream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_input_stream_stream_buf_final_size; j != e; j++) {
    input_stream_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long input_stream_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_input_stream_stream_buf_final_size > 0) {
  long input_stream_V_keep_V_stream_ingress_size = __xlx_apatb_param_input_stream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_input_stream_stream_buf_final_size; j != e; j++) {
    input_stream_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long input_stream_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_input_stream_stream_buf_final_size > 0) {
  long input_stream_V_strb_V_stream_ingress_size = __xlx_apatb_param_input_stream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_input_stream_stream_buf_final_size; j != e; j++) {
    input_stream_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long input_stream_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_input_stream_stream_buf_final_size > 0) {
  long input_stream_V_last_V_stream_ingress_size = __xlx_apatb_param_input_stream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_input_stream_stream_buf_final_size; j != e; j++) {
    input_stream_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long input_stream_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_input_stream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_input_stream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_input_stream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_input_stream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V_last_V, end_str());
}
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_gmem, 'b');
transaction<512> tr(29302);
__xlx_offset_byte_param_gmem_conv2d_32_weights = 0*64;
if (__xlx_apatb_param_gmem_conv2d_32_weights) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_32_weights, 18, 0);
}
__xlx_offset_byte_param_gmem_conv2d_32_biases = 18*64;
if (__xlx_apatb_param_gmem_conv2d_32_biases) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_32_biases, 2, 0);
}
__xlx_offset_byte_param_gmem_conv2d_64_weights = 20*64;
if (__xlx_apatb_param_gmem_conv2d_64_weights) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_64_weights, 1152, 0);
}
__xlx_offset_byte_param_gmem_conv2d_64_biases = 1172*64;
if (__xlx_apatb_param_gmem_conv2d_64_biases) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_64_biases, 4, 0);
}
__xlx_offset_byte_param_gmem_dense_weights = 1176*64;
if (__xlx_apatb_param_gmem_dense_weights) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_dense_weights, 25088, 0);
}
__xlx_offset_byte_param_gmem_dense_biases = 26264*64;
if (__xlx_apatb_param_gmem_dense_biases) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_dense_biases, 8, 0);
}
__xlx_offset_byte_param_gmem_softmax_weights = 26272*64;
if (__xlx_apatb_param_gmem_softmax_weights) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_softmax_weights, 80, 0);
}
__xlx_offset_byte_param_gmem_softmax_biases = 26352*64;
if (__xlx_apatb_param_gmem_softmax_biases) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_softmax_biases, 1, 0);
}
__xlx_offset_byte_param_gmem_conv2d_32_feature_map = 26353*64;
if (__xlx_apatb_param_gmem_conv2d_32_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_32_feature_map, 1568, 0);
}
__xlx_offset_byte_param_gmem_maxp2d_32_feature_map = 27921*64;
if (__xlx_apatb_param_gmem_maxp2d_32_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_maxp2d_32_feature_map, 392, 0);
}
__xlx_offset_byte_param_gmem_conv2d_64_feature_map = 28313*64;
if (__xlx_apatb_param_gmem_conv2d_64_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_conv2d_64_feature_map, 784, 0);
}
__xlx_offset_byte_param_gmem_maxp2d_64_feature_map = 29097*64;
if (__xlx_apatb_param_gmem_maxp2d_64_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_maxp2d_64_feature_map, 196, 0);
}
__xlx_offset_byte_param_gmem_dense_feature_map = 29293*64;
if (__xlx_apatb_param_gmem_dense_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_dense_feature_map, 8, 0);
}
__xlx_offset_byte_param_gmem_softmax_feature_map = 29301*64;
if (__xlx_apatb_param_gmem_softmax_feature_map) {
  tr.import<64>((char*)__xlx_apatb_param_gmem_softmax_feature_map, 1, 0);
}
aesl_fh.write(AUTOTB_TVOUT_gmem, tr.p, tr.tbytes);
tcl_file.set_num(29302, &tcl_file.gmem_depth);
}
#else
aesl_fh.touch(AUTOTB_TVOUT_gmem);
{
aesl_fh.write(AUTOTB_TVOUT_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_gmem_conv2d_32_weights = 0*64;
if (__xlx_apatb_param_gmem_conv2d_32_weights) {
for (size_t i = 0; i < 18; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_32_weights + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_conv2d_32_biases = 18*64;
if (__xlx_apatb_param_gmem_conv2d_32_biases) {
for (size_t i = 0; i < 2; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_32_biases + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_conv2d_64_weights = 20*64;
if (__xlx_apatb_param_gmem_conv2d_64_weights) {
for (size_t i = 0; i < 1152; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_64_weights + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_conv2d_64_biases = 1172*64;
if (__xlx_apatb_param_gmem_conv2d_64_biases) {
for (size_t i = 0; i < 4; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_64_biases + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_dense_weights = 1176*64;
if (__xlx_apatb_param_gmem_dense_weights) {
for (size_t i = 0; i < 25088; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_dense_weights + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_dense_biases = 26264*64;
if (__xlx_apatb_param_gmem_dense_biases) {
for (size_t i = 0; i < 8; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_dense_biases + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_softmax_weights = 26272*64;
if (__xlx_apatb_param_gmem_softmax_weights) {
for (size_t i = 0; i < 80; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_softmax_weights + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_softmax_biases = 26352*64;
if (__xlx_apatb_param_gmem_softmax_biases) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_softmax_biases + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_conv2d_32_feature_map = 26353*64;
if (__xlx_apatb_param_gmem_conv2d_32_feature_map) {
for (size_t i = 0; i < 1568; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_32_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_maxp2d_32_feature_map = 27921*64;
if (__xlx_apatb_param_gmem_maxp2d_32_feature_map) {
for (size_t i = 0; i < 392; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_maxp2d_32_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_conv2d_64_feature_map = 28313*64;
if (__xlx_apatb_param_gmem_conv2d_64_feature_map) {
for (size_t i = 0; i < 784; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_conv2d_64_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_maxp2d_64_feature_map = 29097*64;
if (__xlx_apatb_param_gmem_maxp2d_64_feature_map) {
for (size_t i = 0; i < 196; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_maxp2d_64_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_dense_feature_map = 29293*64;
if (__xlx_apatb_param_gmem_dense_feature_map) {
for (size_t i = 0; i < 8; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_dense_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
__xlx_offset_byte_param_gmem_softmax_feature_map = 29301*64;
if (__xlx_apatb_param_gmem_softmax_feature_map) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_gmem_softmax_feature_map + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
tcl_file.set_num(29302, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVOUT_gmem, end_str());
}
#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}

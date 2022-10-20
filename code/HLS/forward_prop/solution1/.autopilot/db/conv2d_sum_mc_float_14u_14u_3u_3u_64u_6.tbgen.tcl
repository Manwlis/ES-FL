set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_6
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.6}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_6 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_6 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_6", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv2d_64_padded_window_stream_6_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_6_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_6_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_6_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_6_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_6_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_6_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_6_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_6_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_6_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_6", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_6", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_6", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_6", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_6", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_6", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_6", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_6", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_6", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_6", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13138", "EstimateLatencyMax" : "13138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_64_padded_window_stream_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_6", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_6", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12561", "EstimateLatencyMax" : "12561",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_64_padded_window_stream_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_1734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2300", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4144", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4145", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4146", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4147", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4148", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4149", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4150", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4151", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4152", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4153", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4154", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4155", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4156", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4157", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4158", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4159", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4160", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_6 {
		conv2d_64_padded_window_stream_6 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_6 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs {
		conv2d_64_padded_window_stream_6 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_1726 {Type I LastRead 0 FirstWrite -1}
		weights_load_1727 {Type I LastRead 0 FirstWrite -1}
		weights_load_1728 {Type I LastRead 0 FirstWrite -1}
		weights_load_1729 {Type I LastRead 0 FirstWrite -1}
		weights_load_1730 {Type I LastRead 0 FirstWrite -1}
		weights_load_1731 {Type I LastRead 0 FirstWrite -1}
		weights_load_1732 {Type I LastRead 0 FirstWrite -1}
		weights_load_1733 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_6 {Type O LastRead -1 FirstWrite 16}
		weights_load_1734 {Type I LastRead 0 FirstWrite -1}
		weights_load_1735 {Type I LastRead 0 FirstWrite -1}
		weights_load_1736 {Type I LastRead 0 FirstWrite -1}
		weights_load_1737 {Type I LastRead 0 FirstWrite -1}
		weights_load_1738 {Type I LastRead 0 FirstWrite -1}
		weights_load_1739 {Type I LastRead 0 FirstWrite -1}
		weights_load_1740 {Type I LastRead 0 FirstWrite -1}
		weights_load_1741 {Type I LastRead 0 FirstWrite -1}
		weights_load_1742 {Type I LastRead 0 FirstWrite -1}
		weights_load_1743 {Type I LastRead 0 FirstWrite -1}
		weights_load_1744 {Type I LastRead 0 FirstWrite -1}
		weights_load_1745 {Type I LastRead 0 FirstWrite -1}
		weights_load_1746 {Type I LastRead 0 FirstWrite -1}
		weights_load_1747 {Type I LastRead 0 FirstWrite -1}
		weights_load_1748 {Type I LastRead 0 FirstWrite -1}
		weights_load_1749 {Type I LastRead 0 FirstWrite -1}
		weights_load_1750 {Type I LastRead 0 FirstWrite -1}
		weights_load_1751 {Type I LastRead 0 FirstWrite -1}
		weights_load_1752 {Type I LastRead 0 FirstWrite -1}
		weights_load_1753 {Type I LastRead 0 FirstWrite -1}
		weights_load_1754 {Type I LastRead 0 FirstWrite -1}
		weights_load_1755 {Type I LastRead 0 FirstWrite -1}
		weights_load_1756 {Type I LastRead 0 FirstWrite -1}
		weights_load_1757 {Type I LastRead 0 FirstWrite -1}
		weights_load_1758 {Type I LastRead 0 FirstWrite -1}
		weights_load_1759 {Type I LastRead 0 FirstWrite -1}
		weights_load_1760 {Type I LastRead 0 FirstWrite -1}
		weights_load_1761 {Type I LastRead 0 FirstWrite -1}
		weights_load_1762 {Type I LastRead 0 FirstWrite -1}
		weights_load_1763 {Type I LastRead 0 FirstWrite -1}
		weights_load_1764 {Type I LastRead 0 FirstWrite -1}
		weights_load_1765 {Type I LastRead 0 FirstWrite -1}
		weights_load_1766 {Type I LastRead 0 FirstWrite -1}
		weights_load_1767 {Type I LastRead 0 FirstWrite -1}
		weights_load_1768 {Type I LastRead 0 FirstWrite -1}
		weights_load_1769 {Type I LastRead 0 FirstWrite -1}
		weights_load_1770 {Type I LastRead 0 FirstWrite -1}
		weights_load_1771 {Type I LastRead 0 FirstWrite -1}
		weights_load_1772 {Type I LastRead 0 FirstWrite -1}
		weights_load_1773 {Type I LastRead 0 FirstWrite -1}
		weights_load_1774 {Type I LastRead 0 FirstWrite -1}
		weights_load_1775 {Type I LastRead 0 FirstWrite -1}
		weights_load_1776 {Type I LastRead 0 FirstWrite -1}
		weights_load_1777 {Type I LastRead 0 FirstWrite -1}
		weights_load_1778 {Type I LastRead 0 FirstWrite -1}
		weights_load_1779 {Type I LastRead 0 FirstWrite -1}
		weights_load_1780 {Type I LastRead 0 FirstWrite -1}
		weights_load_1781 {Type I LastRead 0 FirstWrite -1}
		weights_load_1782 {Type I LastRead 0 FirstWrite -1}
		weights_load_1783 {Type I LastRead 0 FirstWrite -1}
		weights_load_1784 {Type I LastRead 0 FirstWrite -1}
		weights_load_1785 {Type I LastRead 0 FirstWrite -1}
		weights_load_1786 {Type I LastRead 0 FirstWrite -1}
		weights_load_1787 {Type I LastRead 0 FirstWrite -1}
		weights_load_1788 {Type I LastRead 0 FirstWrite -1}
		weights_load_1789 {Type I LastRead 0 FirstWrite -1}
		weights_load_1790 {Type I LastRead 0 FirstWrite -1}
		weights_load_1791 {Type I LastRead 0 FirstWrite -1}
		weights_load_1792 {Type I LastRead 0 FirstWrite -1}
		weights_load_1793 {Type I LastRead 0 FirstWrite -1}
		weights_load_1794 {Type I LastRead 0 FirstWrite -1}
		weights_load_1795 {Type I LastRead 0 FirstWrite -1}
		weights_load_1796 {Type I LastRead 0 FirstWrite -1}
		weights_load_1797 {Type I LastRead 0 FirstWrite -1}
		weights_load_1798 {Type I LastRead 0 FirstWrite -1}
		weights_load_1799 {Type I LastRead 0 FirstWrite -1}
		weights_load_1800 {Type I LastRead 0 FirstWrite -1}
		weights_load_1801 {Type I LastRead 0 FirstWrite -1}
		weights_load_1802 {Type I LastRead 0 FirstWrite -1}
		weights_load_1803 {Type I LastRead 0 FirstWrite -1}
		weights_load_1804 {Type I LastRead 0 FirstWrite -1}
		weights_load_1805 {Type I LastRead 0 FirstWrite -1}
		weights_load_1806 {Type I LastRead 0 FirstWrite -1}
		weights_load_1807 {Type I LastRead 0 FirstWrite -1}
		weights_load_1808 {Type I LastRead 0 FirstWrite -1}
		weights_load_1809 {Type I LastRead 0 FirstWrite -1}
		weights_load_1810 {Type I LastRead 0 FirstWrite -1}
		weights_load_1811 {Type I LastRead 0 FirstWrite -1}
		weights_load_1812 {Type I LastRead 0 FirstWrite -1}
		weights_load_1813 {Type I LastRead 0 FirstWrite -1}
		weights_load_1814 {Type I LastRead 0 FirstWrite -1}
		weights_load_1815 {Type I LastRead 0 FirstWrite -1}
		weights_load_1816 {Type I LastRead 0 FirstWrite -1}
		weights_load_1817 {Type I LastRead 0 FirstWrite -1}
		weights_load_1818 {Type I LastRead 0 FirstWrite -1}
		weights_load_1819 {Type I LastRead 0 FirstWrite -1}
		weights_load_1820 {Type I LastRead 0 FirstWrite -1}
		weights_load_1821 {Type I LastRead 0 FirstWrite -1}
		weights_load_1822 {Type I LastRead 0 FirstWrite -1}
		weights_load_1823 {Type I LastRead 0 FirstWrite -1}
		weights_load_1824 {Type I LastRead 0 FirstWrite -1}
		weights_load_1825 {Type I LastRead 0 FirstWrite -1}
		weights_load_1826 {Type I LastRead 0 FirstWrite -1}
		weights_load_1827 {Type I LastRead 0 FirstWrite -1}
		weights_load_1828 {Type I LastRead 0 FirstWrite -1}
		weights_load_1829 {Type I LastRead 0 FirstWrite -1}
		weights_load_1830 {Type I LastRead 0 FirstWrite -1}
		weights_load_1831 {Type I LastRead 0 FirstWrite -1}
		weights_load_1832 {Type I LastRead 0 FirstWrite -1}
		weights_load_1833 {Type I LastRead 0 FirstWrite -1}
		weights_load_1834 {Type I LastRead 0 FirstWrite -1}
		weights_load_1835 {Type I LastRead 0 FirstWrite -1}
		weights_load_1836 {Type I LastRead 0 FirstWrite -1}
		weights_load_1837 {Type I LastRead 0 FirstWrite -1}
		weights_load_1838 {Type I LastRead 0 FirstWrite -1}
		weights_load_1839 {Type I LastRead 0 FirstWrite -1}
		weights_load_1840 {Type I LastRead 0 FirstWrite -1}
		weights_load_1841 {Type I LastRead 0 FirstWrite -1}
		weights_load_1842 {Type I LastRead 0 FirstWrite -1}
		weights_load_1843 {Type I LastRead 0 FirstWrite -1}
		weights_load_1844 {Type I LastRead 0 FirstWrite -1}
		weights_load_1845 {Type I LastRead 0 FirstWrite -1}
		weights_load_1846 {Type I LastRead 0 FirstWrite -1}
		weights_load_1847 {Type I LastRead 0 FirstWrite -1}
		weights_load_1848 {Type I LastRead 0 FirstWrite -1}
		weights_load_1849 {Type I LastRead 0 FirstWrite -1}
		weights_load_1850 {Type I LastRead 0 FirstWrite -1}
		weights_load_1851 {Type I LastRead 0 FirstWrite -1}
		weights_load_1852 {Type I LastRead 0 FirstWrite -1}
		weights_load_1853 {Type I LastRead 0 FirstWrite -1}
		weights_load_1854 {Type I LastRead 0 FirstWrite -1}
		weights_load_1855 {Type I LastRead 0 FirstWrite -1}
		weights_load_1856 {Type I LastRead 0 FirstWrite -1}
		weights_load_1857 {Type I LastRead 0 FirstWrite -1}
		weights_load_1858 {Type I LastRead 0 FirstWrite -1}
		weights_load_1859 {Type I LastRead 0 FirstWrite -1}
		weights_load_1860 {Type I LastRead 0 FirstWrite -1}
		weights_load_1861 {Type I LastRead 0 FirstWrite -1}
		weights_load_1862 {Type I LastRead 0 FirstWrite -1}
		weights_load_1863 {Type I LastRead 0 FirstWrite -1}
		weights_load_1864 {Type I LastRead 0 FirstWrite -1}
		weights_load_1865 {Type I LastRead 0 FirstWrite -1}
		weights_load_1866 {Type I LastRead 0 FirstWrite -1}
		weights_load_1867 {Type I LastRead 0 FirstWrite -1}
		weights_load_1868 {Type I LastRead 0 FirstWrite -1}
		weights_load_1869 {Type I LastRead 0 FirstWrite -1}
		weights_load_1870 {Type I LastRead 0 FirstWrite -1}
		weights_load_1871 {Type I LastRead 0 FirstWrite -1}
		weights_load_1872 {Type I LastRead 0 FirstWrite -1}
		weights_load_1873 {Type I LastRead 0 FirstWrite -1}
		weights_load_1874 {Type I LastRead 0 FirstWrite -1}
		weights_load_1875 {Type I LastRead 0 FirstWrite -1}
		weights_load_1876 {Type I LastRead 0 FirstWrite -1}
		weights_load_1877 {Type I LastRead 0 FirstWrite -1}
		weights_load_1878 {Type I LastRead 0 FirstWrite -1}
		weights_load_1879 {Type I LastRead 0 FirstWrite -1}
		weights_load_1880 {Type I LastRead 0 FirstWrite -1}
		weights_load_1881 {Type I LastRead 0 FirstWrite -1}
		weights_load_1882 {Type I LastRead 0 FirstWrite -1}
		weights_load_1883 {Type I LastRead 0 FirstWrite -1}
		weights_load_1884 {Type I LastRead 0 FirstWrite -1}
		weights_load_1885 {Type I LastRead 0 FirstWrite -1}
		weights_load_1886 {Type I LastRead 0 FirstWrite -1}
		weights_load_1887 {Type I LastRead 0 FirstWrite -1}
		weights_load_1888 {Type I LastRead 0 FirstWrite -1}
		weights_load_1889 {Type I LastRead 0 FirstWrite -1}
		weights_load_1890 {Type I LastRead 0 FirstWrite -1}
		weights_load_1891 {Type I LastRead 0 FirstWrite -1}
		weights_load_1892 {Type I LastRead 0 FirstWrite -1}
		weights_load_1893 {Type I LastRead 0 FirstWrite -1}
		weights_load_1894 {Type I LastRead 0 FirstWrite -1}
		weights_load_1895 {Type I LastRead 0 FirstWrite -1}
		weights_load_1896 {Type I LastRead 0 FirstWrite -1}
		weights_load_1897 {Type I LastRead 0 FirstWrite -1}
		weights_load_1898 {Type I LastRead 0 FirstWrite -1}
		weights_load_1899 {Type I LastRead 0 FirstWrite -1}
		weights_load_1900 {Type I LastRead 0 FirstWrite -1}
		weights_load_1901 {Type I LastRead 0 FirstWrite -1}
		weights_load_1902 {Type I LastRead 0 FirstWrite -1}
		weights_load_1903 {Type I LastRead 0 FirstWrite -1}
		weights_load_1904 {Type I LastRead 0 FirstWrite -1}
		weights_load_1905 {Type I LastRead 0 FirstWrite -1}
		weights_load_1906 {Type I LastRead 0 FirstWrite -1}
		weights_load_1907 {Type I LastRead 0 FirstWrite -1}
		weights_load_1908 {Type I LastRead 0 FirstWrite -1}
		weights_load_1909 {Type I LastRead 0 FirstWrite -1}
		weights_load_1910 {Type I LastRead 0 FirstWrite -1}
		weights_load_1911 {Type I LastRead 0 FirstWrite -1}
		weights_load_1912 {Type I LastRead 0 FirstWrite -1}
		weights_load_1913 {Type I LastRead 0 FirstWrite -1}
		weights_load_1914 {Type I LastRead 0 FirstWrite -1}
		weights_load_1915 {Type I LastRead 0 FirstWrite -1}
		weights_load_1916 {Type I LastRead 0 FirstWrite -1}
		weights_load_1917 {Type I LastRead 0 FirstWrite -1}
		weights_load_1918 {Type I LastRead 0 FirstWrite -1}
		weights_load_1919 {Type I LastRead 0 FirstWrite -1}
		weights_load_1920 {Type I LastRead 0 FirstWrite -1}
		weights_load_1921 {Type I LastRead 0 FirstWrite -1}
		weights_load_1922 {Type I LastRead 0 FirstWrite -1}
		weights_load_1923 {Type I LastRead 0 FirstWrite -1}
		weights_load_1924 {Type I LastRead 0 FirstWrite -1}
		weights_load_1925 {Type I LastRead 0 FirstWrite -1}
		weights_load_1926 {Type I LastRead 0 FirstWrite -1}
		weights_load_1927 {Type I LastRead 0 FirstWrite -1}
		weights_load_1928 {Type I LastRead 0 FirstWrite -1}
		weights_load_1929 {Type I LastRead 0 FirstWrite -1}
		weights_load_1930 {Type I LastRead 0 FirstWrite -1}
		weights_load_1931 {Type I LastRead 0 FirstWrite -1}
		weights_load_1932 {Type I LastRead 0 FirstWrite -1}
		weights_load_1933 {Type I LastRead 0 FirstWrite -1}
		weights_load_1934 {Type I LastRead 0 FirstWrite -1}
		weights_load_1935 {Type I LastRead 0 FirstWrite -1}
		weights_load_1936 {Type I LastRead 0 FirstWrite -1}
		weights_load_1937 {Type I LastRead 0 FirstWrite -1}
		weights_load_1938 {Type I LastRead 0 FirstWrite -1}
		weights_load_1939 {Type I LastRead 0 FirstWrite -1}
		weights_load_1940 {Type I LastRead 0 FirstWrite -1}
		weights_load_1941 {Type I LastRead 0 FirstWrite -1}
		weights_load_1942 {Type I LastRead 0 FirstWrite -1}
		weights_load_1943 {Type I LastRead 0 FirstWrite -1}
		weights_load_1944 {Type I LastRead 0 FirstWrite -1}
		weights_load_1945 {Type I LastRead 0 FirstWrite -1}
		weights_load_1946 {Type I LastRead 0 FirstWrite -1}
		weights_load_1947 {Type I LastRead 0 FirstWrite -1}
		weights_load_1948 {Type I LastRead 0 FirstWrite -1}
		weights_load_1949 {Type I LastRead 0 FirstWrite -1}
		weights_load_1950 {Type I LastRead 0 FirstWrite -1}
		weights_load_1951 {Type I LastRead 0 FirstWrite -1}
		weights_load_1952 {Type I LastRead 0 FirstWrite -1}
		weights_load_1953 {Type I LastRead 0 FirstWrite -1}
		weights_load_1954 {Type I LastRead 0 FirstWrite -1}
		weights_load_1955 {Type I LastRead 0 FirstWrite -1}
		weights_load_1956 {Type I LastRead 0 FirstWrite -1}
		weights_load_1957 {Type I LastRead 0 FirstWrite -1}
		weights_load_1958 {Type I LastRead 0 FirstWrite -1}
		weights_load_1959 {Type I LastRead 0 FirstWrite -1}
		weights_load_1960 {Type I LastRead 0 FirstWrite -1}
		weights_load_1961 {Type I LastRead 0 FirstWrite -1}
		weights_load_1962 {Type I LastRead 0 FirstWrite -1}
		weights_load_1963 {Type I LastRead 0 FirstWrite -1}
		weights_load_1964 {Type I LastRead 0 FirstWrite -1}
		weights_load_1965 {Type I LastRead 0 FirstWrite -1}
		weights_load_1966 {Type I LastRead 0 FirstWrite -1}
		weights_load_1967 {Type I LastRead 0 FirstWrite -1}
		weights_load_1968 {Type I LastRead 0 FirstWrite -1}
		weights_load_1969 {Type I LastRead 0 FirstWrite -1}
		weights_load_1970 {Type I LastRead 0 FirstWrite -1}
		weights_load_1971 {Type I LastRead 0 FirstWrite -1}
		weights_load_1972 {Type I LastRead 0 FirstWrite -1}
		weights_load_1973 {Type I LastRead 0 FirstWrite -1}
		weights_load_1974 {Type I LastRead 0 FirstWrite -1}
		weights_load_1975 {Type I LastRead 0 FirstWrite -1}
		weights_load_1976 {Type I LastRead 0 FirstWrite -1}
		weights_load_1977 {Type I LastRead 0 FirstWrite -1}
		weights_load_1978 {Type I LastRead 0 FirstWrite -1}
		weights_load_1979 {Type I LastRead 0 FirstWrite -1}
		weights_load_1980 {Type I LastRead 0 FirstWrite -1}
		weights_load_1981 {Type I LastRead 0 FirstWrite -1}
		weights_load_1982 {Type I LastRead 0 FirstWrite -1}
		weights_load_1983 {Type I LastRead 0 FirstWrite -1}
		weights_load_1984 {Type I LastRead 0 FirstWrite -1}
		weights_load_1985 {Type I LastRead 0 FirstWrite -1}
		weights_load_1986 {Type I LastRead 0 FirstWrite -1}
		weights_load_1987 {Type I LastRead 0 FirstWrite -1}
		weights_load_1988 {Type I LastRead 0 FirstWrite -1}
		weights_load_1989 {Type I LastRead 0 FirstWrite -1}
		weights_load_1990 {Type I LastRead 0 FirstWrite -1}
		weights_load_1991 {Type I LastRead 0 FirstWrite -1}
		weights_load_1992 {Type I LastRead 0 FirstWrite -1}
		weights_load_1993 {Type I LastRead 0 FirstWrite -1}
		weights_load_1994 {Type I LastRead 0 FirstWrite -1}
		weights_load_1995 {Type I LastRead 0 FirstWrite -1}
		weights_load_1996 {Type I LastRead 0 FirstWrite -1}
		weights_load_1997 {Type I LastRead 0 FirstWrite -1}
		weights_load_1998 {Type I LastRead 0 FirstWrite -1}
		weights_load_1999 {Type I LastRead 0 FirstWrite -1}
		weights_load_2000 {Type I LastRead 0 FirstWrite -1}
		weights_load_2001 {Type I LastRead 0 FirstWrite -1}
		weights_load_2002 {Type I LastRead 0 FirstWrite -1}
		weights_load_2003 {Type I LastRead 0 FirstWrite -1}
		weights_load_2004 {Type I LastRead 0 FirstWrite -1}
		weights_load_2005 {Type I LastRead 0 FirstWrite -1}
		weights_load_2006 {Type I LastRead 0 FirstWrite -1}
		weights_load_2007 {Type I LastRead 0 FirstWrite -1}
		weights_load_2008 {Type I LastRead 0 FirstWrite -1}
		weights_load_2009 {Type I LastRead 0 FirstWrite -1}
		weights_load_2010 {Type I LastRead 0 FirstWrite -1}
		weights_load_2011 {Type I LastRead 0 FirstWrite -1}
		weights_load_2012 {Type I LastRead 0 FirstWrite -1}
		weights_load_2013 {Type I LastRead 0 FirstWrite -1}
		weights_load_2014 {Type I LastRead 0 FirstWrite -1}
		weights_load_2015 {Type I LastRead 0 FirstWrite -1}
		weights_load_2016 {Type I LastRead 0 FirstWrite -1}
		weights_load_2017 {Type I LastRead 0 FirstWrite -1}
		weights_load_2018 {Type I LastRead 0 FirstWrite -1}
		weights_load_2019 {Type I LastRead 0 FirstWrite -1}
		weights_load_2020 {Type I LastRead 0 FirstWrite -1}
		weights_load_2021 {Type I LastRead 0 FirstWrite -1}
		weights_load_2022 {Type I LastRead 0 FirstWrite -1}
		weights_load_2023 {Type I LastRead 0 FirstWrite -1}
		weights_load_2024 {Type I LastRead 0 FirstWrite -1}
		weights_load_2025 {Type I LastRead 0 FirstWrite -1}
		weights_load_2026 {Type I LastRead 0 FirstWrite -1}
		weights_load_2027 {Type I LastRead 0 FirstWrite -1}
		weights_load_2028 {Type I LastRead 0 FirstWrite -1}
		weights_load_2029 {Type I LastRead 0 FirstWrite -1}
		weights_load_2030 {Type I LastRead 0 FirstWrite -1}
		weights_load_2031 {Type I LastRead 0 FirstWrite -1}
		weights_load_2032 {Type I LastRead 0 FirstWrite -1}
		weights_load_2033 {Type I LastRead 0 FirstWrite -1}
		weights_load_2034 {Type I LastRead 0 FirstWrite -1}
		weights_load_2035 {Type I LastRead 0 FirstWrite -1}
		weights_load_2036 {Type I LastRead 0 FirstWrite -1}
		weights_load_2037 {Type I LastRead 0 FirstWrite -1}
		weights_load_2038 {Type I LastRead 0 FirstWrite -1}
		weights_load_2039 {Type I LastRead 0 FirstWrite -1}
		weights_load_2040 {Type I LastRead 0 FirstWrite -1}
		weights_load_2041 {Type I LastRead 0 FirstWrite -1}
		weights_load_2042 {Type I LastRead 0 FirstWrite -1}
		weights_load_2043 {Type I LastRead 0 FirstWrite -1}
		weights_load_2044 {Type I LastRead 0 FirstWrite -1}
		weights_load_2045 {Type I LastRead 0 FirstWrite -1}
		weights_load_2046 {Type I LastRead 0 FirstWrite -1}
		weights_load_2047 {Type I LastRead 0 FirstWrite -1}
		weights_load_2048 {Type I LastRead 0 FirstWrite -1}
		weights_load_2049 {Type I LastRead 0 FirstWrite -1}
		weights_load_2050 {Type I LastRead 0 FirstWrite -1}
		weights_load_2051 {Type I LastRead 0 FirstWrite -1}
		weights_load_2052 {Type I LastRead 0 FirstWrite -1}
		weights_load_2053 {Type I LastRead 0 FirstWrite -1}
		weights_load_2054 {Type I LastRead 0 FirstWrite -1}
		weights_load_2055 {Type I LastRead 0 FirstWrite -1}
		weights_load_2056 {Type I LastRead 0 FirstWrite -1}
		weights_load_2057 {Type I LastRead 0 FirstWrite -1}
		weights_load_2058 {Type I LastRead 0 FirstWrite -1}
		weights_load_2059 {Type I LastRead 0 FirstWrite -1}
		weights_load_2060 {Type I LastRead 0 FirstWrite -1}
		weights_load_2061 {Type I LastRead 0 FirstWrite -1}
		weights_load_2062 {Type I LastRead 0 FirstWrite -1}
		weights_load_2063 {Type I LastRead 0 FirstWrite -1}
		weights_load_2064 {Type I LastRead 0 FirstWrite -1}
		weights_load_2065 {Type I LastRead 0 FirstWrite -1}
		weights_load_2066 {Type I LastRead 0 FirstWrite -1}
		weights_load_2067 {Type I LastRead 0 FirstWrite -1}
		weights_load_2068 {Type I LastRead 0 FirstWrite -1}
		weights_load_2069 {Type I LastRead 0 FirstWrite -1}
		weights_load_2070 {Type I LastRead 0 FirstWrite -1}
		weights_load_2071 {Type I LastRead 0 FirstWrite -1}
		weights_load_2072 {Type I LastRead 0 FirstWrite -1}
		weights_load_2073 {Type I LastRead 0 FirstWrite -1}
		weights_load_2074 {Type I LastRead 0 FirstWrite -1}
		weights_load_2075 {Type I LastRead 0 FirstWrite -1}
		weights_load_2076 {Type I LastRead 0 FirstWrite -1}
		weights_load_2077 {Type I LastRead 0 FirstWrite -1}
		weights_load_2078 {Type I LastRead 0 FirstWrite -1}
		weights_load_2079 {Type I LastRead 0 FirstWrite -1}
		weights_load_2080 {Type I LastRead 0 FirstWrite -1}
		weights_load_2081 {Type I LastRead 0 FirstWrite -1}
		weights_load_2082 {Type I LastRead 0 FirstWrite -1}
		weights_load_2083 {Type I LastRead 0 FirstWrite -1}
		weights_load_2084 {Type I LastRead 0 FirstWrite -1}
		weights_load_2085 {Type I LastRead 0 FirstWrite -1}
		weights_load_2086 {Type I LastRead 0 FirstWrite -1}
		weights_load_2087 {Type I LastRead 0 FirstWrite -1}
		weights_load_2088 {Type I LastRead 0 FirstWrite -1}
		weights_load_2089 {Type I LastRead 0 FirstWrite -1}
		weights_load_2090 {Type I LastRead 0 FirstWrite -1}
		weights_load_2091 {Type I LastRead 0 FirstWrite -1}
		weights_load_2092 {Type I LastRead 0 FirstWrite -1}
		weights_load_2093 {Type I LastRead 0 FirstWrite -1}
		weights_load_2094 {Type I LastRead 0 FirstWrite -1}
		weights_load_2095 {Type I LastRead 0 FirstWrite -1}
		weights_load_2096 {Type I LastRead 0 FirstWrite -1}
		weights_load_2097 {Type I LastRead 0 FirstWrite -1}
		weights_load_2098 {Type I LastRead 0 FirstWrite -1}
		weights_load_2099 {Type I LastRead 0 FirstWrite -1}
		weights_load_2100 {Type I LastRead 0 FirstWrite -1}
		weights_load_2101 {Type I LastRead 0 FirstWrite -1}
		weights_load_2102 {Type I LastRead 0 FirstWrite -1}
		weights_load_2103 {Type I LastRead 0 FirstWrite -1}
		weights_load_2104 {Type I LastRead 0 FirstWrite -1}
		weights_load_2105 {Type I LastRead 0 FirstWrite -1}
		weights_load_2106 {Type I LastRead 0 FirstWrite -1}
		weights_load_2107 {Type I LastRead 0 FirstWrite -1}
		weights_load_2108 {Type I LastRead 0 FirstWrite -1}
		weights_load_2109 {Type I LastRead 0 FirstWrite -1}
		weights_load_2110 {Type I LastRead 0 FirstWrite -1}
		weights_load_2111 {Type I LastRead 0 FirstWrite -1}
		weights_load_2112 {Type I LastRead 0 FirstWrite -1}
		weights_load_2113 {Type I LastRead 0 FirstWrite -1}
		weights_load_2114 {Type I LastRead 0 FirstWrite -1}
		weights_load_2115 {Type I LastRead 0 FirstWrite -1}
		weights_load_2116 {Type I LastRead 0 FirstWrite -1}
		weights_load_2117 {Type I LastRead 0 FirstWrite -1}
		weights_load_2118 {Type I LastRead 0 FirstWrite -1}
		weights_load_2119 {Type I LastRead 0 FirstWrite -1}
		weights_load_2120 {Type I LastRead 0 FirstWrite -1}
		weights_load_2121 {Type I LastRead 0 FirstWrite -1}
		weights_load_2122 {Type I LastRead 0 FirstWrite -1}
		weights_load_2123 {Type I LastRead 0 FirstWrite -1}
		weights_load_2124 {Type I LastRead 0 FirstWrite -1}
		weights_load_2125 {Type I LastRead 0 FirstWrite -1}
		weights_load_2126 {Type I LastRead 0 FirstWrite -1}
		weights_load_2127 {Type I LastRead 0 FirstWrite -1}
		weights_load_2128 {Type I LastRead 0 FirstWrite -1}
		weights_load_2129 {Type I LastRead 0 FirstWrite -1}
		weights_load_2130 {Type I LastRead 0 FirstWrite -1}
		weights_load_2131 {Type I LastRead 0 FirstWrite -1}
		weights_load_2132 {Type I LastRead 0 FirstWrite -1}
		weights_load_2133 {Type I LastRead 0 FirstWrite -1}
		weights_load_2134 {Type I LastRead 0 FirstWrite -1}
		weights_load_2135 {Type I LastRead 0 FirstWrite -1}
		weights_load_2136 {Type I LastRead 0 FirstWrite -1}
		weights_load_2137 {Type I LastRead 0 FirstWrite -1}
		weights_load_2138 {Type I LastRead 0 FirstWrite -1}
		weights_load_2139 {Type I LastRead 0 FirstWrite -1}
		weights_load_2140 {Type I LastRead 0 FirstWrite -1}
		weights_load_2141 {Type I LastRead 0 FirstWrite -1}
		weights_load_2142 {Type I LastRead 0 FirstWrite -1}
		weights_load_2143 {Type I LastRead 0 FirstWrite -1}
		weights_load_2144 {Type I LastRead 0 FirstWrite -1}
		weights_load_2145 {Type I LastRead 0 FirstWrite -1}
		weights_load_2146 {Type I LastRead 0 FirstWrite -1}
		weights_load_2147 {Type I LastRead 0 FirstWrite -1}
		weights_load_2148 {Type I LastRead 0 FirstWrite -1}
		weights_load_2149 {Type I LastRead 0 FirstWrite -1}
		weights_load_2150 {Type I LastRead 0 FirstWrite -1}
		weights_load_2151 {Type I LastRead 0 FirstWrite -1}
		weights_load_2152 {Type I LastRead 0 FirstWrite -1}
		weights_load_2153 {Type I LastRead 0 FirstWrite -1}
		weights_load_2154 {Type I LastRead 0 FirstWrite -1}
		weights_load_2155 {Type I LastRead 0 FirstWrite -1}
		weights_load_2156 {Type I LastRead 0 FirstWrite -1}
		weights_load_2157 {Type I LastRead 0 FirstWrite -1}
		weights_load_2158 {Type I LastRead 0 FirstWrite -1}
		weights_load_2159 {Type I LastRead 0 FirstWrite -1}
		weights_load_2160 {Type I LastRead 0 FirstWrite -1}
		weights_load_2161 {Type I LastRead 0 FirstWrite -1}
		weights_load_2162 {Type I LastRead 0 FirstWrite -1}
		weights_load_2163 {Type I LastRead 0 FirstWrite -1}
		weights_load_2164 {Type I LastRead 0 FirstWrite -1}
		weights_load_2165 {Type I LastRead 0 FirstWrite -1}
		weights_load_2166 {Type I LastRead 0 FirstWrite -1}
		weights_load_2167 {Type I LastRead 0 FirstWrite -1}
		weights_load_2168 {Type I LastRead 0 FirstWrite -1}
		weights_load_2169 {Type I LastRead 0 FirstWrite -1}
		weights_load_2170 {Type I LastRead 0 FirstWrite -1}
		weights_load_2171 {Type I LastRead 0 FirstWrite -1}
		weights_load_2172 {Type I LastRead 0 FirstWrite -1}
		weights_load_2173 {Type I LastRead 0 FirstWrite -1}
		weights_load_2174 {Type I LastRead 0 FirstWrite -1}
		weights_load_2175 {Type I LastRead 0 FirstWrite -1}
		weights_load_2176 {Type I LastRead 0 FirstWrite -1}
		weights_load_2177 {Type I LastRead 0 FirstWrite -1}
		weights_load_2178 {Type I LastRead 0 FirstWrite -1}
		weights_load_2179 {Type I LastRead 0 FirstWrite -1}
		weights_load_2180 {Type I LastRead 0 FirstWrite -1}
		weights_load_2181 {Type I LastRead 0 FirstWrite -1}
		weights_load_2182 {Type I LastRead 0 FirstWrite -1}
		weights_load_2183 {Type I LastRead 0 FirstWrite -1}
		weights_load_2184 {Type I LastRead 0 FirstWrite -1}
		weights_load_2185 {Type I LastRead 0 FirstWrite -1}
		weights_load_2186 {Type I LastRead 0 FirstWrite -1}
		weights_load_2187 {Type I LastRead 0 FirstWrite -1}
		weights_load_2188 {Type I LastRead 0 FirstWrite -1}
		weights_load_2189 {Type I LastRead 0 FirstWrite -1}
		weights_load_2190 {Type I LastRead 0 FirstWrite -1}
		weights_load_2191 {Type I LastRead 0 FirstWrite -1}
		weights_load_2192 {Type I LastRead 0 FirstWrite -1}
		weights_load_2193 {Type I LastRead 0 FirstWrite -1}
		weights_load_2194 {Type I LastRead 0 FirstWrite -1}
		weights_load_2195 {Type I LastRead 0 FirstWrite -1}
		weights_load_2196 {Type I LastRead 0 FirstWrite -1}
		weights_load_2197 {Type I LastRead 0 FirstWrite -1}
		weights_load_2198 {Type I LastRead 0 FirstWrite -1}
		weights_load_2199 {Type I LastRead 0 FirstWrite -1}
		weights_load_2200 {Type I LastRead 0 FirstWrite -1}
		weights_load_2201 {Type I LastRead 0 FirstWrite -1}
		weights_load_2202 {Type I LastRead 0 FirstWrite -1}
		weights_load_2203 {Type I LastRead 0 FirstWrite -1}
		weights_load_2204 {Type I LastRead 0 FirstWrite -1}
		weights_load_2205 {Type I LastRead 0 FirstWrite -1}
		weights_load_2206 {Type I LastRead 0 FirstWrite -1}
		weights_load_2207 {Type I LastRead 0 FirstWrite -1}
		weights_load_2208 {Type I LastRead 0 FirstWrite -1}
		weights_load_2209 {Type I LastRead 0 FirstWrite -1}
		weights_load_2210 {Type I LastRead 0 FirstWrite -1}
		weights_load_2211 {Type I LastRead 0 FirstWrite -1}
		weights_load_2212 {Type I LastRead 0 FirstWrite -1}
		weights_load_2213 {Type I LastRead 0 FirstWrite -1}
		weights_load_2214 {Type I LastRead 0 FirstWrite -1}
		weights_load_2215 {Type I LastRead 0 FirstWrite -1}
		weights_load_2216 {Type I LastRead 0 FirstWrite -1}
		weights_load_2217 {Type I LastRead 0 FirstWrite -1}
		weights_load_2218 {Type I LastRead 0 FirstWrite -1}
		weights_load_2219 {Type I LastRead 0 FirstWrite -1}
		weights_load_2220 {Type I LastRead 0 FirstWrite -1}
		weights_load_2221 {Type I LastRead 0 FirstWrite -1}
		weights_load_2222 {Type I LastRead 0 FirstWrite -1}
		weights_load_2223 {Type I LastRead 0 FirstWrite -1}
		weights_load_2224 {Type I LastRead 0 FirstWrite -1}
		weights_load_2225 {Type I LastRead 0 FirstWrite -1}
		weights_load_2226 {Type I LastRead 0 FirstWrite -1}
		weights_load_2227 {Type I LastRead 0 FirstWrite -1}
		weights_load_2228 {Type I LastRead 0 FirstWrite -1}
		weights_load_2229 {Type I LastRead 0 FirstWrite -1}
		weights_load_2230 {Type I LastRead 0 FirstWrite -1}
		weights_load_2231 {Type I LastRead 0 FirstWrite -1}
		weights_load_2232 {Type I LastRead 0 FirstWrite -1}
		weights_load_2233 {Type I LastRead 0 FirstWrite -1}
		weights_load_2234 {Type I LastRead 0 FirstWrite -1}
		weights_load_2235 {Type I LastRead 0 FirstWrite -1}
		weights_load_2236 {Type I LastRead 0 FirstWrite -1}
		weights_load_2237 {Type I LastRead 0 FirstWrite -1}
		weights_load_2238 {Type I LastRead 0 FirstWrite -1}
		weights_load_2239 {Type I LastRead 0 FirstWrite -1}
		weights_load_2240 {Type I LastRead 0 FirstWrite -1}
		weights_load_2241 {Type I LastRead 0 FirstWrite -1}
		weights_load_2242 {Type I LastRead 0 FirstWrite -1}
		weights_load_2243 {Type I LastRead 0 FirstWrite -1}
		weights_load_2244 {Type I LastRead 0 FirstWrite -1}
		weights_load_2245 {Type I LastRead 0 FirstWrite -1}
		weights_load_2246 {Type I LastRead 0 FirstWrite -1}
		weights_load_2247 {Type I LastRead 0 FirstWrite -1}
		weights_load_2248 {Type I LastRead 0 FirstWrite -1}
		weights_load_2249 {Type I LastRead 0 FirstWrite -1}
		weights_load_2250 {Type I LastRead 0 FirstWrite -1}
		weights_load_2251 {Type I LastRead 0 FirstWrite -1}
		weights_load_2252 {Type I LastRead 0 FirstWrite -1}
		weights_load_2253 {Type I LastRead 0 FirstWrite -1}
		weights_load_2254 {Type I LastRead 0 FirstWrite -1}
		weights_load_2255 {Type I LastRead 0 FirstWrite -1}
		weights_load_2256 {Type I LastRead 0 FirstWrite -1}
		weights_load_2257 {Type I LastRead 0 FirstWrite -1}
		weights_load_2258 {Type I LastRead 0 FirstWrite -1}
		weights_load_2259 {Type I LastRead 0 FirstWrite -1}
		weights_load_2260 {Type I LastRead 0 FirstWrite -1}
		weights_load_2261 {Type I LastRead 0 FirstWrite -1}
		weights_load_2262 {Type I LastRead 0 FirstWrite -1}
		weights_load_2263 {Type I LastRead 0 FirstWrite -1}
		weights_load_2264 {Type I LastRead 0 FirstWrite -1}
		weights_load_2265 {Type I LastRead 0 FirstWrite -1}
		weights_load_2266 {Type I LastRead 0 FirstWrite -1}
		weights_load_2267 {Type I LastRead 0 FirstWrite -1}
		weights_load_2268 {Type I LastRead 0 FirstWrite -1}
		weights_load_2269 {Type I LastRead 0 FirstWrite -1}
		weights_load_2270 {Type I LastRead 0 FirstWrite -1}
		weights_load_2271 {Type I LastRead 0 FirstWrite -1}
		weights_load_2272 {Type I LastRead 0 FirstWrite -1}
		weights_load_2273 {Type I LastRead 0 FirstWrite -1}
		weights_load_2274 {Type I LastRead 0 FirstWrite -1}
		weights_load_2275 {Type I LastRead 0 FirstWrite -1}
		weights_load_2276 {Type I LastRead 0 FirstWrite -1}
		weights_load_2277 {Type I LastRead 0 FirstWrite -1}
		weights_load_2278 {Type I LastRead 0 FirstWrite -1}
		weights_load_2279 {Type I LastRead 0 FirstWrite -1}
		weights_load_2280 {Type I LastRead 0 FirstWrite -1}
		weights_load_2281 {Type I LastRead 0 FirstWrite -1}
		weights_load_2282 {Type I LastRead 0 FirstWrite -1}
		weights_load_2283 {Type I LastRead 0 FirstWrite -1}
		weights_load_2284 {Type I LastRead 0 FirstWrite -1}
		weights_load_2285 {Type I LastRead 0 FirstWrite -1}
		weights_load_2286 {Type I LastRead 0 FirstWrite -1}
		weights_load_2287 {Type I LastRead 0 FirstWrite -1}
		weights_load_2288 {Type I LastRead 0 FirstWrite -1}
		weights_load_2289 {Type I LastRead 0 FirstWrite -1}
		weights_load_2290 {Type I LastRead 0 FirstWrite -1}
		weights_load_2291 {Type I LastRead 0 FirstWrite -1}
		weights_load_2292 {Type I LastRead 0 FirstWrite -1}
		weights_load_2293 {Type I LastRead 0 FirstWrite -1}
		weights_load_2294 {Type I LastRead 0 FirstWrite -1}
		weights_load_2295 {Type I LastRead 0 FirstWrite -1}
		weights_load_2296 {Type I LastRead 0 FirstWrite -1}
		weights_load_2297 {Type I LastRead 0 FirstWrite -1}
		weights_load_2298 {Type I LastRead 0 FirstWrite -1}
		weights_load_2299 {Type I LastRead 0 FirstWrite -1}
		weights_load_2300 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_6 { ap_fifo {  { conv2d_64_padded_window_stream_6_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_6_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_6_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_6_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_6_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_6 { ap_fifo {  { in_channel_map_stream_6_din fifo_port_we 1 32 }  { in_channel_map_stream_6_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_6_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_6_full_n fifo_status 0 1 }  { in_channel_map_stream_6_write fifo_data 1 1 } } }
}

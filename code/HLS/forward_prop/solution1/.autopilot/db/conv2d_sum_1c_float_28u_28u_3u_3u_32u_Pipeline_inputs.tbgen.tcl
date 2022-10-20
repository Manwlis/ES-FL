set moduleName conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {conv2d_sum_1c<float, 28u, 28u, 3u, 3u, 32u>_Pipeline_inputs}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_32_padded_window_stream int 288 regular {fifo 0 volatile }  }
	{ weights_load float 32 regular  }
	{ weights_load_18401 float 32 regular  }
	{ weights_load_18402 float 32 regular  }
	{ weights_load_18403 float 32 regular  }
	{ weights_load_18404 float 32 regular  }
	{ weights_load_18405 float 32 regular  }
	{ weights_load_18406 float 32 regular  }
	{ weights_load_18407 float 32 regular  }
	{ weights_load_18408 float 32 regular  }
	{ temp_sum float 32 regular  }
	{ kernel_sums136 int 32 regular {fifo 1 volatile }  }
	{ weights_load_18409 float 32 regular  }
	{ weights_load_18410 float 32 regular  }
	{ weights_load_18411 float 32 regular  }
	{ weights_load_18412 float 32 regular  }
	{ weights_load_18413 float 32 regular  }
	{ weights_load_18414 float 32 regular  }
	{ weights_load_18415 float 32 regular  }
	{ weights_load_18416 float 32 regular  }
	{ weights_load_18417 float 32 regular  }
	{ temp_sum_4066 float 32 regular  }
	{ weights_load_18418 float 32 regular  }
	{ weights_load_18419 float 32 regular  }
	{ weights_load_18420 float 32 regular  }
	{ weights_load_18421 float 32 regular  }
	{ weights_load_18422 float 32 regular  }
	{ weights_load_18423 float 32 regular  }
	{ weights_load_18424 float 32 regular  }
	{ weights_load_18425 float 32 regular  }
	{ weights_load_18426 float 32 regular  }
	{ temp_sum_4068 float 32 regular  }
	{ weights_load_18427 float 32 regular  }
	{ weights_load_18428 float 32 regular  }
	{ weights_load_18429 float 32 regular  }
	{ weights_load_18430 float 32 regular  }
	{ weights_load_18431 float 32 regular  }
	{ weights_load_18432 float 32 regular  }
	{ weights_load_18433 float 32 regular  }
	{ weights_load_18434 float 32 regular  }
	{ weights_load_18435 float 32 regular  }
	{ temp_sum_4070 float 32 regular  }
	{ weights_load_18436 float 32 regular  }
	{ weights_load_18437 float 32 regular  }
	{ weights_load_18438 float 32 regular  }
	{ weights_load_18439 float 32 regular  }
	{ weights_load_18440 float 32 regular  }
	{ weights_load_18441 float 32 regular  }
	{ weights_load_18442 float 32 regular  }
	{ weights_load_18443 float 32 regular  }
	{ weights_load_18444 float 32 regular  }
	{ temp_sum_4072 float 32 regular  }
	{ weights_load_18445 float 32 regular  }
	{ weights_load_18446 float 32 regular  }
	{ weights_load_18447 float 32 regular  }
	{ weights_load_18448 float 32 regular  }
	{ weights_load_18449 float 32 regular  }
	{ weights_load_18450 float 32 regular  }
	{ weights_load_18451 float 32 regular  }
	{ weights_load_18452 float 32 regular  }
	{ weights_load_18453 float 32 regular  }
	{ temp_sum_4074 float 32 regular  }
	{ weights_load_18454 float 32 regular  }
	{ weights_load_18455 float 32 regular  }
	{ weights_load_18456 float 32 regular  }
	{ weights_load_18457 float 32 regular  }
	{ weights_load_18458 float 32 regular  }
	{ weights_load_18459 float 32 regular  }
	{ weights_load_18460 float 32 regular  }
	{ weights_load_18461 float 32 regular  }
	{ weights_load_18462 float 32 regular  }
	{ temp_sum_4076 float 32 regular  }
	{ weights_load_18463 float 32 regular  }
	{ weights_load_18464 float 32 regular  }
	{ weights_load_18465 float 32 regular  }
	{ weights_load_18466 float 32 regular  }
	{ weights_load_18467 float 32 regular  }
	{ weights_load_18468 float 32 regular  }
	{ weights_load_18469 float 32 regular  }
	{ weights_load_18470 float 32 regular  }
	{ weights_load_18471 float 32 regular  }
	{ temp_sum_4078 float 32 regular  }
	{ weights_load_18472 float 32 regular  }
	{ weights_load_18473 float 32 regular  }
	{ weights_load_18474 float 32 regular  }
	{ weights_load_18475 float 32 regular  }
	{ weights_load_18476 float 32 regular  }
	{ weights_load_18477 float 32 regular  }
	{ weights_load_18478 float 32 regular  }
	{ weights_load_18479 float 32 regular  }
	{ weights_load_18480 float 32 regular  }
	{ temp_sum_4080 float 32 regular  }
	{ weights_load_18481 float 32 regular  }
	{ weights_load_18482 float 32 regular  }
	{ weights_load_18483 float 32 regular  }
	{ weights_load_18484 float 32 regular  }
	{ weights_load_18485 float 32 regular  }
	{ weights_load_18486 float 32 regular  }
	{ weights_load_18487 float 32 regular  }
	{ weights_load_18488 float 32 regular  }
	{ weights_load_18489 float 32 regular  }
	{ temp_sum_4082 float 32 regular  }
	{ weights_load_18490 float 32 regular  }
	{ weights_load_18491 float 32 regular  }
	{ weights_load_18492 float 32 regular  }
	{ weights_load_18493 float 32 regular  }
	{ weights_load_18494 float 32 regular  }
	{ weights_load_18495 float 32 regular  }
	{ weights_load_18496 float 32 regular  }
	{ weights_load_18497 float 32 regular  }
	{ weights_load_18498 float 32 regular  }
	{ temp_sum_4084 float 32 regular  }
	{ weights_load_18499 float 32 regular  }
	{ weights_load_18500 float 32 regular  }
	{ weights_load_18501 float 32 regular  }
	{ weights_load_18502 float 32 regular  }
	{ weights_load_18503 float 32 regular  }
	{ weights_load_18504 float 32 regular  }
	{ weights_load_18505 float 32 regular  }
	{ weights_load_18506 float 32 regular  }
	{ weights_load_18507 float 32 regular  }
	{ temp_sum_4086 float 32 regular  }
	{ weights_load_18508 float 32 regular  }
	{ weights_load_18509 float 32 regular  }
	{ weights_load_18510 float 32 regular  }
	{ weights_load_18511 float 32 regular  }
	{ weights_load_18512 float 32 regular  }
	{ weights_load_18513 float 32 regular  }
	{ weights_load_18514 float 32 regular  }
	{ weights_load_18515 float 32 regular  }
	{ weights_load_18516 float 32 regular  }
	{ temp_sum_4088 float 32 regular  }
	{ weights_load_18517 float 32 regular  }
	{ weights_load_18518 float 32 regular  }
	{ weights_load_18519 float 32 regular  }
	{ weights_load_18520 float 32 regular  }
	{ weights_load_18521 float 32 regular  }
	{ weights_load_18522 float 32 regular  }
	{ weights_load_18523 float 32 regular  }
	{ weights_load_18524 float 32 regular  }
	{ weights_load_18525 float 32 regular  }
	{ temp_sum_4090 float 32 regular  }
	{ weights_load_18526 float 32 regular  }
	{ weights_load_18527 float 32 regular  }
	{ weights_load_18528 float 32 regular  }
	{ weights_load_18529 float 32 regular  }
	{ weights_load_18530 float 32 regular  }
	{ weights_load_18531 float 32 regular  }
	{ weights_load_18532 float 32 regular  }
	{ weights_load_18533 float 32 regular  }
	{ weights_load_18534 float 32 regular  }
	{ temp_sum_4092 float 32 regular  }
	{ weights_load_18535 float 32 regular  }
	{ weights_load_18536 float 32 regular  }
	{ weights_load_18537 float 32 regular  }
	{ weights_load_18538 float 32 regular  }
	{ weights_load_18539 float 32 regular  }
	{ weights_load_18540 float 32 regular  }
	{ weights_load_18541 float 32 regular  }
	{ weights_load_18542 float 32 regular  }
	{ weights_load_18543 float 32 regular  }
	{ temp_sum_4094 float 32 regular  }
	{ weights_load_18544 float 32 regular  }
	{ weights_load_18545 float 32 regular  }
	{ weights_load_18546 float 32 regular  }
	{ weights_load_18547 float 32 regular  }
	{ weights_load_18548 float 32 regular  }
	{ weights_load_18549 float 32 regular  }
	{ weights_load_18550 float 32 regular  }
	{ weights_load_18551 float 32 regular  }
	{ weights_load_18552 float 32 regular  }
	{ temp_sum_4096 float 32 regular  }
	{ weights_load_18553 float 32 regular  }
	{ weights_load_18554 float 32 regular  }
	{ weights_load_18555 float 32 regular  }
	{ weights_load_18556 float 32 regular  }
	{ weights_load_18557 float 32 regular  }
	{ weights_load_18558 float 32 regular  }
	{ weights_load_18559 float 32 regular  }
	{ weights_load_18560 float 32 regular  }
	{ weights_load_18561 float 32 regular  }
	{ temp_sum_4098 float 32 regular  }
	{ weights_load_18562 float 32 regular  }
	{ weights_load_18563 float 32 regular  }
	{ weights_load_18564 float 32 regular  }
	{ weights_load_18565 float 32 regular  }
	{ weights_load_18566 float 32 regular  }
	{ weights_load_18567 float 32 regular  }
	{ weights_load_18568 float 32 regular  }
	{ weights_load_18569 float 32 regular  }
	{ weights_load_18570 float 32 regular  }
	{ temp_sum_4100 float 32 regular  }
	{ weights_load_18571 float 32 regular  }
	{ weights_load_18572 float 32 regular  }
	{ weights_load_18573 float 32 regular  }
	{ weights_load_18574 float 32 regular  }
	{ weights_load_18575 float 32 regular  }
	{ weights_load_18576 float 32 regular  }
	{ weights_load_18577 float 32 regular  }
	{ weights_load_18578 float 32 regular  }
	{ weights_load_18579 float 32 regular  }
	{ temp_sum_4102 float 32 regular  }
	{ weights_load_18580 float 32 regular  }
	{ weights_load_18581 float 32 regular  }
	{ weights_load_18582 float 32 regular  }
	{ weights_load_18583 float 32 regular  }
	{ weights_load_18584 float 32 regular  }
	{ weights_load_18585 float 32 regular  }
	{ weights_load_18586 float 32 regular  }
	{ weights_load_18587 float 32 regular  }
	{ weights_load_18588 float 32 regular  }
	{ temp_sum_4104 float 32 regular  }
	{ weights_load_18589 float 32 regular  }
	{ weights_load_18590 float 32 regular  }
	{ weights_load_18591 float 32 regular  }
	{ weights_load_18592 float 32 regular  }
	{ weights_load_18593 float 32 regular  }
	{ weights_load_18594 float 32 regular  }
	{ weights_load_18595 float 32 regular  }
	{ weights_load_18596 float 32 regular  }
	{ weights_load_18597 float 32 regular  }
	{ temp_sum_4106 float 32 regular  }
	{ weights_load_18598 float 32 regular  }
	{ weights_load_18599 float 32 regular  }
	{ weights_load_18600 float 32 regular  }
	{ weights_load_18601 float 32 regular  }
	{ weights_load_18602 float 32 regular  }
	{ weights_load_18603 float 32 regular  }
	{ weights_load_18604 float 32 regular  }
	{ weights_load_18605 float 32 regular  }
	{ weights_load_18606 float 32 regular  }
	{ temp_sum_4108 float 32 regular  }
	{ weights_load_18607 float 32 regular  }
	{ weights_load_18608 float 32 regular  }
	{ weights_load_18609 float 32 regular  }
	{ weights_load_18610 float 32 regular  }
	{ weights_load_18611 float 32 regular  }
	{ weights_load_18612 float 32 regular  }
	{ weights_load_18613 float 32 regular  }
	{ weights_load_18614 float 32 regular  }
	{ weights_load_18615 float 32 regular  }
	{ temp_sum_4110 float 32 regular  }
	{ weights_load_18616 float 32 regular  }
	{ weights_load_18617 float 32 regular  }
	{ weights_load_18618 float 32 regular  }
	{ weights_load_18619 float 32 regular  }
	{ weights_load_18620 float 32 regular  }
	{ weights_load_18621 float 32 regular  }
	{ weights_load_18622 float 32 regular  }
	{ weights_load_18623 float 32 regular  }
	{ weights_load_18624 float 32 regular  }
	{ temp_sum_4112 float 32 regular  }
	{ weights_load_18625 float 32 regular  }
	{ weights_load_18626 float 32 regular  }
	{ weights_load_18627 float 32 regular  }
	{ weights_load_18628 float 32 regular  }
	{ weights_load_18629 float 32 regular  }
	{ weights_load_18630 float 32 regular  }
	{ weights_load_18631 float 32 regular  }
	{ weights_load_18632 float 32 regular  }
	{ weights_load_18633 float 32 regular  }
	{ temp_sum_4114 float 32 regular  }
	{ weights_load_18634 float 32 regular  }
	{ weights_load_18635 float 32 regular  }
	{ weights_load_18636 float 32 regular  }
	{ weights_load_18637 float 32 regular  }
	{ weights_load_18638 float 32 regular  }
	{ weights_load_18639 float 32 regular  }
	{ weights_load_18640 float 32 regular  }
	{ weights_load_18641 float 32 regular  }
	{ weights_load_18642 float 32 regular  }
	{ temp_sum_4116 float 32 regular  }
	{ weights_load_18643 float 32 regular  }
	{ weights_load_18644 float 32 regular  }
	{ weights_load_18645 float 32 regular  }
	{ weights_load_18646 float 32 regular  }
	{ weights_load_18647 float 32 regular  }
	{ weights_load_18648 float 32 regular  }
	{ weights_load_18649 float 32 regular  }
	{ weights_load_18650 float 32 regular  }
	{ weights_load_18651 float 32 regular  }
	{ temp_sum_4118 float 32 regular  }
	{ weights_load_18652 float 32 regular  }
	{ weights_load_18653 float 32 regular  }
	{ weights_load_18654 float 32 regular  }
	{ weights_load_18655 float 32 regular  }
	{ weights_load_18656 float 32 regular  }
	{ weights_load_18657 float 32 regular  }
	{ weights_load_18658 float 32 regular  }
	{ weights_load_18659 float 32 regular  }
	{ weights_load_18660 float 32 regular  }
	{ temp_sum_4120 float 32 regular  }
	{ weights_load_18661 float 32 regular  }
	{ weights_load_18662 float 32 regular  }
	{ weights_load_18663 float 32 regular  }
	{ weights_load_18664 float 32 regular  }
	{ weights_load_18665 float 32 regular  }
	{ weights_load_18666 float 32 regular  }
	{ weights_load_18667 float 32 regular  }
	{ weights_load_18668 float 32 regular  }
	{ weights_load_18669 float 32 regular  }
	{ temp_sum_4122 float 32 regular  }
	{ weights_load_18670 float 32 regular  }
	{ weights_load_18671 float 32 regular  }
	{ weights_load_18672 float 32 regular  }
	{ weights_load_18673 float 32 regular  }
	{ weights_load_18674 float 32 regular  }
	{ weights_load_18675 float 32 regular  }
	{ weights_load_18676 float 32 regular  }
	{ weights_load_18677 float 32 regular  }
	{ weights_load_18678 float 32 regular  }
	{ temp_sum_4124 float 32 regular  }
	{ weights_load_18679 float 32 regular  }
	{ weights_load_18680 float 32 regular  }
	{ weights_load_18681 float 32 regular  }
	{ weights_load_18682 float 32 regular  }
	{ weights_load_18683 float 32 regular  }
	{ weights_load_18684 float 32 regular  }
	{ weights_load_18685 float 32 regular  }
	{ weights_load_18686 float 32 regular  }
	{ weights_load_18687 float 32 regular  }
	{ temp_sum_4126 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_32_padded_window_stream", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18401", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18402", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18403", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18404", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18405", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18406", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18407", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18408", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_sums136", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_load_18409", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18410", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18411", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18412", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18413", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18414", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18415", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18416", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18417", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4066", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18418", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18419", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18420", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18421", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18422", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18423", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18424", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18425", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18426", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4068", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18427", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18428", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18429", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18430", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18431", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18432", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18433", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18434", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18435", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4070", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18436", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18437", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18438", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18439", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18440", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18441", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18442", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18443", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18444", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4072", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18445", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18446", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18447", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18448", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18449", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18450", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18451", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18452", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18453", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4074", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18454", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18455", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18456", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18457", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18458", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18459", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18460", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18461", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18462", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4076", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18463", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18464", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18465", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18466", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18467", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18468", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18469", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18470", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18471", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4078", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18472", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18473", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18474", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18475", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18476", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18477", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18478", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18479", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18480", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4080", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18481", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18482", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18483", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18484", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18485", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18486", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18487", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18488", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18489", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4082", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18490", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18491", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18492", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18493", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18494", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18495", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18496", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18497", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18498", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4084", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18499", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18500", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18501", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18502", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18503", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18504", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18505", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18506", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18507", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4086", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18508", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18509", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18510", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18511", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18512", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18513", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18514", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18515", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18516", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4088", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18517", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18518", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18519", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18520", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18521", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18522", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18523", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18524", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18525", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4090", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18526", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18527", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18528", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18529", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18530", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18531", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18532", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18533", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18534", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4092", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18535", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18536", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18537", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18538", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18539", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18540", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18541", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18542", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18543", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4094", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18544", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18545", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18546", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18547", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18548", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18549", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18550", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18551", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18552", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4096", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18553", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18554", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18555", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18556", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18557", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18558", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18559", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18560", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18561", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4098", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18562", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18563", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18564", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18565", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18566", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18567", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18568", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18569", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18570", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4100", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18571", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18572", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18573", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18574", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18575", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18576", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18577", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18578", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18579", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4102", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18580", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18581", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18582", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18583", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18584", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18585", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18586", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18587", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18588", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4104", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18589", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18590", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18591", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18592", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18593", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18594", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18595", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18596", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18597", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4106", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18598", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18599", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18600", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18601", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18602", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18603", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18604", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18605", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18606", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4108", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18607", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18608", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18609", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18610", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18611", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18612", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18613", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18614", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18615", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4110", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18616", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18617", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18618", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18619", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18620", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18621", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18622", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18623", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18624", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4112", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18625", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18626", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18627", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18628", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18629", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18630", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18631", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18632", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18633", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4114", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18634", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18635", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18636", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18637", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18638", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18639", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18640", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18641", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18642", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4116", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18643", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18644", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18645", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18646", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18647", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18648", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18649", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18650", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18651", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4118", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18652", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18653", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18654", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18655", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18656", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18657", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18658", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18659", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18660", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4120", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18661", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18662", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18663", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18664", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18665", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18666", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18667", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18668", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18669", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4122", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18670", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18671", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18672", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18673", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18674", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18675", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18676", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18677", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18678", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4124", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18679", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18680", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18681", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18682", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18683", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18684", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18685", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18686", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_18687", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_sum_4126", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 336
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ kernel_sums136_din sc_out sc_lv 32 signal 11 } 
	{ kernel_sums136_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ kernel_sums136_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ kernel_sums136_full_n sc_in sc_logic 1 signal 11 } 
	{ kernel_sums136_write sc_out sc_logic 1 signal 11 } 
	{ conv2d_32_padded_window_stream_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_32_padded_window_stream_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_32_padded_window_stream_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_32_padded_window_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_32_padded_window_stream_read sc_out sc_logic 1 signal 0 } 
	{ weights_load sc_in sc_lv 32 signal 1 } 
	{ weights_load_18401 sc_in sc_lv 32 signal 2 } 
	{ weights_load_18402 sc_in sc_lv 32 signal 3 } 
	{ weights_load_18403 sc_in sc_lv 32 signal 4 } 
	{ weights_load_18404 sc_in sc_lv 32 signal 5 } 
	{ weights_load_18405 sc_in sc_lv 32 signal 6 } 
	{ weights_load_18406 sc_in sc_lv 32 signal 7 } 
	{ weights_load_18407 sc_in sc_lv 32 signal 8 } 
	{ weights_load_18408 sc_in sc_lv 32 signal 9 } 
	{ temp_sum sc_in sc_lv 32 signal 10 } 
	{ weights_load_18409 sc_in sc_lv 32 signal 12 } 
	{ weights_load_18410 sc_in sc_lv 32 signal 13 } 
	{ weights_load_18411 sc_in sc_lv 32 signal 14 } 
	{ weights_load_18412 sc_in sc_lv 32 signal 15 } 
	{ weights_load_18413 sc_in sc_lv 32 signal 16 } 
	{ weights_load_18414 sc_in sc_lv 32 signal 17 } 
	{ weights_load_18415 sc_in sc_lv 32 signal 18 } 
	{ weights_load_18416 sc_in sc_lv 32 signal 19 } 
	{ weights_load_18417 sc_in sc_lv 32 signal 20 } 
	{ temp_sum_4066 sc_in sc_lv 32 signal 21 } 
	{ weights_load_18418 sc_in sc_lv 32 signal 22 } 
	{ weights_load_18419 sc_in sc_lv 32 signal 23 } 
	{ weights_load_18420 sc_in sc_lv 32 signal 24 } 
	{ weights_load_18421 sc_in sc_lv 32 signal 25 } 
	{ weights_load_18422 sc_in sc_lv 32 signal 26 } 
	{ weights_load_18423 sc_in sc_lv 32 signal 27 } 
	{ weights_load_18424 sc_in sc_lv 32 signal 28 } 
	{ weights_load_18425 sc_in sc_lv 32 signal 29 } 
	{ weights_load_18426 sc_in sc_lv 32 signal 30 } 
	{ temp_sum_4068 sc_in sc_lv 32 signal 31 } 
	{ weights_load_18427 sc_in sc_lv 32 signal 32 } 
	{ weights_load_18428 sc_in sc_lv 32 signal 33 } 
	{ weights_load_18429 sc_in sc_lv 32 signal 34 } 
	{ weights_load_18430 sc_in sc_lv 32 signal 35 } 
	{ weights_load_18431 sc_in sc_lv 32 signal 36 } 
	{ weights_load_18432 sc_in sc_lv 32 signal 37 } 
	{ weights_load_18433 sc_in sc_lv 32 signal 38 } 
	{ weights_load_18434 sc_in sc_lv 32 signal 39 } 
	{ weights_load_18435 sc_in sc_lv 32 signal 40 } 
	{ temp_sum_4070 sc_in sc_lv 32 signal 41 } 
	{ weights_load_18436 sc_in sc_lv 32 signal 42 } 
	{ weights_load_18437 sc_in sc_lv 32 signal 43 } 
	{ weights_load_18438 sc_in sc_lv 32 signal 44 } 
	{ weights_load_18439 sc_in sc_lv 32 signal 45 } 
	{ weights_load_18440 sc_in sc_lv 32 signal 46 } 
	{ weights_load_18441 sc_in sc_lv 32 signal 47 } 
	{ weights_load_18442 sc_in sc_lv 32 signal 48 } 
	{ weights_load_18443 sc_in sc_lv 32 signal 49 } 
	{ weights_load_18444 sc_in sc_lv 32 signal 50 } 
	{ temp_sum_4072 sc_in sc_lv 32 signal 51 } 
	{ weights_load_18445 sc_in sc_lv 32 signal 52 } 
	{ weights_load_18446 sc_in sc_lv 32 signal 53 } 
	{ weights_load_18447 sc_in sc_lv 32 signal 54 } 
	{ weights_load_18448 sc_in sc_lv 32 signal 55 } 
	{ weights_load_18449 sc_in sc_lv 32 signal 56 } 
	{ weights_load_18450 sc_in sc_lv 32 signal 57 } 
	{ weights_load_18451 sc_in sc_lv 32 signal 58 } 
	{ weights_load_18452 sc_in sc_lv 32 signal 59 } 
	{ weights_load_18453 sc_in sc_lv 32 signal 60 } 
	{ temp_sum_4074 sc_in sc_lv 32 signal 61 } 
	{ weights_load_18454 sc_in sc_lv 32 signal 62 } 
	{ weights_load_18455 sc_in sc_lv 32 signal 63 } 
	{ weights_load_18456 sc_in sc_lv 32 signal 64 } 
	{ weights_load_18457 sc_in sc_lv 32 signal 65 } 
	{ weights_load_18458 sc_in sc_lv 32 signal 66 } 
	{ weights_load_18459 sc_in sc_lv 32 signal 67 } 
	{ weights_load_18460 sc_in sc_lv 32 signal 68 } 
	{ weights_load_18461 sc_in sc_lv 32 signal 69 } 
	{ weights_load_18462 sc_in sc_lv 32 signal 70 } 
	{ temp_sum_4076 sc_in sc_lv 32 signal 71 } 
	{ weights_load_18463 sc_in sc_lv 32 signal 72 } 
	{ weights_load_18464 sc_in sc_lv 32 signal 73 } 
	{ weights_load_18465 sc_in sc_lv 32 signal 74 } 
	{ weights_load_18466 sc_in sc_lv 32 signal 75 } 
	{ weights_load_18467 sc_in sc_lv 32 signal 76 } 
	{ weights_load_18468 sc_in sc_lv 32 signal 77 } 
	{ weights_load_18469 sc_in sc_lv 32 signal 78 } 
	{ weights_load_18470 sc_in sc_lv 32 signal 79 } 
	{ weights_load_18471 sc_in sc_lv 32 signal 80 } 
	{ temp_sum_4078 sc_in sc_lv 32 signal 81 } 
	{ weights_load_18472 sc_in sc_lv 32 signal 82 } 
	{ weights_load_18473 sc_in sc_lv 32 signal 83 } 
	{ weights_load_18474 sc_in sc_lv 32 signal 84 } 
	{ weights_load_18475 sc_in sc_lv 32 signal 85 } 
	{ weights_load_18476 sc_in sc_lv 32 signal 86 } 
	{ weights_load_18477 sc_in sc_lv 32 signal 87 } 
	{ weights_load_18478 sc_in sc_lv 32 signal 88 } 
	{ weights_load_18479 sc_in sc_lv 32 signal 89 } 
	{ weights_load_18480 sc_in sc_lv 32 signal 90 } 
	{ temp_sum_4080 sc_in sc_lv 32 signal 91 } 
	{ weights_load_18481 sc_in sc_lv 32 signal 92 } 
	{ weights_load_18482 sc_in sc_lv 32 signal 93 } 
	{ weights_load_18483 sc_in sc_lv 32 signal 94 } 
	{ weights_load_18484 sc_in sc_lv 32 signal 95 } 
	{ weights_load_18485 sc_in sc_lv 32 signal 96 } 
	{ weights_load_18486 sc_in sc_lv 32 signal 97 } 
	{ weights_load_18487 sc_in sc_lv 32 signal 98 } 
	{ weights_load_18488 sc_in sc_lv 32 signal 99 } 
	{ weights_load_18489 sc_in sc_lv 32 signal 100 } 
	{ temp_sum_4082 sc_in sc_lv 32 signal 101 } 
	{ weights_load_18490 sc_in sc_lv 32 signal 102 } 
	{ weights_load_18491 sc_in sc_lv 32 signal 103 } 
	{ weights_load_18492 sc_in sc_lv 32 signal 104 } 
	{ weights_load_18493 sc_in sc_lv 32 signal 105 } 
	{ weights_load_18494 sc_in sc_lv 32 signal 106 } 
	{ weights_load_18495 sc_in sc_lv 32 signal 107 } 
	{ weights_load_18496 sc_in sc_lv 32 signal 108 } 
	{ weights_load_18497 sc_in sc_lv 32 signal 109 } 
	{ weights_load_18498 sc_in sc_lv 32 signal 110 } 
	{ temp_sum_4084 sc_in sc_lv 32 signal 111 } 
	{ weights_load_18499 sc_in sc_lv 32 signal 112 } 
	{ weights_load_18500 sc_in sc_lv 32 signal 113 } 
	{ weights_load_18501 sc_in sc_lv 32 signal 114 } 
	{ weights_load_18502 sc_in sc_lv 32 signal 115 } 
	{ weights_load_18503 sc_in sc_lv 32 signal 116 } 
	{ weights_load_18504 sc_in sc_lv 32 signal 117 } 
	{ weights_load_18505 sc_in sc_lv 32 signal 118 } 
	{ weights_load_18506 sc_in sc_lv 32 signal 119 } 
	{ weights_load_18507 sc_in sc_lv 32 signal 120 } 
	{ temp_sum_4086 sc_in sc_lv 32 signal 121 } 
	{ weights_load_18508 sc_in sc_lv 32 signal 122 } 
	{ weights_load_18509 sc_in sc_lv 32 signal 123 } 
	{ weights_load_18510 sc_in sc_lv 32 signal 124 } 
	{ weights_load_18511 sc_in sc_lv 32 signal 125 } 
	{ weights_load_18512 sc_in sc_lv 32 signal 126 } 
	{ weights_load_18513 sc_in sc_lv 32 signal 127 } 
	{ weights_load_18514 sc_in sc_lv 32 signal 128 } 
	{ weights_load_18515 sc_in sc_lv 32 signal 129 } 
	{ weights_load_18516 sc_in sc_lv 32 signal 130 } 
	{ temp_sum_4088 sc_in sc_lv 32 signal 131 } 
	{ weights_load_18517 sc_in sc_lv 32 signal 132 } 
	{ weights_load_18518 sc_in sc_lv 32 signal 133 } 
	{ weights_load_18519 sc_in sc_lv 32 signal 134 } 
	{ weights_load_18520 sc_in sc_lv 32 signal 135 } 
	{ weights_load_18521 sc_in sc_lv 32 signal 136 } 
	{ weights_load_18522 sc_in sc_lv 32 signal 137 } 
	{ weights_load_18523 sc_in sc_lv 32 signal 138 } 
	{ weights_load_18524 sc_in sc_lv 32 signal 139 } 
	{ weights_load_18525 sc_in sc_lv 32 signal 140 } 
	{ temp_sum_4090 sc_in sc_lv 32 signal 141 } 
	{ weights_load_18526 sc_in sc_lv 32 signal 142 } 
	{ weights_load_18527 sc_in sc_lv 32 signal 143 } 
	{ weights_load_18528 sc_in sc_lv 32 signal 144 } 
	{ weights_load_18529 sc_in sc_lv 32 signal 145 } 
	{ weights_load_18530 sc_in sc_lv 32 signal 146 } 
	{ weights_load_18531 sc_in sc_lv 32 signal 147 } 
	{ weights_load_18532 sc_in sc_lv 32 signal 148 } 
	{ weights_load_18533 sc_in sc_lv 32 signal 149 } 
	{ weights_load_18534 sc_in sc_lv 32 signal 150 } 
	{ temp_sum_4092 sc_in sc_lv 32 signal 151 } 
	{ weights_load_18535 sc_in sc_lv 32 signal 152 } 
	{ weights_load_18536 sc_in sc_lv 32 signal 153 } 
	{ weights_load_18537 sc_in sc_lv 32 signal 154 } 
	{ weights_load_18538 sc_in sc_lv 32 signal 155 } 
	{ weights_load_18539 sc_in sc_lv 32 signal 156 } 
	{ weights_load_18540 sc_in sc_lv 32 signal 157 } 
	{ weights_load_18541 sc_in sc_lv 32 signal 158 } 
	{ weights_load_18542 sc_in sc_lv 32 signal 159 } 
	{ weights_load_18543 sc_in sc_lv 32 signal 160 } 
	{ temp_sum_4094 sc_in sc_lv 32 signal 161 } 
	{ weights_load_18544 sc_in sc_lv 32 signal 162 } 
	{ weights_load_18545 sc_in sc_lv 32 signal 163 } 
	{ weights_load_18546 sc_in sc_lv 32 signal 164 } 
	{ weights_load_18547 sc_in sc_lv 32 signal 165 } 
	{ weights_load_18548 sc_in sc_lv 32 signal 166 } 
	{ weights_load_18549 sc_in sc_lv 32 signal 167 } 
	{ weights_load_18550 sc_in sc_lv 32 signal 168 } 
	{ weights_load_18551 sc_in sc_lv 32 signal 169 } 
	{ weights_load_18552 sc_in sc_lv 32 signal 170 } 
	{ temp_sum_4096 sc_in sc_lv 32 signal 171 } 
	{ weights_load_18553 sc_in sc_lv 32 signal 172 } 
	{ weights_load_18554 sc_in sc_lv 32 signal 173 } 
	{ weights_load_18555 sc_in sc_lv 32 signal 174 } 
	{ weights_load_18556 sc_in sc_lv 32 signal 175 } 
	{ weights_load_18557 sc_in sc_lv 32 signal 176 } 
	{ weights_load_18558 sc_in sc_lv 32 signal 177 } 
	{ weights_load_18559 sc_in sc_lv 32 signal 178 } 
	{ weights_load_18560 sc_in sc_lv 32 signal 179 } 
	{ weights_load_18561 sc_in sc_lv 32 signal 180 } 
	{ temp_sum_4098 sc_in sc_lv 32 signal 181 } 
	{ weights_load_18562 sc_in sc_lv 32 signal 182 } 
	{ weights_load_18563 sc_in sc_lv 32 signal 183 } 
	{ weights_load_18564 sc_in sc_lv 32 signal 184 } 
	{ weights_load_18565 sc_in sc_lv 32 signal 185 } 
	{ weights_load_18566 sc_in sc_lv 32 signal 186 } 
	{ weights_load_18567 sc_in sc_lv 32 signal 187 } 
	{ weights_load_18568 sc_in sc_lv 32 signal 188 } 
	{ weights_load_18569 sc_in sc_lv 32 signal 189 } 
	{ weights_load_18570 sc_in sc_lv 32 signal 190 } 
	{ temp_sum_4100 sc_in sc_lv 32 signal 191 } 
	{ weights_load_18571 sc_in sc_lv 32 signal 192 } 
	{ weights_load_18572 sc_in sc_lv 32 signal 193 } 
	{ weights_load_18573 sc_in sc_lv 32 signal 194 } 
	{ weights_load_18574 sc_in sc_lv 32 signal 195 } 
	{ weights_load_18575 sc_in sc_lv 32 signal 196 } 
	{ weights_load_18576 sc_in sc_lv 32 signal 197 } 
	{ weights_load_18577 sc_in sc_lv 32 signal 198 } 
	{ weights_load_18578 sc_in sc_lv 32 signal 199 } 
	{ weights_load_18579 sc_in sc_lv 32 signal 200 } 
	{ temp_sum_4102 sc_in sc_lv 32 signal 201 } 
	{ weights_load_18580 sc_in sc_lv 32 signal 202 } 
	{ weights_load_18581 sc_in sc_lv 32 signal 203 } 
	{ weights_load_18582 sc_in sc_lv 32 signal 204 } 
	{ weights_load_18583 sc_in sc_lv 32 signal 205 } 
	{ weights_load_18584 sc_in sc_lv 32 signal 206 } 
	{ weights_load_18585 sc_in sc_lv 32 signal 207 } 
	{ weights_load_18586 sc_in sc_lv 32 signal 208 } 
	{ weights_load_18587 sc_in sc_lv 32 signal 209 } 
	{ weights_load_18588 sc_in sc_lv 32 signal 210 } 
	{ temp_sum_4104 sc_in sc_lv 32 signal 211 } 
	{ weights_load_18589 sc_in sc_lv 32 signal 212 } 
	{ weights_load_18590 sc_in sc_lv 32 signal 213 } 
	{ weights_load_18591 sc_in sc_lv 32 signal 214 } 
	{ weights_load_18592 sc_in sc_lv 32 signal 215 } 
	{ weights_load_18593 sc_in sc_lv 32 signal 216 } 
	{ weights_load_18594 sc_in sc_lv 32 signal 217 } 
	{ weights_load_18595 sc_in sc_lv 32 signal 218 } 
	{ weights_load_18596 sc_in sc_lv 32 signal 219 } 
	{ weights_load_18597 sc_in sc_lv 32 signal 220 } 
	{ temp_sum_4106 sc_in sc_lv 32 signal 221 } 
	{ weights_load_18598 sc_in sc_lv 32 signal 222 } 
	{ weights_load_18599 sc_in sc_lv 32 signal 223 } 
	{ weights_load_18600 sc_in sc_lv 32 signal 224 } 
	{ weights_load_18601 sc_in sc_lv 32 signal 225 } 
	{ weights_load_18602 sc_in sc_lv 32 signal 226 } 
	{ weights_load_18603 sc_in sc_lv 32 signal 227 } 
	{ weights_load_18604 sc_in sc_lv 32 signal 228 } 
	{ weights_load_18605 sc_in sc_lv 32 signal 229 } 
	{ weights_load_18606 sc_in sc_lv 32 signal 230 } 
	{ temp_sum_4108 sc_in sc_lv 32 signal 231 } 
	{ weights_load_18607 sc_in sc_lv 32 signal 232 } 
	{ weights_load_18608 sc_in sc_lv 32 signal 233 } 
	{ weights_load_18609 sc_in sc_lv 32 signal 234 } 
	{ weights_load_18610 sc_in sc_lv 32 signal 235 } 
	{ weights_load_18611 sc_in sc_lv 32 signal 236 } 
	{ weights_load_18612 sc_in sc_lv 32 signal 237 } 
	{ weights_load_18613 sc_in sc_lv 32 signal 238 } 
	{ weights_load_18614 sc_in sc_lv 32 signal 239 } 
	{ weights_load_18615 sc_in sc_lv 32 signal 240 } 
	{ temp_sum_4110 sc_in sc_lv 32 signal 241 } 
	{ weights_load_18616 sc_in sc_lv 32 signal 242 } 
	{ weights_load_18617 sc_in sc_lv 32 signal 243 } 
	{ weights_load_18618 sc_in sc_lv 32 signal 244 } 
	{ weights_load_18619 sc_in sc_lv 32 signal 245 } 
	{ weights_load_18620 sc_in sc_lv 32 signal 246 } 
	{ weights_load_18621 sc_in sc_lv 32 signal 247 } 
	{ weights_load_18622 sc_in sc_lv 32 signal 248 } 
	{ weights_load_18623 sc_in sc_lv 32 signal 249 } 
	{ weights_load_18624 sc_in sc_lv 32 signal 250 } 
	{ temp_sum_4112 sc_in sc_lv 32 signal 251 } 
	{ weights_load_18625 sc_in sc_lv 32 signal 252 } 
	{ weights_load_18626 sc_in sc_lv 32 signal 253 } 
	{ weights_load_18627 sc_in sc_lv 32 signal 254 } 
	{ weights_load_18628 sc_in sc_lv 32 signal 255 } 
	{ weights_load_18629 sc_in sc_lv 32 signal 256 } 
	{ weights_load_18630 sc_in sc_lv 32 signal 257 } 
	{ weights_load_18631 sc_in sc_lv 32 signal 258 } 
	{ weights_load_18632 sc_in sc_lv 32 signal 259 } 
	{ weights_load_18633 sc_in sc_lv 32 signal 260 } 
	{ temp_sum_4114 sc_in sc_lv 32 signal 261 } 
	{ weights_load_18634 sc_in sc_lv 32 signal 262 } 
	{ weights_load_18635 sc_in sc_lv 32 signal 263 } 
	{ weights_load_18636 sc_in sc_lv 32 signal 264 } 
	{ weights_load_18637 sc_in sc_lv 32 signal 265 } 
	{ weights_load_18638 sc_in sc_lv 32 signal 266 } 
	{ weights_load_18639 sc_in sc_lv 32 signal 267 } 
	{ weights_load_18640 sc_in sc_lv 32 signal 268 } 
	{ weights_load_18641 sc_in sc_lv 32 signal 269 } 
	{ weights_load_18642 sc_in sc_lv 32 signal 270 } 
	{ temp_sum_4116 sc_in sc_lv 32 signal 271 } 
	{ weights_load_18643 sc_in sc_lv 32 signal 272 } 
	{ weights_load_18644 sc_in sc_lv 32 signal 273 } 
	{ weights_load_18645 sc_in sc_lv 32 signal 274 } 
	{ weights_load_18646 sc_in sc_lv 32 signal 275 } 
	{ weights_load_18647 sc_in sc_lv 32 signal 276 } 
	{ weights_load_18648 sc_in sc_lv 32 signal 277 } 
	{ weights_load_18649 sc_in sc_lv 32 signal 278 } 
	{ weights_load_18650 sc_in sc_lv 32 signal 279 } 
	{ weights_load_18651 sc_in sc_lv 32 signal 280 } 
	{ temp_sum_4118 sc_in sc_lv 32 signal 281 } 
	{ weights_load_18652 sc_in sc_lv 32 signal 282 } 
	{ weights_load_18653 sc_in sc_lv 32 signal 283 } 
	{ weights_load_18654 sc_in sc_lv 32 signal 284 } 
	{ weights_load_18655 sc_in sc_lv 32 signal 285 } 
	{ weights_load_18656 sc_in sc_lv 32 signal 286 } 
	{ weights_load_18657 sc_in sc_lv 32 signal 287 } 
	{ weights_load_18658 sc_in sc_lv 32 signal 288 } 
	{ weights_load_18659 sc_in sc_lv 32 signal 289 } 
	{ weights_load_18660 sc_in sc_lv 32 signal 290 } 
	{ temp_sum_4120 sc_in sc_lv 32 signal 291 } 
	{ weights_load_18661 sc_in sc_lv 32 signal 292 } 
	{ weights_load_18662 sc_in sc_lv 32 signal 293 } 
	{ weights_load_18663 sc_in sc_lv 32 signal 294 } 
	{ weights_load_18664 sc_in sc_lv 32 signal 295 } 
	{ weights_load_18665 sc_in sc_lv 32 signal 296 } 
	{ weights_load_18666 sc_in sc_lv 32 signal 297 } 
	{ weights_load_18667 sc_in sc_lv 32 signal 298 } 
	{ weights_load_18668 sc_in sc_lv 32 signal 299 } 
	{ weights_load_18669 sc_in sc_lv 32 signal 300 } 
	{ temp_sum_4122 sc_in sc_lv 32 signal 301 } 
	{ weights_load_18670 sc_in sc_lv 32 signal 302 } 
	{ weights_load_18671 sc_in sc_lv 32 signal 303 } 
	{ weights_load_18672 sc_in sc_lv 32 signal 304 } 
	{ weights_load_18673 sc_in sc_lv 32 signal 305 } 
	{ weights_load_18674 sc_in sc_lv 32 signal 306 } 
	{ weights_load_18675 sc_in sc_lv 32 signal 307 } 
	{ weights_load_18676 sc_in sc_lv 32 signal 308 } 
	{ weights_load_18677 sc_in sc_lv 32 signal 309 } 
	{ weights_load_18678 sc_in sc_lv 32 signal 310 } 
	{ temp_sum_4124 sc_in sc_lv 32 signal 311 } 
	{ weights_load_18679 sc_in sc_lv 32 signal 312 } 
	{ weights_load_18680 sc_in sc_lv 32 signal 313 } 
	{ weights_load_18681 sc_in sc_lv 32 signal 314 } 
	{ weights_load_18682 sc_in sc_lv 32 signal 315 } 
	{ weights_load_18683 sc_in sc_lv 32 signal 316 } 
	{ weights_load_18684 sc_in sc_lv 32 signal 317 } 
	{ weights_load_18685 sc_in sc_lv 32 signal 318 } 
	{ weights_load_18686 sc_in sc_lv 32 signal 319 } 
	{ weights_load_18687 sc_in sc_lv 32 signal 320 } 
	{ temp_sum_4126 sc_in sc_lv 32 signal 321 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "kernel_sums136_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_sums136", "role": "din" }} , 
 	{ "name": "kernel_sums136_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kernel_sums136", "role": "num_data_valid" }} , 
 	{ "name": "kernel_sums136_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kernel_sums136", "role": "fifo_cap" }} , 
 	{ "name": "kernel_sums136_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_sums136", "role": "full_n" }} , 
 	{ "name": "kernel_sums136_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_sums136", "role": "write" }} , 
 	{ "name": "conv2d_32_padded_window_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "dout" }} , 
 	{ "name": "conv2d_32_padded_window_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_32_padded_window_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_32_padded_window_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "empty_n" }} , 
 	{ "name": "conv2d_32_padded_window_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "read" }} , 
 	{ "name": "weights_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load", "role": "default" }} , 
 	{ "name": "weights_load_18401", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18401", "role": "default" }} , 
 	{ "name": "weights_load_18402", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18402", "role": "default" }} , 
 	{ "name": "weights_load_18403", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18403", "role": "default" }} , 
 	{ "name": "weights_load_18404", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18404", "role": "default" }} , 
 	{ "name": "weights_load_18405", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18405", "role": "default" }} , 
 	{ "name": "weights_load_18406", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18406", "role": "default" }} , 
 	{ "name": "weights_load_18407", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18407", "role": "default" }} , 
 	{ "name": "weights_load_18408", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18408", "role": "default" }} , 
 	{ "name": "temp_sum", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum", "role": "default" }} , 
 	{ "name": "weights_load_18409", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18409", "role": "default" }} , 
 	{ "name": "weights_load_18410", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18410", "role": "default" }} , 
 	{ "name": "weights_load_18411", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18411", "role": "default" }} , 
 	{ "name": "weights_load_18412", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18412", "role": "default" }} , 
 	{ "name": "weights_load_18413", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18413", "role": "default" }} , 
 	{ "name": "weights_load_18414", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18414", "role": "default" }} , 
 	{ "name": "weights_load_18415", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18415", "role": "default" }} , 
 	{ "name": "weights_load_18416", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18416", "role": "default" }} , 
 	{ "name": "weights_load_18417", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18417", "role": "default" }} , 
 	{ "name": "temp_sum_4066", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4066", "role": "default" }} , 
 	{ "name": "weights_load_18418", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18418", "role": "default" }} , 
 	{ "name": "weights_load_18419", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18419", "role": "default" }} , 
 	{ "name": "weights_load_18420", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18420", "role": "default" }} , 
 	{ "name": "weights_load_18421", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18421", "role": "default" }} , 
 	{ "name": "weights_load_18422", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18422", "role": "default" }} , 
 	{ "name": "weights_load_18423", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18423", "role": "default" }} , 
 	{ "name": "weights_load_18424", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18424", "role": "default" }} , 
 	{ "name": "weights_load_18425", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18425", "role": "default" }} , 
 	{ "name": "weights_load_18426", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18426", "role": "default" }} , 
 	{ "name": "temp_sum_4068", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4068", "role": "default" }} , 
 	{ "name": "weights_load_18427", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18427", "role": "default" }} , 
 	{ "name": "weights_load_18428", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18428", "role": "default" }} , 
 	{ "name": "weights_load_18429", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18429", "role": "default" }} , 
 	{ "name": "weights_load_18430", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18430", "role": "default" }} , 
 	{ "name": "weights_load_18431", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18431", "role": "default" }} , 
 	{ "name": "weights_load_18432", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18432", "role": "default" }} , 
 	{ "name": "weights_load_18433", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18433", "role": "default" }} , 
 	{ "name": "weights_load_18434", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18434", "role": "default" }} , 
 	{ "name": "weights_load_18435", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18435", "role": "default" }} , 
 	{ "name": "temp_sum_4070", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4070", "role": "default" }} , 
 	{ "name": "weights_load_18436", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18436", "role": "default" }} , 
 	{ "name": "weights_load_18437", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18437", "role": "default" }} , 
 	{ "name": "weights_load_18438", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18438", "role": "default" }} , 
 	{ "name": "weights_load_18439", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18439", "role": "default" }} , 
 	{ "name": "weights_load_18440", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18440", "role": "default" }} , 
 	{ "name": "weights_load_18441", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18441", "role": "default" }} , 
 	{ "name": "weights_load_18442", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18442", "role": "default" }} , 
 	{ "name": "weights_load_18443", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18443", "role": "default" }} , 
 	{ "name": "weights_load_18444", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18444", "role": "default" }} , 
 	{ "name": "temp_sum_4072", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4072", "role": "default" }} , 
 	{ "name": "weights_load_18445", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18445", "role": "default" }} , 
 	{ "name": "weights_load_18446", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18446", "role": "default" }} , 
 	{ "name": "weights_load_18447", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18447", "role": "default" }} , 
 	{ "name": "weights_load_18448", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18448", "role": "default" }} , 
 	{ "name": "weights_load_18449", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18449", "role": "default" }} , 
 	{ "name": "weights_load_18450", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18450", "role": "default" }} , 
 	{ "name": "weights_load_18451", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18451", "role": "default" }} , 
 	{ "name": "weights_load_18452", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18452", "role": "default" }} , 
 	{ "name": "weights_load_18453", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18453", "role": "default" }} , 
 	{ "name": "temp_sum_4074", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4074", "role": "default" }} , 
 	{ "name": "weights_load_18454", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18454", "role": "default" }} , 
 	{ "name": "weights_load_18455", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18455", "role": "default" }} , 
 	{ "name": "weights_load_18456", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18456", "role": "default" }} , 
 	{ "name": "weights_load_18457", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18457", "role": "default" }} , 
 	{ "name": "weights_load_18458", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18458", "role": "default" }} , 
 	{ "name": "weights_load_18459", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18459", "role": "default" }} , 
 	{ "name": "weights_load_18460", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18460", "role": "default" }} , 
 	{ "name": "weights_load_18461", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18461", "role": "default" }} , 
 	{ "name": "weights_load_18462", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18462", "role": "default" }} , 
 	{ "name": "temp_sum_4076", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4076", "role": "default" }} , 
 	{ "name": "weights_load_18463", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18463", "role": "default" }} , 
 	{ "name": "weights_load_18464", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18464", "role": "default" }} , 
 	{ "name": "weights_load_18465", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18465", "role": "default" }} , 
 	{ "name": "weights_load_18466", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18466", "role": "default" }} , 
 	{ "name": "weights_load_18467", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18467", "role": "default" }} , 
 	{ "name": "weights_load_18468", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18468", "role": "default" }} , 
 	{ "name": "weights_load_18469", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18469", "role": "default" }} , 
 	{ "name": "weights_load_18470", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18470", "role": "default" }} , 
 	{ "name": "weights_load_18471", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18471", "role": "default" }} , 
 	{ "name": "temp_sum_4078", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4078", "role": "default" }} , 
 	{ "name": "weights_load_18472", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18472", "role": "default" }} , 
 	{ "name": "weights_load_18473", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18473", "role": "default" }} , 
 	{ "name": "weights_load_18474", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18474", "role": "default" }} , 
 	{ "name": "weights_load_18475", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18475", "role": "default" }} , 
 	{ "name": "weights_load_18476", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18476", "role": "default" }} , 
 	{ "name": "weights_load_18477", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18477", "role": "default" }} , 
 	{ "name": "weights_load_18478", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18478", "role": "default" }} , 
 	{ "name": "weights_load_18479", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18479", "role": "default" }} , 
 	{ "name": "weights_load_18480", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18480", "role": "default" }} , 
 	{ "name": "temp_sum_4080", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4080", "role": "default" }} , 
 	{ "name": "weights_load_18481", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18481", "role": "default" }} , 
 	{ "name": "weights_load_18482", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18482", "role": "default" }} , 
 	{ "name": "weights_load_18483", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18483", "role": "default" }} , 
 	{ "name": "weights_load_18484", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18484", "role": "default" }} , 
 	{ "name": "weights_load_18485", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18485", "role": "default" }} , 
 	{ "name": "weights_load_18486", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18486", "role": "default" }} , 
 	{ "name": "weights_load_18487", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18487", "role": "default" }} , 
 	{ "name": "weights_load_18488", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18488", "role": "default" }} , 
 	{ "name": "weights_load_18489", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18489", "role": "default" }} , 
 	{ "name": "temp_sum_4082", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4082", "role": "default" }} , 
 	{ "name": "weights_load_18490", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18490", "role": "default" }} , 
 	{ "name": "weights_load_18491", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18491", "role": "default" }} , 
 	{ "name": "weights_load_18492", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18492", "role": "default" }} , 
 	{ "name": "weights_load_18493", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18493", "role": "default" }} , 
 	{ "name": "weights_load_18494", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18494", "role": "default" }} , 
 	{ "name": "weights_load_18495", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18495", "role": "default" }} , 
 	{ "name": "weights_load_18496", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18496", "role": "default" }} , 
 	{ "name": "weights_load_18497", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18497", "role": "default" }} , 
 	{ "name": "weights_load_18498", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18498", "role": "default" }} , 
 	{ "name": "temp_sum_4084", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4084", "role": "default" }} , 
 	{ "name": "weights_load_18499", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18499", "role": "default" }} , 
 	{ "name": "weights_load_18500", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18500", "role": "default" }} , 
 	{ "name": "weights_load_18501", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18501", "role": "default" }} , 
 	{ "name": "weights_load_18502", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18502", "role": "default" }} , 
 	{ "name": "weights_load_18503", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18503", "role": "default" }} , 
 	{ "name": "weights_load_18504", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18504", "role": "default" }} , 
 	{ "name": "weights_load_18505", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18505", "role": "default" }} , 
 	{ "name": "weights_load_18506", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18506", "role": "default" }} , 
 	{ "name": "weights_load_18507", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18507", "role": "default" }} , 
 	{ "name": "temp_sum_4086", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4086", "role": "default" }} , 
 	{ "name": "weights_load_18508", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18508", "role": "default" }} , 
 	{ "name": "weights_load_18509", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18509", "role": "default" }} , 
 	{ "name": "weights_load_18510", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18510", "role": "default" }} , 
 	{ "name": "weights_load_18511", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18511", "role": "default" }} , 
 	{ "name": "weights_load_18512", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18512", "role": "default" }} , 
 	{ "name": "weights_load_18513", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18513", "role": "default" }} , 
 	{ "name": "weights_load_18514", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18514", "role": "default" }} , 
 	{ "name": "weights_load_18515", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18515", "role": "default" }} , 
 	{ "name": "weights_load_18516", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18516", "role": "default" }} , 
 	{ "name": "temp_sum_4088", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4088", "role": "default" }} , 
 	{ "name": "weights_load_18517", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18517", "role": "default" }} , 
 	{ "name": "weights_load_18518", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18518", "role": "default" }} , 
 	{ "name": "weights_load_18519", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18519", "role": "default" }} , 
 	{ "name": "weights_load_18520", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18520", "role": "default" }} , 
 	{ "name": "weights_load_18521", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18521", "role": "default" }} , 
 	{ "name": "weights_load_18522", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18522", "role": "default" }} , 
 	{ "name": "weights_load_18523", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18523", "role": "default" }} , 
 	{ "name": "weights_load_18524", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18524", "role": "default" }} , 
 	{ "name": "weights_load_18525", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18525", "role": "default" }} , 
 	{ "name": "temp_sum_4090", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4090", "role": "default" }} , 
 	{ "name": "weights_load_18526", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18526", "role": "default" }} , 
 	{ "name": "weights_load_18527", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18527", "role": "default" }} , 
 	{ "name": "weights_load_18528", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18528", "role": "default" }} , 
 	{ "name": "weights_load_18529", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18529", "role": "default" }} , 
 	{ "name": "weights_load_18530", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18530", "role": "default" }} , 
 	{ "name": "weights_load_18531", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18531", "role": "default" }} , 
 	{ "name": "weights_load_18532", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18532", "role": "default" }} , 
 	{ "name": "weights_load_18533", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18533", "role": "default" }} , 
 	{ "name": "weights_load_18534", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18534", "role": "default" }} , 
 	{ "name": "temp_sum_4092", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4092", "role": "default" }} , 
 	{ "name": "weights_load_18535", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18535", "role": "default" }} , 
 	{ "name": "weights_load_18536", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18536", "role": "default" }} , 
 	{ "name": "weights_load_18537", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18537", "role": "default" }} , 
 	{ "name": "weights_load_18538", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18538", "role": "default" }} , 
 	{ "name": "weights_load_18539", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18539", "role": "default" }} , 
 	{ "name": "weights_load_18540", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18540", "role": "default" }} , 
 	{ "name": "weights_load_18541", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18541", "role": "default" }} , 
 	{ "name": "weights_load_18542", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18542", "role": "default" }} , 
 	{ "name": "weights_load_18543", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18543", "role": "default" }} , 
 	{ "name": "temp_sum_4094", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4094", "role": "default" }} , 
 	{ "name": "weights_load_18544", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18544", "role": "default" }} , 
 	{ "name": "weights_load_18545", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18545", "role": "default" }} , 
 	{ "name": "weights_load_18546", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18546", "role": "default" }} , 
 	{ "name": "weights_load_18547", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18547", "role": "default" }} , 
 	{ "name": "weights_load_18548", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18548", "role": "default" }} , 
 	{ "name": "weights_load_18549", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18549", "role": "default" }} , 
 	{ "name": "weights_load_18550", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18550", "role": "default" }} , 
 	{ "name": "weights_load_18551", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18551", "role": "default" }} , 
 	{ "name": "weights_load_18552", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18552", "role": "default" }} , 
 	{ "name": "temp_sum_4096", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4096", "role": "default" }} , 
 	{ "name": "weights_load_18553", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18553", "role": "default" }} , 
 	{ "name": "weights_load_18554", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18554", "role": "default" }} , 
 	{ "name": "weights_load_18555", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18555", "role": "default" }} , 
 	{ "name": "weights_load_18556", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18556", "role": "default" }} , 
 	{ "name": "weights_load_18557", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18557", "role": "default" }} , 
 	{ "name": "weights_load_18558", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18558", "role": "default" }} , 
 	{ "name": "weights_load_18559", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18559", "role": "default" }} , 
 	{ "name": "weights_load_18560", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18560", "role": "default" }} , 
 	{ "name": "weights_load_18561", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18561", "role": "default" }} , 
 	{ "name": "temp_sum_4098", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4098", "role": "default" }} , 
 	{ "name": "weights_load_18562", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18562", "role": "default" }} , 
 	{ "name": "weights_load_18563", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18563", "role": "default" }} , 
 	{ "name": "weights_load_18564", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18564", "role": "default" }} , 
 	{ "name": "weights_load_18565", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18565", "role": "default" }} , 
 	{ "name": "weights_load_18566", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18566", "role": "default" }} , 
 	{ "name": "weights_load_18567", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18567", "role": "default" }} , 
 	{ "name": "weights_load_18568", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18568", "role": "default" }} , 
 	{ "name": "weights_load_18569", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18569", "role": "default" }} , 
 	{ "name": "weights_load_18570", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18570", "role": "default" }} , 
 	{ "name": "temp_sum_4100", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4100", "role": "default" }} , 
 	{ "name": "weights_load_18571", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18571", "role": "default" }} , 
 	{ "name": "weights_load_18572", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18572", "role": "default" }} , 
 	{ "name": "weights_load_18573", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18573", "role": "default" }} , 
 	{ "name": "weights_load_18574", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18574", "role": "default" }} , 
 	{ "name": "weights_load_18575", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18575", "role": "default" }} , 
 	{ "name": "weights_load_18576", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18576", "role": "default" }} , 
 	{ "name": "weights_load_18577", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18577", "role": "default" }} , 
 	{ "name": "weights_load_18578", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18578", "role": "default" }} , 
 	{ "name": "weights_load_18579", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18579", "role": "default" }} , 
 	{ "name": "temp_sum_4102", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4102", "role": "default" }} , 
 	{ "name": "weights_load_18580", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18580", "role": "default" }} , 
 	{ "name": "weights_load_18581", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18581", "role": "default" }} , 
 	{ "name": "weights_load_18582", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18582", "role": "default" }} , 
 	{ "name": "weights_load_18583", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18583", "role": "default" }} , 
 	{ "name": "weights_load_18584", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18584", "role": "default" }} , 
 	{ "name": "weights_load_18585", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18585", "role": "default" }} , 
 	{ "name": "weights_load_18586", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18586", "role": "default" }} , 
 	{ "name": "weights_load_18587", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18587", "role": "default" }} , 
 	{ "name": "weights_load_18588", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18588", "role": "default" }} , 
 	{ "name": "temp_sum_4104", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4104", "role": "default" }} , 
 	{ "name": "weights_load_18589", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18589", "role": "default" }} , 
 	{ "name": "weights_load_18590", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18590", "role": "default" }} , 
 	{ "name": "weights_load_18591", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18591", "role": "default" }} , 
 	{ "name": "weights_load_18592", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18592", "role": "default" }} , 
 	{ "name": "weights_load_18593", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18593", "role": "default" }} , 
 	{ "name": "weights_load_18594", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18594", "role": "default" }} , 
 	{ "name": "weights_load_18595", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18595", "role": "default" }} , 
 	{ "name": "weights_load_18596", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18596", "role": "default" }} , 
 	{ "name": "weights_load_18597", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18597", "role": "default" }} , 
 	{ "name": "temp_sum_4106", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4106", "role": "default" }} , 
 	{ "name": "weights_load_18598", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18598", "role": "default" }} , 
 	{ "name": "weights_load_18599", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18599", "role": "default" }} , 
 	{ "name": "weights_load_18600", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18600", "role": "default" }} , 
 	{ "name": "weights_load_18601", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18601", "role": "default" }} , 
 	{ "name": "weights_load_18602", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18602", "role": "default" }} , 
 	{ "name": "weights_load_18603", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18603", "role": "default" }} , 
 	{ "name": "weights_load_18604", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18604", "role": "default" }} , 
 	{ "name": "weights_load_18605", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18605", "role": "default" }} , 
 	{ "name": "weights_load_18606", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18606", "role": "default" }} , 
 	{ "name": "temp_sum_4108", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4108", "role": "default" }} , 
 	{ "name": "weights_load_18607", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18607", "role": "default" }} , 
 	{ "name": "weights_load_18608", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18608", "role": "default" }} , 
 	{ "name": "weights_load_18609", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18609", "role": "default" }} , 
 	{ "name": "weights_load_18610", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18610", "role": "default" }} , 
 	{ "name": "weights_load_18611", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18611", "role": "default" }} , 
 	{ "name": "weights_load_18612", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18612", "role": "default" }} , 
 	{ "name": "weights_load_18613", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18613", "role": "default" }} , 
 	{ "name": "weights_load_18614", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18614", "role": "default" }} , 
 	{ "name": "weights_load_18615", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18615", "role": "default" }} , 
 	{ "name": "temp_sum_4110", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4110", "role": "default" }} , 
 	{ "name": "weights_load_18616", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18616", "role": "default" }} , 
 	{ "name": "weights_load_18617", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18617", "role": "default" }} , 
 	{ "name": "weights_load_18618", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18618", "role": "default" }} , 
 	{ "name": "weights_load_18619", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18619", "role": "default" }} , 
 	{ "name": "weights_load_18620", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18620", "role": "default" }} , 
 	{ "name": "weights_load_18621", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18621", "role": "default" }} , 
 	{ "name": "weights_load_18622", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18622", "role": "default" }} , 
 	{ "name": "weights_load_18623", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18623", "role": "default" }} , 
 	{ "name": "weights_load_18624", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18624", "role": "default" }} , 
 	{ "name": "temp_sum_4112", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4112", "role": "default" }} , 
 	{ "name": "weights_load_18625", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18625", "role": "default" }} , 
 	{ "name": "weights_load_18626", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18626", "role": "default" }} , 
 	{ "name": "weights_load_18627", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18627", "role": "default" }} , 
 	{ "name": "weights_load_18628", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18628", "role": "default" }} , 
 	{ "name": "weights_load_18629", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18629", "role": "default" }} , 
 	{ "name": "weights_load_18630", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18630", "role": "default" }} , 
 	{ "name": "weights_load_18631", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18631", "role": "default" }} , 
 	{ "name": "weights_load_18632", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18632", "role": "default" }} , 
 	{ "name": "weights_load_18633", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18633", "role": "default" }} , 
 	{ "name": "temp_sum_4114", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4114", "role": "default" }} , 
 	{ "name": "weights_load_18634", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18634", "role": "default" }} , 
 	{ "name": "weights_load_18635", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18635", "role": "default" }} , 
 	{ "name": "weights_load_18636", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18636", "role": "default" }} , 
 	{ "name": "weights_load_18637", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18637", "role": "default" }} , 
 	{ "name": "weights_load_18638", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18638", "role": "default" }} , 
 	{ "name": "weights_load_18639", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18639", "role": "default" }} , 
 	{ "name": "weights_load_18640", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18640", "role": "default" }} , 
 	{ "name": "weights_load_18641", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18641", "role": "default" }} , 
 	{ "name": "weights_load_18642", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18642", "role": "default" }} , 
 	{ "name": "temp_sum_4116", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4116", "role": "default" }} , 
 	{ "name": "weights_load_18643", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18643", "role": "default" }} , 
 	{ "name": "weights_load_18644", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18644", "role": "default" }} , 
 	{ "name": "weights_load_18645", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18645", "role": "default" }} , 
 	{ "name": "weights_load_18646", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18646", "role": "default" }} , 
 	{ "name": "weights_load_18647", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18647", "role": "default" }} , 
 	{ "name": "weights_load_18648", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18648", "role": "default" }} , 
 	{ "name": "weights_load_18649", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18649", "role": "default" }} , 
 	{ "name": "weights_load_18650", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18650", "role": "default" }} , 
 	{ "name": "weights_load_18651", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18651", "role": "default" }} , 
 	{ "name": "temp_sum_4118", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4118", "role": "default" }} , 
 	{ "name": "weights_load_18652", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18652", "role": "default" }} , 
 	{ "name": "weights_load_18653", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18653", "role": "default" }} , 
 	{ "name": "weights_load_18654", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18654", "role": "default" }} , 
 	{ "name": "weights_load_18655", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18655", "role": "default" }} , 
 	{ "name": "weights_load_18656", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18656", "role": "default" }} , 
 	{ "name": "weights_load_18657", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18657", "role": "default" }} , 
 	{ "name": "weights_load_18658", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18658", "role": "default" }} , 
 	{ "name": "weights_load_18659", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18659", "role": "default" }} , 
 	{ "name": "weights_load_18660", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18660", "role": "default" }} , 
 	{ "name": "temp_sum_4120", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4120", "role": "default" }} , 
 	{ "name": "weights_load_18661", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18661", "role": "default" }} , 
 	{ "name": "weights_load_18662", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18662", "role": "default" }} , 
 	{ "name": "weights_load_18663", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18663", "role": "default" }} , 
 	{ "name": "weights_load_18664", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18664", "role": "default" }} , 
 	{ "name": "weights_load_18665", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18665", "role": "default" }} , 
 	{ "name": "weights_load_18666", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18666", "role": "default" }} , 
 	{ "name": "weights_load_18667", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18667", "role": "default" }} , 
 	{ "name": "weights_load_18668", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18668", "role": "default" }} , 
 	{ "name": "weights_load_18669", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18669", "role": "default" }} , 
 	{ "name": "temp_sum_4122", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4122", "role": "default" }} , 
 	{ "name": "weights_load_18670", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18670", "role": "default" }} , 
 	{ "name": "weights_load_18671", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18671", "role": "default" }} , 
 	{ "name": "weights_load_18672", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18672", "role": "default" }} , 
 	{ "name": "weights_load_18673", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18673", "role": "default" }} , 
 	{ "name": "weights_load_18674", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18674", "role": "default" }} , 
 	{ "name": "weights_load_18675", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18675", "role": "default" }} , 
 	{ "name": "weights_load_18676", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18676", "role": "default" }} , 
 	{ "name": "weights_load_18677", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18677", "role": "default" }} , 
 	{ "name": "weights_load_18678", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18678", "role": "default" }} , 
 	{ "name": "temp_sum_4124", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4124", "role": "default" }} , 
 	{ "name": "weights_load_18679", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18679", "role": "default" }} , 
 	{ "name": "weights_load_18680", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18680", "role": "default" }} , 
 	{ "name": "weights_load_18681", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18681", "role": "default" }} , 
 	{ "name": "weights_load_18682", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18682", "role": "default" }} , 
 	{ "name": "weights_load_18683", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18683", "role": "default" }} , 
 	{ "name": "weights_load_18684", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18684", "role": "default" }} , 
 	{ "name": "weights_load_18685", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18685", "role": "default" }} , 
 	{ "name": "weights_load_18686", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18686", "role": "default" }} , 
 	{ "name": "weights_load_18687", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_18687", "role": "default" }} , 
 	{ "name": "temp_sum_4126", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_sum_4126", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25131", "EstimateLatencyMax" : "25131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_32_padded_window_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_32_padded_window_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18401", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18402", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18403", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18404", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18405", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18406", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18407", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18408", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sums136", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "kernel_sums136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_18409", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18410", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18411", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18412", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18413", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18414", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18415", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18416", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18417", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4066", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18418", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18419", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18420", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18421", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18422", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18423", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18424", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18425", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18426", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4068", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18427", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18428", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18429", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18430", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18431", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18432", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18433", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18434", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18435", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4070", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18436", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18437", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18438", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18439", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18440", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18441", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18442", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18443", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18444", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4072", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18445", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18446", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18447", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18448", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18449", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18450", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18451", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18452", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18453", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4074", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18454", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18455", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18456", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18457", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18458", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18459", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18460", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18461", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18462", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4076", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18463", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18464", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18465", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18466", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18467", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18468", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18469", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18470", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18471", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4078", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18472", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18473", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18474", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18475", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18476", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18477", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18478", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18479", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18480", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4080", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18481", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18482", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18483", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18484", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18485", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18486", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18487", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18488", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18489", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4082", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18490", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18491", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18492", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18493", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18494", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18495", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18496", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18497", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18498", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4084", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18499", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18500", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18501", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18502", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18503", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18504", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18505", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18506", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18507", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4086", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18508", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18509", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18510", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18511", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18512", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18513", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18514", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18515", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18516", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4088", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18517", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18518", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18519", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18520", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18521", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18522", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18523", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18524", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18525", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4090", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18526", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18527", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18528", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18529", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18530", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18531", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18532", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18533", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18534", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4092", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18535", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18536", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18537", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18538", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18539", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18540", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18541", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18542", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18543", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4094", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18544", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18545", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18546", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18547", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18548", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18549", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18550", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18551", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18552", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4096", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18553", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18554", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18555", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18556", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18557", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18558", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18559", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18560", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18561", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4098", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18562", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18563", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18564", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18565", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18566", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18567", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18568", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18569", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18570", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4100", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18571", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18572", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18573", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18574", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18575", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18576", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18577", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18578", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18579", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4102", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18580", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18581", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18582", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18583", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18584", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18585", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18586", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18587", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18588", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4104", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18589", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18590", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18591", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18592", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18593", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18594", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18595", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18596", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18597", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4106", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18598", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18599", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18600", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18601", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18602", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18603", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18604", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18605", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18606", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4108", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18607", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18608", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18609", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18610", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18611", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18612", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18613", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18614", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18615", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4110", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18616", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18617", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18618", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18619", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18620", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18621", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18622", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18623", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18624", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4112", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18625", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18626", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18627", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18628", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18629", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18630", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18631", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18632", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18633", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4114", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18634", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18635", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18636", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18637", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18638", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18639", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18640", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18641", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18642", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4116", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18643", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18644", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18645", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18646", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18647", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18648", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18649", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18650", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18651", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4118", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18652", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18653", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18654", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18655", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18656", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18657", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18658", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18659", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18660", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4120", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18661", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18662", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18663", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18664", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18665", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18666", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18667", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18668", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18669", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4122", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18670", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18671", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18672", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18673", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18674", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18675", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18676", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18677", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18678", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4124", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18679", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18680", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18681", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18682", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18683", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18684", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18685", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18686", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18687", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4126", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U150", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U151", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U152", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U153", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U154", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U155", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U156", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U157", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U158", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U159", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U160", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U161", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U162", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U163", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U164", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U165", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U166", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U167", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs {
		conv2d_32_padded_window_stream {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_18401 {Type I LastRead 0 FirstWrite -1}
		weights_load_18402 {Type I LastRead 0 FirstWrite -1}
		weights_load_18403 {Type I LastRead 0 FirstWrite -1}
		weights_load_18404 {Type I LastRead 0 FirstWrite -1}
		weights_load_18405 {Type I LastRead 0 FirstWrite -1}
		weights_load_18406 {Type I LastRead 0 FirstWrite -1}
		weights_load_18407 {Type I LastRead 0 FirstWrite -1}
		weights_load_18408 {Type I LastRead 0 FirstWrite -1}
		temp_sum {Type I LastRead 0 FirstWrite -1}
		kernel_sums136 {Type O LastRead -1 FirstWrite 42}
		weights_load_18409 {Type I LastRead 0 FirstWrite -1}
		weights_load_18410 {Type I LastRead 0 FirstWrite -1}
		weights_load_18411 {Type I LastRead 0 FirstWrite -1}
		weights_load_18412 {Type I LastRead 0 FirstWrite -1}
		weights_load_18413 {Type I LastRead 0 FirstWrite -1}
		weights_load_18414 {Type I LastRead 0 FirstWrite -1}
		weights_load_18415 {Type I LastRead 0 FirstWrite -1}
		weights_load_18416 {Type I LastRead 0 FirstWrite -1}
		weights_load_18417 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4066 {Type I LastRead 0 FirstWrite -1}
		weights_load_18418 {Type I LastRead 0 FirstWrite -1}
		weights_load_18419 {Type I LastRead 0 FirstWrite -1}
		weights_load_18420 {Type I LastRead 0 FirstWrite -1}
		weights_load_18421 {Type I LastRead 0 FirstWrite -1}
		weights_load_18422 {Type I LastRead 0 FirstWrite -1}
		weights_load_18423 {Type I LastRead 0 FirstWrite -1}
		weights_load_18424 {Type I LastRead 0 FirstWrite -1}
		weights_load_18425 {Type I LastRead 0 FirstWrite -1}
		weights_load_18426 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4068 {Type I LastRead 0 FirstWrite -1}
		weights_load_18427 {Type I LastRead 0 FirstWrite -1}
		weights_load_18428 {Type I LastRead 0 FirstWrite -1}
		weights_load_18429 {Type I LastRead 0 FirstWrite -1}
		weights_load_18430 {Type I LastRead 0 FirstWrite -1}
		weights_load_18431 {Type I LastRead 0 FirstWrite -1}
		weights_load_18432 {Type I LastRead 0 FirstWrite -1}
		weights_load_18433 {Type I LastRead 0 FirstWrite -1}
		weights_load_18434 {Type I LastRead 0 FirstWrite -1}
		weights_load_18435 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4070 {Type I LastRead 0 FirstWrite -1}
		weights_load_18436 {Type I LastRead 0 FirstWrite -1}
		weights_load_18437 {Type I LastRead 0 FirstWrite -1}
		weights_load_18438 {Type I LastRead 0 FirstWrite -1}
		weights_load_18439 {Type I LastRead 0 FirstWrite -1}
		weights_load_18440 {Type I LastRead 0 FirstWrite -1}
		weights_load_18441 {Type I LastRead 0 FirstWrite -1}
		weights_load_18442 {Type I LastRead 0 FirstWrite -1}
		weights_load_18443 {Type I LastRead 0 FirstWrite -1}
		weights_load_18444 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4072 {Type I LastRead 0 FirstWrite -1}
		weights_load_18445 {Type I LastRead 0 FirstWrite -1}
		weights_load_18446 {Type I LastRead 0 FirstWrite -1}
		weights_load_18447 {Type I LastRead 0 FirstWrite -1}
		weights_load_18448 {Type I LastRead 0 FirstWrite -1}
		weights_load_18449 {Type I LastRead 0 FirstWrite -1}
		weights_load_18450 {Type I LastRead 0 FirstWrite -1}
		weights_load_18451 {Type I LastRead 0 FirstWrite -1}
		weights_load_18452 {Type I LastRead 0 FirstWrite -1}
		weights_load_18453 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4074 {Type I LastRead 0 FirstWrite -1}
		weights_load_18454 {Type I LastRead 0 FirstWrite -1}
		weights_load_18455 {Type I LastRead 0 FirstWrite -1}
		weights_load_18456 {Type I LastRead 0 FirstWrite -1}
		weights_load_18457 {Type I LastRead 0 FirstWrite -1}
		weights_load_18458 {Type I LastRead 0 FirstWrite -1}
		weights_load_18459 {Type I LastRead 0 FirstWrite -1}
		weights_load_18460 {Type I LastRead 0 FirstWrite -1}
		weights_load_18461 {Type I LastRead 0 FirstWrite -1}
		weights_load_18462 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4076 {Type I LastRead 0 FirstWrite -1}
		weights_load_18463 {Type I LastRead 0 FirstWrite -1}
		weights_load_18464 {Type I LastRead 0 FirstWrite -1}
		weights_load_18465 {Type I LastRead 0 FirstWrite -1}
		weights_load_18466 {Type I LastRead 0 FirstWrite -1}
		weights_load_18467 {Type I LastRead 0 FirstWrite -1}
		weights_load_18468 {Type I LastRead 0 FirstWrite -1}
		weights_load_18469 {Type I LastRead 0 FirstWrite -1}
		weights_load_18470 {Type I LastRead 0 FirstWrite -1}
		weights_load_18471 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4078 {Type I LastRead 0 FirstWrite -1}
		weights_load_18472 {Type I LastRead 0 FirstWrite -1}
		weights_load_18473 {Type I LastRead 0 FirstWrite -1}
		weights_load_18474 {Type I LastRead 0 FirstWrite -1}
		weights_load_18475 {Type I LastRead 0 FirstWrite -1}
		weights_load_18476 {Type I LastRead 0 FirstWrite -1}
		weights_load_18477 {Type I LastRead 0 FirstWrite -1}
		weights_load_18478 {Type I LastRead 0 FirstWrite -1}
		weights_load_18479 {Type I LastRead 0 FirstWrite -1}
		weights_load_18480 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4080 {Type I LastRead 0 FirstWrite -1}
		weights_load_18481 {Type I LastRead 0 FirstWrite -1}
		weights_load_18482 {Type I LastRead 0 FirstWrite -1}
		weights_load_18483 {Type I LastRead 0 FirstWrite -1}
		weights_load_18484 {Type I LastRead 0 FirstWrite -1}
		weights_load_18485 {Type I LastRead 0 FirstWrite -1}
		weights_load_18486 {Type I LastRead 0 FirstWrite -1}
		weights_load_18487 {Type I LastRead 0 FirstWrite -1}
		weights_load_18488 {Type I LastRead 0 FirstWrite -1}
		weights_load_18489 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4082 {Type I LastRead 0 FirstWrite -1}
		weights_load_18490 {Type I LastRead 0 FirstWrite -1}
		weights_load_18491 {Type I LastRead 0 FirstWrite -1}
		weights_load_18492 {Type I LastRead 0 FirstWrite -1}
		weights_load_18493 {Type I LastRead 0 FirstWrite -1}
		weights_load_18494 {Type I LastRead 0 FirstWrite -1}
		weights_load_18495 {Type I LastRead 0 FirstWrite -1}
		weights_load_18496 {Type I LastRead 0 FirstWrite -1}
		weights_load_18497 {Type I LastRead 0 FirstWrite -1}
		weights_load_18498 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4084 {Type I LastRead 0 FirstWrite -1}
		weights_load_18499 {Type I LastRead 0 FirstWrite -1}
		weights_load_18500 {Type I LastRead 0 FirstWrite -1}
		weights_load_18501 {Type I LastRead 0 FirstWrite -1}
		weights_load_18502 {Type I LastRead 0 FirstWrite -1}
		weights_load_18503 {Type I LastRead 0 FirstWrite -1}
		weights_load_18504 {Type I LastRead 0 FirstWrite -1}
		weights_load_18505 {Type I LastRead 0 FirstWrite -1}
		weights_load_18506 {Type I LastRead 0 FirstWrite -1}
		weights_load_18507 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4086 {Type I LastRead 0 FirstWrite -1}
		weights_load_18508 {Type I LastRead 0 FirstWrite -1}
		weights_load_18509 {Type I LastRead 0 FirstWrite -1}
		weights_load_18510 {Type I LastRead 0 FirstWrite -1}
		weights_load_18511 {Type I LastRead 0 FirstWrite -1}
		weights_load_18512 {Type I LastRead 0 FirstWrite -1}
		weights_load_18513 {Type I LastRead 0 FirstWrite -1}
		weights_load_18514 {Type I LastRead 0 FirstWrite -1}
		weights_load_18515 {Type I LastRead 0 FirstWrite -1}
		weights_load_18516 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4088 {Type I LastRead 0 FirstWrite -1}
		weights_load_18517 {Type I LastRead 0 FirstWrite -1}
		weights_load_18518 {Type I LastRead 0 FirstWrite -1}
		weights_load_18519 {Type I LastRead 0 FirstWrite -1}
		weights_load_18520 {Type I LastRead 0 FirstWrite -1}
		weights_load_18521 {Type I LastRead 0 FirstWrite -1}
		weights_load_18522 {Type I LastRead 0 FirstWrite -1}
		weights_load_18523 {Type I LastRead 0 FirstWrite -1}
		weights_load_18524 {Type I LastRead 0 FirstWrite -1}
		weights_load_18525 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4090 {Type I LastRead 0 FirstWrite -1}
		weights_load_18526 {Type I LastRead 0 FirstWrite -1}
		weights_load_18527 {Type I LastRead 0 FirstWrite -1}
		weights_load_18528 {Type I LastRead 0 FirstWrite -1}
		weights_load_18529 {Type I LastRead 0 FirstWrite -1}
		weights_load_18530 {Type I LastRead 0 FirstWrite -1}
		weights_load_18531 {Type I LastRead 0 FirstWrite -1}
		weights_load_18532 {Type I LastRead 0 FirstWrite -1}
		weights_load_18533 {Type I LastRead 0 FirstWrite -1}
		weights_load_18534 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4092 {Type I LastRead 0 FirstWrite -1}
		weights_load_18535 {Type I LastRead 0 FirstWrite -1}
		weights_load_18536 {Type I LastRead 0 FirstWrite -1}
		weights_load_18537 {Type I LastRead 0 FirstWrite -1}
		weights_load_18538 {Type I LastRead 0 FirstWrite -1}
		weights_load_18539 {Type I LastRead 0 FirstWrite -1}
		weights_load_18540 {Type I LastRead 0 FirstWrite -1}
		weights_load_18541 {Type I LastRead 0 FirstWrite -1}
		weights_load_18542 {Type I LastRead 0 FirstWrite -1}
		weights_load_18543 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4094 {Type I LastRead 0 FirstWrite -1}
		weights_load_18544 {Type I LastRead 0 FirstWrite -1}
		weights_load_18545 {Type I LastRead 0 FirstWrite -1}
		weights_load_18546 {Type I LastRead 0 FirstWrite -1}
		weights_load_18547 {Type I LastRead 0 FirstWrite -1}
		weights_load_18548 {Type I LastRead 0 FirstWrite -1}
		weights_load_18549 {Type I LastRead 0 FirstWrite -1}
		weights_load_18550 {Type I LastRead 0 FirstWrite -1}
		weights_load_18551 {Type I LastRead 0 FirstWrite -1}
		weights_load_18552 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4096 {Type I LastRead 0 FirstWrite -1}
		weights_load_18553 {Type I LastRead 0 FirstWrite -1}
		weights_load_18554 {Type I LastRead 0 FirstWrite -1}
		weights_load_18555 {Type I LastRead 0 FirstWrite -1}
		weights_load_18556 {Type I LastRead 0 FirstWrite -1}
		weights_load_18557 {Type I LastRead 0 FirstWrite -1}
		weights_load_18558 {Type I LastRead 0 FirstWrite -1}
		weights_load_18559 {Type I LastRead 0 FirstWrite -1}
		weights_load_18560 {Type I LastRead 0 FirstWrite -1}
		weights_load_18561 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4098 {Type I LastRead 0 FirstWrite -1}
		weights_load_18562 {Type I LastRead 0 FirstWrite -1}
		weights_load_18563 {Type I LastRead 0 FirstWrite -1}
		weights_load_18564 {Type I LastRead 0 FirstWrite -1}
		weights_load_18565 {Type I LastRead 0 FirstWrite -1}
		weights_load_18566 {Type I LastRead 0 FirstWrite -1}
		weights_load_18567 {Type I LastRead 0 FirstWrite -1}
		weights_load_18568 {Type I LastRead 0 FirstWrite -1}
		weights_load_18569 {Type I LastRead 0 FirstWrite -1}
		weights_load_18570 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4100 {Type I LastRead 0 FirstWrite -1}
		weights_load_18571 {Type I LastRead 0 FirstWrite -1}
		weights_load_18572 {Type I LastRead 0 FirstWrite -1}
		weights_load_18573 {Type I LastRead 0 FirstWrite -1}
		weights_load_18574 {Type I LastRead 0 FirstWrite -1}
		weights_load_18575 {Type I LastRead 0 FirstWrite -1}
		weights_load_18576 {Type I LastRead 0 FirstWrite -1}
		weights_load_18577 {Type I LastRead 0 FirstWrite -1}
		weights_load_18578 {Type I LastRead 0 FirstWrite -1}
		weights_load_18579 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4102 {Type I LastRead 0 FirstWrite -1}
		weights_load_18580 {Type I LastRead 0 FirstWrite -1}
		weights_load_18581 {Type I LastRead 0 FirstWrite -1}
		weights_load_18582 {Type I LastRead 0 FirstWrite -1}
		weights_load_18583 {Type I LastRead 0 FirstWrite -1}
		weights_load_18584 {Type I LastRead 0 FirstWrite -1}
		weights_load_18585 {Type I LastRead 0 FirstWrite -1}
		weights_load_18586 {Type I LastRead 0 FirstWrite -1}
		weights_load_18587 {Type I LastRead 0 FirstWrite -1}
		weights_load_18588 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4104 {Type I LastRead 0 FirstWrite -1}
		weights_load_18589 {Type I LastRead 0 FirstWrite -1}
		weights_load_18590 {Type I LastRead 0 FirstWrite -1}
		weights_load_18591 {Type I LastRead 0 FirstWrite -1}
		weights_load_18592 {Type I LastRead 0 FirstWrite -1}
		weights_load_18593 {Type I LastRead 0 FirstWrite -1}
		weights_load_18594 {Type I LastRead 0 FirstWrite -1}
		weights_load_18595 {Type I LastRead 0 FirstWrite -1}
		weights_load_18596 {Type I LastRead 0 FirstWrite -1}
		weights_load_18597 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4106 {Type I LastRead 0 FirstWrite -1}
		weights_load_18598 {Type I LastRead 0 FirstWrite -1}
		weights_load_18599 {Type I LastRead 0 FirstWrite -1}
		weights_load_18600 {Type I LastRead 0 FirstWrite -1}
		weights_load_18601 {Type I LastRead 0 FirstWrite -1}
		weights_load_18602 {Type I LastRead 0 FirstWrite -1}
		weights_load_18603 {Type I LastRead 0 FirstWrite -1}
		weights_load_18604 {Type I LastRead 0 FirstWrite -1}
		weights_load_18605 {Type I LastRead 0 FirstWrite -1}
		weights_load_18606 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4108 {Type I LastRead 0 FirstWrite -1}
		weights_load_18607 {Type I LastRead 0 FirstWrite -1}
		weights_load_18608 {Type I LastRead 0 FirstWrite -1}
		weights_load_18609 {Type I LastRead 0 FirstWrite -1}
		weights_load_18610 {Type I LastRead 0 FirstWrite -1}
		weights_load_18611 {Type I LastRead 0 FirstWrite -1}
		weights_load_18612 {Type I LastRead 0 FirstWrite -1}
		weights_load_18613 {Type I LastRead 0 FirstWrite -1}
		weights_load_18614 {Type I LastRead 0 FirstWrite -1}
		weights_load_18615 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4110 {Type I LastRead 0 FirstWrite -1}
		weights_load_18616 {Type I LastRead 0 FirstWrite -1}
		weights_load_18617 {Type I LastRead 0 FirstWrite -1}
		weights_load_18618 {Type I LastRead 0 FirstWrite -1}
		weights_load_18619 {Type I LastRead 0 FirstWrite -1}
		weights_load_18620 {Type I LastRead 0 FirstWrite -1}
		weights_load_18621 {Type I LastRead 0 FirstWrite -1}
		weights_load_18622 {Type I LastRead 0 FirstWrite -1}
		weights_load_18623 {Type I LastRead 0 FirstWrite -1}
		weights_load_18624 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4112 {Type I LastRead 0 FirstWrite -1}
		weights_load_18625 {Type I LastRead 0 FirstWrite -1}
		weights_load_18626 {Type I LastRead 0 FirstWrite -1}
		weights_load_18627 {Type I LastRead 0 FirstWrite -1}
		weights_load_18628 {Type I LastRead 0 FirstWrite -1}
		weights_load_18629 {Type I LastRead 0 FirstWrite -1}
		weights_load_18630 {Type I LastRead 0 FirstWrite -1}
		weights_load_18631 {Type I LastRead 0 FirstWrite -1}
		weights_load_18632 {Type I LastRead 0 FirstWrite -1}
		weights_load_18633 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4114 {Type I LastRead 0 FirstWrite -1}
		weights_load_18634 {Type I LastRead 0 FirstWrite -1}
		weights_load_18635 {Type I LastRead 0 FirstWrite -1}
		weights_load_18636 {Type I LastRead 0 FirstWrite -1}
		weights_load_18637 {Type I LastRead 0 FirstWrite -1}
		weights_load_18638 {Type I LastRead 0 FirstWrite -1}
		weights_load_18639 {Type I LastRead 0 FirstWrite -1}
		weights_load_18640 {Type I LastRead 0 FirstWrite -1}
		weights_load_18641 {Type I LastRead 0 FirstWrite -1}
		weights_load_18642 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4116 {Type I LastRead 0 FirstWrite -1}
		weights_load_18643 {Type I LastRead 0 FirstWrite -1}
		weights_load_18644 {Type I LastRead 0 FirstWrite -1}
		weights_load_18645 {Type I LastRead 0 FirstWrite -1}
		weights_load_18646 {Type I LastRead 0 FirstWrite -1}
		weights_load_18647 {Type I LastRead 0 FirstWrite -1}
		weights_load_18648 {Type I LastRead 0 FirstWrite -1}
		weights_load_18649 {Type I LastRead 0 FirstWrite -1}
		weights_load_18650 {Type I LastRead 0 FirstWrite -1}
		weights_load_18651 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4118 {Type I LastRead 0 FirstWrite -1}
		weights_load_18652 {Type I LastRead 0 FirstWrite -1}
		weights_load_18653 {Type I LastRead 0 FirstWrite -1}
		weights_load_18654 {Type I LastRead 0 FirstWrite -1}
		weights_load_18655 {Type I LastRead 0 FirstWrite -1}
		weights_load_18656 {Type I LastRead 0 FirstWrite -1}
		weights_load_18657 {Type I LastRead 0 FirstWrite -1}
		weights_load_18658 {Type I LastRead 0 FirstWrite -1}
		weights_load_18659 {Type I LastRead 0 FirstWrite -1}
		weights_load_18660 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4120 {Type I LastRead 0 FirstWrite -1}
		weights_load_18661 {Type I LastRead 0 FirstWrite -1}
		weights_load_18662 {Type I LastRead 0 FirstWrite -1}
		weights_load_18663 {Type I LastRead 0 FirstWrite -1}
		weights_load_18664 {Type I LastRead 0 FirstWrite -1}
		weights_load_18665 {Type I LastRead 0 FirstWrite -1}
		weights_load_18666 {Type I LastRead 0 FirstWrite -1}
		weights_load_18667 {Type I LastRead 0 FirstWrite -1}
		weights_load_18668 {Type I LastRead 0 FirstWrite -1}
		weights_load_18669 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4122 {Type I LastRead 0 FirstWrite -1}
		weights_load_18670 {Type I LastRead 0 FirstWrite -1}
		weights_load_18671 {Type I LastRead 0 FirstWrite -1}
		weights_load_18672 {Type I LastRead 0 FirstWrite -1}
		weights_load_18673 {Type I LastRead 0 FirstWrite -1}
		weights_load_18674 {Type I LastRead 0 FirstWrite -1}
		weights_load_18675 {Type I LastRead 0 FirstWrite -1}
		weights_load_18676 {Type I LastRead 0 FirstWrite -1}
		weights_load_18677 {Type I LastRead 0 FirstWrite -1}
		weights_load_18678 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4124 {Type I LastRead 0 FirstWrite -1}
		weights_load_18679 {Type I LastRead 0 FirstWrite -1}
		weights_load_18680 {Type I LastRead 0 FirstWrite -1}
		weights_load_18681 {Type I LastRead 0 FirstWrite -1}
		weights_load_18682 {Type I LastRead 0 FirstWrite -1}
		weights_load_18683 {Type I LastRead 0 FirstWrite -1}
		weights_load_18684 {Type I LastRead 0 FirstWrite -1}
		weights_load_18685 {Type I LastRead 0 FirstWrite -1}
		weights_load_18686 {Type I LastRead 0 FirstWrite -1}
		weights_load_18687 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4126 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25131", "Max" : "25131"}
	, {"Name" : "Interval", "Min" : "25131", "Max" : "25131"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	conv2d_32_padded_window_stream { ap_fifo {  { conv2d_32_padded_window_stream_dout fifo_port_we 0 288 }  { conv2d_32_padded_window_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_32_padded_window_stream_fifo_cap fifo_update 0 3 }  { conv2d_32_padded_window_stream_empty_n fifo_status 0 1 }  { conv2d_32_padded_window_stream_read fifo_data 1 1 } } }
	weights_load { ap_none {  { weights_load in_data 0 32 } } }
	weights_load_18401 { ap_none {  { weights_load_18401 in_data 0 32 } } }
	weights_load_18402 { ap_none {  { weights_load_18402 in_data 0 32 } } }
	weights_load_18403 { ap_none {  { weights_load_18403 in_data 0 32 } } }
	weights_load_18404 { ap_none {  { weights_load_18404 in_data 0 32 } } }
	weights_load_18405 { ap_none {  { weights_load_18405 in_data 0 32 } } }
	weights_load_18406 { ap_none {  { weights_load_18406 in_data 0 32 } } }
	weights_load_18407 { ap_none {  { weights_load_18407 in_data 0 32 } } }
	weights_load_18408 { ap_none {  { weights_load_18408 in_data 0 32 } } }
	temp_sum { ap_none {  { temp_sum in_data 0 32 } } }
	kernel_sums136 { ap_fifo {  { kernel_sums136_din fifo_port_we 1 32 }  { kernel_sums136_num_data_valid fifo_status_num_data_valid 0 3 }  { kernel_sums136_fifo_cap fifo_update 0 3 }  { kernel_sums136_full_n fifo_status 0 1 }  { kernel_sums136_write fifo_data 1 1 } } }
	weights_load_18409 { ap_none {  { weights_load_18409 in_data 0 32 } } }
	weights_load_18410 { ap_none {  { weights_load_18410 in_data 0 32 } } }
	weights_load_18411 { ap_none {  { weights_load_18411 in_data 0 32 } } }
	weights_load_18412 { ap_none {  { weights_load_18412 in_data 0 32 } } }
	weights_load_18413 { ap_none {  { weights_load_18413 in_data 0 32 } } }
	weights_load_18414 { ap_none {  { weights_load_18414 in_data 0 32 } } }
	weights_load_18415 { ap_none {  { weights_load_18415 in_data 0 32 } } }
	weights_load_18416 { ap_none {  { weights_load_18416 in_data 0 32 } } }
	weights_load_18417 { ap_none {  { weights_load_18417 in_data 0 32 } } }
	temp_sum_4066 { ap_none {  { temp_sum_4066 in_data 0 32 } } }
	weights_load_18418 { ap_none {  { weights_load_18418 in_data 0 32 } } }
	weights_load_18419 { ap_none {  { weights_load_18419 in_data 0 32 } } }
	weights_load_18420 { ap_none {  { weights_load_18420 in_data 0 32 } } }
	weights_load_18421 { ap_none {  { weights_load_18421 in_data 0 32 } } }
	weights_load_18422 { ap_none {  { weights_load_18422 in_data 0 32 } } }
	weights_load_18423 { ap_none {  { weights_load_18423 in_data 0 32 } } }
	weights_load_18424 { ap_none {  { weights_load_18424 in_data 0 32 } } }
	weights_load_18425 { ap_none {  { weights_load_18425 in_data 0 32 } } }
	weights_load_18426 { ap_none {  { weights_load_18426 in_data 0 32 } } }
	temp_sum_4068 { ap_none {  { temp_sum_4068 in_data 0 32 } } }
	weights_load_18427 { ap_none {  { weights_load_18427 in_data 0 32 } } }
	weights_load_18428 { ap_none {  { weights_load_18428 in_data 0 32 } } }
	weights_load_18429 { ap_none {  { weights_load_18429 in_data 0 32 } } }
	weights_load_18430 { ap_none {  { weights_load_18430 in_data 0 32 } } }
	weights_load_18431 { ap_none {  { weights_load_18431 in_data 0 32 } } }
	weights_load_18432 { ap_none {  { weights_load_18432 in_data 0 32 } } }
	weights_load_18433 { ap_none {  { weights_load_18433 in_data 0 32 } } }
	weights_load_18434 { ap_none {  { weights_load_18434 in_data 0 32 } } }
	weights_load_18435 { ap_none {  { weights_load_18435 in_data 0 32 } } }
	temp_sum_4070 { ap_none {  { temp_sum_4070 in_data 0 32 } } }
	weights_load_18436 { ap_none {  { weights_load_18436 in_data 0 32 } } }
	weights_load_18437 { ap_none {  { weights_load_18437 in_data 0 32 } } }
	weights_load_18438 { ap_none {  { weights_load_18438 in_data 0 32 } } }
	weights_load_18439 { ap_none {  { weights_load_18439 in_data 0 32 } } }
	weights_load_18440 { ap_none {  { weights_load_18440 in_data 0 32 } } }
	weights_load_18441 { ap_none {  { weights_load_18441 in_data 0 32 } } }
	weights_load_18442 { ap_none {  { weights_load_18442 in_data 0 32 } } }
	weights_load_18443 { ap_none {  { weights_load_18443 in_data 0 32 } } }
	weights_load_18444 { ap_none {  { weights_load_18444 in_data 0 32 } } }
	temp_sum_4072 { ap_none {  { temp_sum_4072 in_data 0 32 } } }
	weights_load_18445 { ap_none {  { weights_load_18445 in_data 0 32 } } }
	weights_load_18446 { ap_none {  { weights_load_18446 in_data 0 32 } } }
	weights_load_18447 { ap_none {  { weights_load_18447 in_data 0 32 } } }
	weights_load_18448 { ap_none {  { weights_load_18448 in_data 0 32 } } }
	weights_load_18449 { ap_none {  { weights_load_18449 in_data 0 32 } } }
	weights_load_18450 { ap_none {  { weights_load_18450 in_data 0 32 } } }
	weights_load_18451 { ap_none {  { weights_load_18451 in_data 0 32 } } }
	weights_load_18452 { ap_none {  { weights_load_18452 in_data 0 32 } } }
	weights_load_18453 { ap_none {  { weights_load_18453 in_data 0 32 } } }
	temp_sum_4074 { ap_none {  { temp_sum_4074 in_data 0 32 } } }
	weights_load_18454 { ap_none {  { weights_load_18454 in_data 0 32 } } }
	weights_load_18455 { ap_none {  { weights_load_18455 in_data 0 32 } } }
	weights_load_18456 { ap_none {  { weights_load_18456 in_data 0 32 } } }
	weights_load_18457 { ap_none {  { weights_load_18457 in_data 0 32 } } }
	weights_load_18458 { ap_none {  { weights_load_18458 in_data 0 32 } } }
	weights_load_18459 { ap_none {  { weights_load_18459 in_data 0 32 } } }
	weights_load_18460 { ap_none {  { weights_load_18460 in_data 0 32 } } }
	weights_load_18461 { ap_none {  { weights_load_18461 in_data 0 32 } } }
	weights_load_18462 { ap_none {  { weights_load_18462 in_data 0 32 } } }
	temp_sum_4076 { ap_none {  { temp_sum_4076 in_data 0 32 } } }
	weights_load_18463 { ap_none {  { weights_load_18463 in_data 0 32 } } }
	weights_load_18464 { ap_none {  { weights_load_18464 in_data 0 32 } } }
	weights_load_18465 { ap_none {  { weights_load_18465 in_data 0 32 } } }
	weights_load_18466 { ap_none {  { weights_load_18466 in_data 0 32 } } }
	weights_load_18467 { ap_none {  { weights_load_18467 in_data 0 32 } } }
	weights_load_18468 { ap_none {  { weights_load_18468 in_data 0 32 } } }
	weights_load_18469 { ap_none {  { weights_load_18469 in_data 0 32 } } }
	weights_load_18470 { ap_none {  { weights_load_18470 in_data 0 32 } } }
	weights_load_18471 { ap_none {  { weights_load_18471 in_data 0 32 } } }
	temp_sum_4078 { ap_none {  { temp_sum_4078 in_data 0 32 } } }
	weights_load_18472 { ap_none {  { weights_load_18472 in_data 0 32 } } }
	weights_load_18473 { ap_none {  { weights_load_18473 in_data 0 32 } } }
	weights_load_18474 { ap_none {  { weights_load_18474 in_data 0 32 } } }
	weights_load_18475 { ap_none {  { weights_load_18475 in_data 0 32 } } }
	weights_load_18476 { ap_none {  { weights_load_18476 in_data 0 32 } } }
	weights_load_18477 { ap_none {  { weights_load_18477 in_data 0 32 } } }
	weights_load_18478 { ap_none {  { weights_load_18478 in_data 0 32 } } }
	weights_load_18479 { ap_none {  { weights_load_18479 in_data 0 32 } } }
	weights_load_18480 { ap_none {  { weights_load_18480 in_data 0 32 } } }
	temp_sum_4080 { ap_none {  { temp_sum_4080 in_data 0 32 } } }
	weights_load_18481 { ap_none {  { weights_load_18481 in_data 0 32 } } }
	weights_load_18482 { ap_none {  { weights_load_18482 in_data 0 32 } } }
	weights_load_18483 { ap_none {  { weights_load_18483 in_data 0 32 } } }
	weights_load_18484 { ap_none {  { weights_load_18484 in_data 0 32 } } }
	weights_load_18485 { ap_none {  { weights_load_18485 in_data 0 32 } } }
	weights_load_18486 { ap_none {  { weights_load_18486 in_data 0 32 } } }
	weights_load_18487 { ap_none {  { weights_load_18487 in_data 0 32 } } }
	weights_load_18488 { ap_none {  { weights_load_18488 in_data 0 32 } } }
	weights_load_18489 { ap_none {  { weights_load_18489 in_data 0 32 } } }
	temp_sum_4082 { ap_none {  { temp_sum_4082 in_data 0 32 } } }
	weights_load_18490 { ap_none {  { weights_load_18490 in_data 0 32 } } }
	weights_load_18491 { ap_none {  { weights_load_18491 in_data 0 32 } } }
	weights_load_18492 { ap_none {  { weights_load_18492 in_data 0 32 } } }
	weights_load_18493 { ap_none {  { weights_load_18493 in_data 0 32 } } }
	weights_load_18494 { ap_none {  { weights_load_18494 in_data 0 32 } } }
	weights_load_18495 { ap_none {  { weights_load_18495 in_data 0 32 } } }
	weights_load_18496 { ap_none {  { weights_load_18496 in_data 0 32 } } }
	weights_load_18497 { ap_none {  { weights_load_18497 in_data 0 32 } } }
	weights_load_18498 { ap_none {  { weights_load_18498 in_data 0 32 } } }
	temp_sum_4084 { ap_none {  { temp_sum_4084 in_data 0 32 } } }
	weights_load_18499 { ap_none {  { weights_load_18499 in_data 0 32 } } }
	weights_load_18500 { ap_none {  { weights_load_18500 in_data 0 32 } } }
	weights_load_18501 { ap_none {  { weights_load_18501 in_data 0 32 } } }
	weights_load_18502 { ap_none {  { weights_load_18502 in_data 0 32 } } }
	weights_load_18503 { ap_none {  { weights_load_18503 in_data 0 32 } } }
	weights_load_18504 { ap_none {  { weights_load_18504 in_data 0 32 } } }
	weights_load_18505 { ap_none {  { weights_load_18505 in_data 0 32 } } }
	weights_load_18506 { ap_none {  { weights_load_18506 in_data 0 32 } } }
	weights_load_18507 { ap_none {  { weights_load_18507 in_data 0 32 } } }
	temp_sum_4086 { ap_none {  { temp_sum_4086 in_data 0 32 } } }
	weights_load_18508 { ap_none {  { weights_load_18508 in_data 0 32 } } }
	weights_load_18509 { ap_none {  { weights_load_18509 in_data 0 32 } } }
	weights_load_18510 { ap_none {  { weights_load_18510 in_data 0 32 } } }
	weights_load_18511 { ap_none {  { weights_load_18511 in_data 0 32 } } }
	weights_load_18512 { ap_none {  { weights_load_18512 in_data 0 32 } } }
	weights_load_18513 { ap_none {  { weights_load_18513 in_data 0 32 } } }
	weights_load_18514 { ap_none {  { weights_load_18514 in_data 0 32 } } }
	weights_load_18515 { ap_none {  { weights_load_18515 in_data 0 32 } } }
	weights_load_18516 { ap_none {  { weights_load_18516 in_data 0 32 } } }
	temp_sum_4088 { ap_none {  { temp_sum_4088 in_data 0 32 } } }
	weights_load_18517 { ap_none {  { weights_load_18517 in_data 0 32 } } }
	weights_load_18518 { ap_none {  { weights_load_18518 in_data 0 32 } } }
	weights_load_18519 { ap_none {  { weights_load_18519 in_data 0 32 } } }
	weights_load_18520 { ap_none {  { weights_load_18520 in_data 0 32 } } }
	weights_load_18521 { ap_none {  { weights_load_18521 in_data 0 32 } } }
	weights_load_18522 { ap_none {  { weights_load_18522 in_data 0 32 } } }
	weights_load_18523 { ap_none {  { weights_load_18523 in_data 0 32 } } }
	weights_load_18524 { ap_none {  { weights_load_18524 in_data 0 32 } } }
	weights_load_18525 { ap_none {  { weights_load_18525 in_data 0 32 } } }
	temp_sum_4090 { ap_none {  { temp_sum_4090 in_data 0 32 } } }
	weights_load_18526 { ap_none {  { weights_load_18526 in_data 0 32 } } }
	weights_load_18527 { ap_none {  { weights_load_18527 in_data 0 32 } } }
	weights_load_18528 { ap_none {  { weights_load_18528 in_data 0 32 } } }
	weights_load_18529 { ap_none {  { weights_load_18529 in_data 0 32 } } }
	weights_load_18530 { ap_none {  { weights_load_18530 in_data 0 32 } } }
	weights_load_18531 { ap_none {  { weights_load_18531 in_data 0 32 } } }
	weights_load_18532 { ap_none {  { weights_load_18532 in_data 0 32 } } }
	weights_load_18533 { ap_none {  { weights_load_18533 in_data 0 32 } } }
	weights_load_18534 { ap_none {  { weights_load_18534 in_data 0 32 } } }
	temp_sum_4092 { ap_none {  { temp_sum_4092 in_data 0 32 } } }
	weights_load_18535 { ap_none {  { weights_load_18535 in_data 0 32 } } }
	weights_load_18536 { ap_none {  { weights_load_18536 in_data 0 32 } } }
	weights_load_18537 { ap_none {  { weights_load_18537 in_data 0 32 } } }
	weights_load_18538 { ap_none {  { weights_load_18538 in_data 0 32 } } }
	weights_load_18539 { ap_none {  { weights_load_18539 in_data 0 32 } } }
	weights_load_18540 { ap_none {  { weights_load_18540 in_data 0 32 } } }
	weights_load_18541 { ap_none {  { weights_load_18541 in_data 0 32 } } }
	weights_load_18542 { ap_none {  { weights_load_18542 in_data 0 32 } } }
	weights_load_18543 { ap_none {  { weights_load_18543 in_data 0 32 } } }
	temp_sum_4094 { ap_none {  { temp_sum_4094 in_data 0 32 } } }
	weights_load_18544 { ap_none {  { weights_load_18544 in_data 0 32 } } }
	weights_load_18545 { ap_none {  { weights_load_18545 in_data 0 32 } } }
	weights_load_18546 { ap_none {  { weights_load_18546 in_data 0 32 } } }
	weights_load_18547 { ap_none {  { weights_load_18547 in_data 0 32 } } }
	weights_load_18548 { ap_none {  { weights_load_18548 in_data 0 32 } } }
	weights_load_18549 { ap_none {  { weights_load_18549 in_data 0 32 } } }
	weights_load_18550 { ap_none {  { weights_load_18550 in_data 0 32 } } }
	weights_load_18551 { ap_none {  { weights_load_18551 in_data 0 32 } } }
	weights_load_18552 { ap_none {  { weights_load_18552 in_data 0 32 } } }
	temp_sum_4096 { ap_none {  { temp_sum_4096 in_data 0 32 } } }
	weights_load_18553 { ap_none {  { weights_load_18553 in_data 0 32 } } }
	weights_load_18554 { ap_none {  { weights_load_18554 in_data 0 32 } } }
	weights_load_18555 { ap_none {  { weights_load_18555 in_data 0 32 } } }
	weights_load_18556 { ap_none {  { weights_load_18556 in_data 0 32 } } }
	weights_load_18557 { ap_none {  { weights_load_18557 in_data 0 32 } } }
	weights_load_18558 { ap_none {  { weights_load_18558 in_data 0 32 } } }
	weights_load_18559 { ap_none {  { weights_load_18559 in_data 0 32 } } }
	weights_load_18560 { ap_none {  { weights_load_18560 in_data 0 32 } } }
	weights_load_18561 { ap_none {  { weights_load_18561 in_data 0 32 } } }
	temp_sum_4098 { ap_none {  { temp_sum_4098 in_data 0 32 } } }
	weights_load_18562 { ap_none {  { weights_load_18562 in_data 0 32 } } }
	weights_load_18563 { ap_none {  { weights_load_18563 in_data 0 32 } } }
	weights_load_18564 { ap_none {  { weights_load_18564 in_data 0 32 } } }
	weights_load_18565 { ap_none {  { weights_load_18565 in_data 0 32 } } }
	weights_load_18566 { ap_none {  { weights_load_18566 in_data 0 32 } } }
	weights_load_18567 { ap_none {  { weights_load_18567 in_data 0 32 } } }
	weights_load_18568 { ap_none {  { weights_load_18568 in_data 0 32 } } }
	weights_load_18569 { ap_none {  { weights_load_18569 in_data 0 32 } } }
	weights_load_18570 { ap_none {  { weights_load_18570 in_data 0 32 } } }
	temp_sum_4100 { ap_none {  { temp_sum_4100 in_data 0 32 } } }
	weights_load_18571 { ap_none {  { weights_load_18571 in_data 0 32 } } }
	weights_load_18572 { ap_none {  { weights_load_18572 in_data 0 32 } } }
	weights_load_18573 { ap_none {  { weights_load_18573 in_data 0 32 } } }
	weights_load_18574 { ap_none {  { weights_load_18574 in_data 0 32 } } }
	weights_load_18575 { ap_none {  { weights_load_18575 in_data 0 32 } } }
	weights_load_18576 { ap_none {  { weights_load_18576 in_data 0 32 } } }
	weights_load_18577 { ap_none {  { weights_load_18577 in_data 0 32 } } }
	weights_load_18578 { ap_none {  { weights_load_18578 in_data 0 32 } } }
	weights_load_18579 { ap_none {  { weights_load_18579 in_data 0 32 } } }
	temp_sum_4102 { ap_none {  { temp_sum_4102 in_data 0 32 } } }
	weights_load_18580 { ap_none {  { weights_load_18580 in_data 0 32 } } }
	weights_load_18581 { ap_none {  { weights_load_18581 in_data 0 32 } } }
	weights_load_18582 { ap_none {  { weights_load_18582 in_data 0 32 } } }
	weights_load_18583 { ap_none {  { weights_load_18583 in_data 0 32 } } }
	weights_load_18584 { ap_none {  { weights_load_18584 in_data 0 32 } } }
	weights_load_18585 { ap_none {  { weights_load_18585 in_data 0 32 } } }
	weights_load_18586 { ap_none {  { weights_load_18586 in_data 0 32 } } }
	weights_load_18587 { ap_none {  { weights_load_18587 in_data 0 32 } } }
	weights_load_18588 { ap_none {  { weights_load_18588 in_data 0 32 } } }
	temp_sum_4104 { ap_none {  { temp_sum_4104 in_data 0 32 } } }
	weights_load_18589 { ap_none {  { weights_load_18589 in_data 0 32 } } }
	weights_load_18590 { ap_none {  { weights_load_18590 in_data 0 32 } } }
	weights_load_18591 { ap_none {  { weights_load_18591 in_data 0 32 } } }
	weights_load_18592 { ap_none {  { weights_load_18592 in_data 0 32 } } }
	weights_load_18593 { ap_none {  { weights_load_18593 in_data 0 32 } } }
	weights_load_18594 { ap_none {  { weights_load_18594 in_data 0 32 } } }
	weights_load_18595 { ap_none {  { weights_load_18595 in_data 0 32 } } }
	weights_load_18596 { ap_none {  { weights_load_18596 in_data 0 32 } } }
	weights_load_18597 { ap_none {  { weights_load_18597 in_data 0 32 } } }
	temp_sum_4106 { ap_none {  { temp_sum_4106 in_data 0 32 } } }
	weights_load_18598 { ap_none {  { weights_load_18598 in_data 0 32 } } }
	weights_load_18599 { ap_none {  { weights_load_18599 in_data 0 32 } } }
	weights_load_18600 { ap_none {  { weights_load_18600 in_data 0 32 } } }
	weights_load_18601 { ap_none {  { weights_load_18601 in_data 0 32 } } }
	weights_load_18602 { ap_none {  { weights_load_18602 in_data 0 32 } } }
	weights_load_18603 { ap_none {  { weights_load_18603 in_data 0 32 } } }
	weights_load_18604 { ap_none {  { weights_load_18604 in_data 0 32 } } }
	weights_load_18605 { ap_none {  { weights_load_18605 in_data 0 32 } } }
	weights_load_18606 { ap_none {  { weights_load_18606 in_data 0 32 } } }
	temp_sum_4108 { ap_none {  { temp_sum_4108 in_data 0 32 } } }
	weights_load_18607 { ap_none {  { weights_load_18607 in_data 0 32 } } }
	weights_load_18608 { ap_none {  { weights_load_18608 in_data 0 32 } } }
	weights_load_18609 { ap_none {  { weights_load_18609 in_data 0 32 } } }
	weights_load_18610 { ap_none {  { weights_load_18610 in_data 0 32 } } }
	weights_load_18611 { ap_none {  { weights_load_18611 in_data 0 32 } } }
	weights_load_18612 { ap_none {  { weights_load_18612 in_data 0 32 } } }
	weights_load_18613 { ap_none {  { weights_load_18613 in_data 0 32 } } }
	weights_load_18614 { ap_none {  { weights_load_18614 in_data 0 32 } } }
	weights_load_18615 { ap_none {  { weights_load_18615 in_data 0 32 } } }
	temp_sum_4110 { ap_none {  { temp_sum_4110 in_data 0 32 } } }
	weights_load_18616 { ap_none {  { weights_load_18616 in_data 0 32 } } }
	weights_load_18617 { ap_none {  { weights_load_18617 in_data 0 32 } } }
	weights_load_18618 { ap_none {  { weights_load_18618 in_data 0 32 } } }
	weights_load_18619 { ap_none {  { weights_load_18619 in_data 0 32 } } }
	weights_load_18620 { ap_none {  { weights_load_18620 in_data 0 32 } } }
	weights_load_18621 { ap_none {  { weights_load_18621 in_data 0 32 } } }
	weights_load_18622 { ap_none {  { weights_load_18622 in_data 0 32 } } }
	weights_load_18623 { ap_none {  { weights_load_18623 in_data 0 32 } } }
	weights_load_18624 { ap_none {  { weights_load_18624 in_data 0 32 } } }
	temp_sum_4112 { ap_none {  { temp_sum_4112 in_data 0 32 } } }
	weights_load_18625 { ap_none {  { weights_load_18625 in_data 0 32 } } }
	weights_load_18626 { ap_none {  { weights_load_18626 in_data 0 32 } } }
	weights_load_18627 { ap_none {  { weights_load_18627 in_data 0 32 } } }
	weights_load_18628 { ap_none {  { weights_load_18628 in_data 0 32 } } }
	weights_load_18629 { ap_none {  { weights_load_18629 in_data 0 32 } } }
	weights_load_18630 { ap_none {  { weights_load_18630 in_data 0 32 } } }
	weights_load_18631 { ap_none {  { weights_load_18631 in_data 0 32 } } }
	weights_load_18632 { ap_none {  { weights_load_18632 in_data 0 32 } } }
	weights_load_18633 { ap_none {  { weights_load_18633 in_data 0 32 } } }
	temp_sum_4114 { ap_none {  { temp_sum_4114 in_data 0 32 } } }
	weights_load_18634 { ap_none {  { weights_load_18634 in_data 0 32 } } }
	weights_load_18635 { ap_none {  { weights_load_18635 in_data 0 32 } } }
	weights_load_18636 { ap_none {  { weights_load_18636 in_data 0 32 } } }
	weights_load_18637 { ap_none {  { weights_load_18637 in_data 0 32 } } }
	weights_load_18638 { ap_none {  { weights_load_18638 in_data 0 32 } } }
	weights_load_18639 { ap_none {  { weights_load_18639 in_data 0 32 } } }
	weights_load_18640 { ap_none {  { weights_load_18640 in_data 0 32 } } }
	weights_load_18641 { ap_none {  { weights_load_18641 in_data 0 32 } } }
	weights_load_18642 { ap_none {  { weights_load_18642 in_data 0 32 } } }
	temp_sum_4116 { ap_none {  { temp_sum_4116 in_data 0 32 } } }
	weights_load_18643 { ap_none {  { weights_load_18643 in_data 0 32 } } }
	weights_load_18644 { ap_none {  { weights_load_18644 in_data 0 32 } } }
	weights_load_18645 { ap_none {  { weights_load_18645 in_data 0 32 } } }
	weights_load_18646 { ap_none {  { weights_load_18646 in_data 0 32 } } }
	weights_load_18647 { ap_none {  { weights_load_18647 in_data 0 32 } } }
	weights_load_18648 { ap_none {  { weights_load_18648 in_data 0 32 } } }
	weights_load_18649 { ap_none {  { weights_load_18649 in_data 0 32 } } }
	weights_load_18650 { ap_none {  { weights_load_18650 in_data 0 32 } } }
	weights_load_18651 { ap_none {  { weights_load_18651 in_data 0 32 } } }
	temp_sum_4118 { ap_none {  { temp_sum_4118 in_data 0 32 } } }
	weights_load_18652 { ap_none {  { weights_load_18652 in_data 0 32 } } }
	weights_load_18653 { ap_none {  { weights_load_18653 in_data 0 32 } } }
	weights_load_18654 { ap_none {  { weights_load_18654 in_data 0 32 } } }
	weights_load_18655 { ap_none {  { weights_load_18655 in_data 0 32 } } }
	weights_load_18656 { ap_none {  { weights_load_18656 in_data 0 32 } } }
	weights_load_18657 { ap_none {  { weights_load_18657 in_data 0 32 } } }
	weights_load_18658 { ap_none {  { weights_load_18658 in_data 0 32 } } }
	weights_load_18659 { ap_none {  { weights_load_18659 in_data 0 32 } } }
	weights_load_18660 { ap_none {  { weights_load_18660 in_data 0 32 } } }
	temp_sum_4120 { ap_none {  { temp_sum_4120 in_data 0 32 } } }
	weights_load_18661 { ap_none {  { weights_load_18661 in_data 0 32 } } }
	weights_load_18662 { ap_none {  { weights_load_18662 in_data 0 32 } } }
	weights_load_18663 { ap_none {  { weights_load_18663 in_data 0 32 } } }
	weights_load_18664 { ap_none {  { weights_load_18664 in_data 0 32 } } }
	weights_load_18665 { ap_none {  { weights_load_18665 in_data 0 32 } } }
	weights_load_18666 { ap_none {  { weights_load_18666 in_data 0 32 } } }
	weights_load_18667 { ap_none {  { weights_load_18667 in_data 0 32 } } }
	weights_load_18668 { ap_none {  { weights_load_18668 in_data 0 32 } } }
	weights_load_18669 { ap_none {  { weights_load_18669 in_data 0 32 } } }
	temp_sum_4122 { ap_none {  { temp_sum_4122 in_data 0 32 } } }
	weights_load_18670 { ap_none {  { weights_load_18670 in_data 0 32 } } }
	weights_load_18671 { ap_none {  { weights_load_18671 in_data 0 32 } } }
	weights_load_18672 { ap_none {  { weights_load_18672 in_data 0 32 } } }
	weights_load_18673 { ap_none {  { weights_load_18673 in_data 0 32 } } }
	weights_load_18674 { ap_none {  { weights_load_18674 in_data 0 32 } } }
	weights_load_18675 { ap_none {  { weights_load_18675 in_data 0 32 } } }
	weights_load_18676 { ap_none {  { weights_load_18676 in_data 0 32 } } }
	weights_load_18677 { ap_none {  { weights_load_18677 in_data 0 32 } } }
	weights_load_18678 { ap_none {  { weights_load_18678 in_data 0 32 } } }
	temp_sum_4124 { ap_none {  { temp_sum_4124 in_data 0 32 } } }
	weights_load_18679 { ap_none {  { weights_load_18679 in_data 0 32 } } }
	weights_load_18680 { ap_none {  { weights_load_18680 in_data 0 32 } } }
	weights_load_18681 { ap_none {  { weights_load_18681 in_data 0 32 } } }
	weights_load_18682 { ap_none {  { weights_load_18682 in_data 0 32 } } }
	weights_load_18683 { ap_none {  { weights_load_18683 in_data 0 32 } } }
	weights_load_18684 { ap_none {  { weights_load_18684 in_data 0 32 } } }
	weights_load_18685 { ap_none {  { weights_load_18685 in_data 0 32 } } }
	weights_load_18686 { ap_none {  { weights_load_18686 in_data 0 32 } } }
	weights_load_18687 { ap_none {  { weights_load_18687 in_data 0 32 } } }
	temp_sum_4126 { ap_none {  { temp_sum_4126 in_data 0 32 } } }
}

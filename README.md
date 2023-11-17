# ES-FL
 FPGA-accelerated Federated Learning on a small CNN that recognises Fashion-MNIST images. This repository contains all files produced during my thesis under the title "Reconfigurable Logic (FPGA)-based System Architecture for the Acceleration of Federated Learning in Neural Networks".
 
 The code is organized between standalone CNN implementations and FL systems.

 There are 4 CNN implementations:
 * A Python/TF one that was used for theoriticla experimentation and to produce the folden results.
 * A CPU-based C++ one, intended as a stepping stone between the first one and FPGA-based ones.
 * An FPGA-based HLS one.
 * A complete FPGA-based one ( HLS + XRT ). It has been run and evaluated on a ZCU102.

 There are 3 FL implementations:
 * A barebones one that no trianing takes place and it is used to develop and test the communication part of the FL system.
 * One that implements local training with Python/TF on top of the previous implementation.
 * The final one that implements local training on FPGA hardware. It has been run and evaluated on a ZCU102.

 The docs directory contains the thesis, the presentation, all required files for them, as well as all produced experimental data and results.


@echo off
REM ****************************************************************************
REM Vivado (TM) v2024.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
<<<<<<< HEAD:FPGA/GLOBAL_V1/ESTRUCTURAL_1_1/DISPLAY.sim/sim_1/behav/xsim/simulate.bat
REM Generated by Vivado on Thu Dec 19 18:29:24 +0100 2024
=======
REM Generated by Vivado on Wed Dec 18 21:27:24 +0100 2024
>>>>>>> parent of 1c9293d (cambios en entidad case_i_ns):FPGA/GLOBAL_V1/Puntuacion/puntuation/puntuation.sim/sim_1/behav/xsim/simulate.bat
REM SW Build 5076996 on Wed May 22 18:37:14 MDT 2024
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim FSM_tb_behav -key {Behavioral:sim_1:Functional:FSM_tb} -tclbatch FSM_tb.tcl -log simulate.log"
call xsim  FSM_tb_behav -key {Behavioral:sim_1:Functional:FSM_tb} -tclbatch FSM_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
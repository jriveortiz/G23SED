@echo off
REM ****************************************************************************
REM Vivado (TM) v2024.1 (64-bit)
REM
REM Filename    : compile.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for compiling the simulation design source files
REM
<<<<<<< HEAD:FPGA/GLOBAL_V1/ESTRUCTURAL_1_1/DISPLAY.sim/sim_1/behav/xsim/compile.bat
REM Generated by Vivado on Thu Dec 19 18:29:20 +0100 2024
=======
REM Generated by Vivado on Thu Dec 19 15:44:15 +0100 2024
>>>>>>> parent of 1c9293d (cambios en entidad case_i_ns):FPGA/GLOBAL_V1/Puntuacion/puntuation/puntuation.sim/sim_1/behav/xsim/compile.bat
REM SW Build 5076996 on Wed May 22 18:37:14 MDT 2024
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: compile.bat
REM
REM ****************************************************************************
REM compile VHDL design sources
echo "xvhdl --incr --relax -prj FSM_tb_vhdl.prj"
call xvhdl  --incr --relax -prj FSM_tb_vhdl.prj -log xvhdl.log
call type xvhdl.log > compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0

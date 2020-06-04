@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat May 09 08:40:02 +0800 2020
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 06da8b95d90b43f49b8005c753820d43 --incr --debug typical --relax --mt 2 -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L dist_mem_gen_v8_0_13 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot testbench_behav xil_defaultlib.testbench xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto 06da8b95d90b43f49b8005c753820d43 --incr --debug typical --relax --mt 2 -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L dist_mem_gen_v8_0_13 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot testbench_behav xil_defaultlib.testbench xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

# Example vivado VHDL project

The `/constraints` folder contains master constraint files for the following FPGA boards:
- Cmod-A7
- Nexys-Video

Use it to create your own constraint file.
more constraints for Digilent FPGA boards can be found at:  
https://github.com/Digilent/digilent-xdc

## How to build

Edit `create_project.tcl` with project name, FPGA part used and which entity is top.

Navigate into the root folder of the project you want to build, and run the following in your terminal:
```
vivado -mode batch -source scripts/create_project.tcl 
```
This will create the vivado project in the `/vivado` folder.  
Be aware that vivado needs to be in your `$PATH`for this to work.

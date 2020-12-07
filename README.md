# Intro To Verilog

This Repository contains materials for the session "Introduction To Verilog" by Electronics and Robotics Club, IIIT-Hyderabad.

## Setup
For the hands-on session, the following 2 programs are required:
1. Iverilog
2. GtkWave

It is recommended to use Ubuntu or any other Linux distro.

You can find the installation instructions (for all OS) in the following 2 links:

[http://gtkwave.sourceforge.net/](http://gtkwave.sourceforge.net/)

[https://iverilog.fandom.com/wiki/Installation_Guide](https://iverilog.fandom.com/wiki/Installation_Guide)

## How to run the files
1. Clone the repo or download the Zip File
```
git clone https://github.com/crusader2000/Intro_To_Verilog.git
```
2. cd into the project directory 
```
cd Intro_To_Verilog
```
3. During the session, go into the relevant directory.Eg:
```
cd Session/d_flipflop
```
4. To run the files use the following commands.Eg:
```
iverilog d_flipflop_tb.v d_flipflop.v
./a.out
```
Note: The testbench file(xxxx_tb.v) must be followed by the design file(xxxx.v).

5. You can check out the waveform using gtkwave.
```
gtkwave dump.vcd
```

## Competition:
Go the folder named  ``questions`` to find the details regarding it

## Presentation (Used in the session): 
To be added later

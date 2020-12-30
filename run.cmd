TxtToHex test.txt init.hex 256
iverilog -o tok -c file_list.txt
vvp -lxt2 tok
gtkwave wave.vcd waveset.gtkw
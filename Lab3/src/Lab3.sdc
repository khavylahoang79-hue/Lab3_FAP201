// ================================================================
// FAP201 - Lab03: Edge Detection & LED Toggle (Timing Constraints)
// Target: GW5A-LV25UG324C2/I1
// Board : Xiaomeige ACG525
// ================================================================

create_clock -name i_Clk -period 20 -waveform {0 10} [get_ports {i_Clk}]
module top(
    clk,
    rst,
    image_input1, image_input2, image_input3, image_input4, image_input5, image_input6, image_input7, image_input8, image_input9, image_input10, image_input11, image_input12, image_input13, image_input14, image_input15, image_input16, image_input17, image_input18, image_input19, image_input20, image_input21, image_input22, image_input23, image_input24, image_input25, image_input26, image_input27, image_input28, image_input29, image_input30, image_input31, image_input32, image_input33, image_input34, image_input35, image_input36, image_input37, image_input38, image_input39, image_input40, image_input41, image_input42, image_input43, image_input44, image_input45, image_input46, image_input47, image_input48, image_input49, image_input50, image_input51, image_input52, image_input53, image_input54, image_input55, image_input56, image_input57, image_input58, image_input59, image_input60, image_input61, image_input62, image_input63, image_input64, image_input65, image_input66, image_input67, image_input68, image_input69, image_input70, image_input71, image_input72, image_input73, image_input74, image_input75, image_input76, image_input77, image_input78, image_input79, image_input80, image_input81, image_input82, image_input83, image_input84, image_input85, image_input86, image_input87, image_input88, image_input89, image_input90, image_input91, image_input92, image_input93, image_input94, image_input95, image_input96, image_input97, image_input98,

    weight1_input1, weight1_input2, weight1_input3, weight1_input4, weight1_input5, weight1_input6, weight1_input7, weight1_input8, weight1_input9, weight1_input10, weight1_input11, weight1_input12, weight1_input13, weight1_input14, weight1_input15, weight1_input16, weight1_input17, weight1_input18, weight1_input19, weight1_input20, weight1_input21, weight1_input22, weight1_input23, weight1_input24, weight1_input25, weight1_input26, weight1_input27, weight1_input28, weight1_input29, weight1_input30, weight1_input31, weight1_input32, weight1_input33, weight1_input34, weight1_input35, weight1_input36, weight1_input37, weight1_input38, weight1_input39, weight1_input40, weight1_input41, weight1_input42, weight1_input43, weight1_input44, weight1_input45, weight1_input46, weight1_input47, weight1_input48, weight1_input49, weight1_input50, weight1_input51, weight1_input52, weight1_input53, weight1_input54, weight1_input55, weight1_input56, weight1_input57, weight1_input58, weight1_input59, weight1_input60, weight1_input61, weight1_input62, weight1_input63, weight1_input64, weight1_input65, weight1_input66, weight1_input67, weight1_input68, weight1_input69, weight1_input70, weight1_input71, weight1_input72, weight1_input73, weight1_input74, weight1_input75, weight1_input76, weight1_input77, weight1_input78, weight1_input79, weight1_input80, weight1_input81, weight1_input82, weight1_input83, weight1_input84, weight1_input85, weight1_input86, weight1_input87, weight1_input88, weight1_input89, weight1_input90, weight1_input91, weight1_input92, weight1_input93, weight1_input94, weight1_input95, weight1_input96, weight1_input97, weight1_input98,

    weight2_input1, weight2_input2, weight2_input3, weight2_input4, weight2_input5, weight2_input6, weight2_input7, weight2_input8, weight2_input9, weight2_input10,

    adder_ready, done, lut_layer_done, Y_sample,
    addr_img_I, addr_byte_I_byte_W1, addr_img_W1_byte_W2,

    lut_output1, lut_output2

);

input [15:0] image_input1, image_input2, image_input3, image_input4, image_input5, image_input6, image_input7, image_input8, image_input9, image_input10, image_input11, image_input12, image_input13, image_input14, image_input15, image_input16, image_input17, image_input18, image_input19, image_input20, image_input21, image_input22, image_input23, image_input24, image_input25, image_input26, image_input27, image_input28, image_input29, image_input30, image_input31, image_input32, image_input33, image_input34, image_input35, image_input36, image_input37, image_input38, image_input39, image_input40, image_input41, image_input42, image_input43, image_input44, image_input45, image_input46, image_input47, image_input48, image_input49, image_input50, image_input51, image_input52, image_input53, image_input54, image_input55, image_input56, image_input57, image_input58, image_input59, image_input60, image_input61, image_input62, image_input63, image_input64, image_input65, image_input66, image_input67, image_input68, image_input69, image_input70, image_input71, image_input72, image_input73, image_input74, image_input75, image_input76, image_input77, image_input78, image_input79, image_input80, image_input81, image_input82, image_input83, image_input84, image_input85, image_input86, image_input87, image_input88, image_input89, image_input90, image_input91, image_input92, image_input93, image_input94, image_input95, image_input96, image_input97, image_input98;

input [15:0] weight1_input1, weight1_input2, weight1_input3, weight1_input4, weight1_input5, weight1_input6, weight1_input7, weight1_input8, weight1_input9, weight1_input10, weight1_input11, weight1_input12, weight1_input13, weight1_input14, weight1_input15, weight1_input16, weight1_input17, weight1_input18, weight1_input19, weight1_input20, weight1_input21, weight1_input22, weight1_input23, weight1_input24, weight1_input25, weight1_input26, weight1_input27, weight1_input28, weight1_input29, weight1_input30, weight1_input31, weight1_input32, weight1_input33, weight1_input34, weight1_input35, weight1_input36, weight1_input37, weight1_input38, weight1_input39, weight1_input40, weight1_input41, weight1_input42, weight1_input43, weight1_input44, weight1_input45, weight1_input46, weight1_input47, weight1_input48, weight1_input49, weight1_input50, weight1_input51, weight1_input52, weight1_input53, weight1_input54, weight1_input55, weight1_input56, weight1_input57, weight1_input58, weight1_input59, weight1_input60, weight1_input61, weight1_input62, weight1_input63, weight1_input64, weight1_input65, weight1_input66, weight1_input67, weight1_input68, weight1_input69, weight1_input70, weight1_input71, weight1_input72, weight1_input73, weight1_input74, weight1_input75, weight1_input76, weight1_input77, weight1_input78, weight1_input79, weight1_input80, weight1_input81, weight1_input82, weight1_input83, weight1_input84, weight1_input85, weight1_input86, weight1_input87, weight1_input88, weight1_input89, weight1_input90, weight1_input91, weight1_input92, weight1_input93, weight1_input94, weight1_input95, weight1_input96, weight1_input97, weight1_input98;
input clk;
input rst;
    output wire adder_ready;  
    output [3:0] addr_img_I;
	wire [3:0] addr_img_I;
    output wire [9:0] addr_byte_I_byte_W1;
    output wire [7:0] addr_img_W1_byte_W2; 
    output wire done; 
    output wire [15:0] lut_output1,lut_output2;
    wire [15:0] adder_out1,adder_out2,adder_out3,adder_out4,adder_out5,adder_out6,adder_out7,adder_out8,adder_out9,adder_out10,adder_out11;

    wire [31:0] mult_out1, mult_out2, mult_out3, mult_out4, mult_out5, mult_out6, mult_out7, mult_out8, mult_out9, mult_out10, mult_out11, mult_out12, mult_out13, mult_out14, mult_out15, mult_out16, mult_out17, mult_out18, mult_out19, mult_out20, mult_out21, mult_out22, mult_out23, mult_out24, mult_out25, mult_out26, mult_out27, mult_out28, mult_out29, mult_out30, mult_out31, mult_out32, mult_out33, mult_out34, mult_out35, mult_out36, mult_out37, mult_out38, mult_out39, mult_out40, mult_out41, mult_out42, mult_out43, mult_out44, mult_out45, mult_out46, mult_out47, mult_out48, mult_out49, mult_out50, mult_out51, mult_out52, mult_out53, mult_out54, mult_out55, mult_out56, mult_out57, mult_out58, mult_out59, mult_out60, mult_out61, mult_out62, mult_out63, mult_out64, mult_out65, mult_out66, mult_out67, mult_out68, mult_out69, mult_out70, mult_out71, mult_out72, mult_out73, mult_out74, mult_out75, mult_out76, mult_out77, mult_out78, mult_out79, mult_out80, mult_out81, mult_out82, mult_out83, mult_out84, mult_out85, mult_out86, mult_out87, mult_out88, mult_out89, mult_out90, mult_out91, mult_out92, mult_out93, mult_out94, mult_out95, mult_out96, mult_out97, mult_out98;

    //------layer2 IO-------------
    input [15:0] weight2_input1, weight2_input2, weight2_input3, weight2_input4, weight2_input5, weight2_input6, weight2_input7, weight2_input8, weight2_input9, weight2_input10;

    output wire lut_layer_done,Y_sample;

    wire [31:0] mult_out1_2, mult_out2_2, mult_out3_2, mult_out4_2, mult_out5_2, mult_out6_2, mult_out7_2, mult_out8_2, mult_out9_2, mult_out10_2;

    wire [3:0] Q;
    wire [7:0] N;
    wire [3:0] I;
    
    wire layer2_ready;
    
    wire mult_mode;
    wire [1:0]adder_mode;
    



CNT cnt(
        .clk(clk),
        .rst(rst),
        .Q(Q),
        .N(N),
        .I(I),
        .done(done)
    );

CTRL ctrl(
        .rst(rst),
        .clk(clk),
        .Q(Q),
        .N(N),
        .I(I),
        .addr_img_I(addr_img_I),
        .addr_byte_I_byte_W1(addr_byte_I_byte_W1),
        .addr_img_W1_byte_W2(addr_img_W1_byte_W2),
        .mult_mode(mult_mode),
        .adder_mode(adder_mode),
        .adder_ready(adder_ready),
        .layer2_ready(layer2_ready)
    );

MULT mult98(
        .clk(clk),
        .rst(rst),
        .mode(mult_mode),
        .I0(lut_output1),
        .I1(image_input1),
        .I2(image_input2),
        .I3(image_input3),
        .I4(image_input4),
        .I5(image_input5),
        .I6(image_input6),
        .I7(image_input7),
        .I8(image_input8),
        .I9(image_input9),
        .I10(image_input10),
        .I11(image_input11),
        .I12(image_input12),
        .I13(image_input13),
        .I14(image_input14),
        .I15(image_input15),
        .I16(image_input16),
        .I17(image_input17),
        .I18(image_input18),
        .I19(image_input19),
        .I20(image_input20),
        .I21(image_input21),
        .I22(image_input22),
        .I23(image_input23),
        .I24(image_input24),
        .I25(image_input25),
        .I26(image_input26),
        .I27(image_input27),
        .I28(image_input28),
        .I29(image_input29),
        .I30(image_input30),
        .I31(image_input31),
        .I32(image_input32),
        .I33(image_input33),
        .I34(image_input34),
        .I35(image_input35),
        .I36(image_input36),
        .I37(image_input37),
        .I38(image_input38),
        .I39(image_input39),
        .I40(image_input40),
        .I41(image_input41),
        .I42(image_input42),
        .I43(image_input43),
        .I44(image_input44),
        .I45(image_input45),
        .I46(image_input46),
        .I47(image_input47),
        .I48(image_input48),
        .I49(image_input49),
        .I50(image_input50),
        .I51(image_input51),
        .I52(image_input52),
        .I53(image_input53),
        .I54(image_input54),
        .I55(image_input55),
        .I56(image_input56),
        .I57(image_input57),
        .I58(image_input58),
        .I59(image_input59),
        .I60(image_input60),
        .I61(image_input61),
        .I62(image_input62),
        .I63(image_input63),
        .I64(image_input64),
        .I65(image_input65),
        .I66(image_input66),
        .I67(image_input67),
        .I68(image_input68),
        .I69(image_input69),
        .I70(image_input70),
        .I71(image_input71),
        .I72(image_input72),
        .I73(image_input73),
        .I74(image_input74),
        .I75(image_input75),
        .I76(image_input76),
        .I77(image_input77),
        .I78(image_input78),
        .I79(image_input79),
        .I80(image_input80),
        .I81(image_input81),
        .I82(image_input82),
        .I83(image_input83),
        .I84(image_input84),
        .I85(image_input85),
        .I86(image_input86),
        .I87(image_input87),
        .I88(image_input88),
        .I89(image_input89),
        .I90(image_input90),
        .I91(image_input91),
        .I92(image_input92),
        .I93(image_input93),
        .I94(image_input94),
        .I95(image_input95),
        .I96(image_input96),
        .I97(image_input97),
        .I98(image_input98),

        .W1(weight1_input1),
        .W2(weight1_input2),
        .W3(weight1_input3),
        .W4(weight1_input4),
        .W5(weight1_input5),
        .W6(weight1_input6),
        .W7(weight1_input7),
        .W8(weight1_input8),
        .W9(weight1_input9),
        .W10(weight1_input10),
        .W11(weight1_input11),
        .W12(weight1_input12),
        .W13(weight1_input13),
        .W14(weight1_input14),
        .W15(weight1_input15),
        .W16(weight1_input16),
        .W17(weight1_input17),
        .W18(weight1_input18),
        .W19(weight1_input19),
        .W20(weight1_input20),
        .W21(weight1_input21),
        .W22(weight1_input22),
        .W23(weight1_input23),
        .W24(weight1_input24),
        .W25(weight1_input25),
        .W26(weight1_input26),
        .W27(weight1_input27),
        .W28(weight1_input28),
        .W29(weight1_input29),
        .W30(weight1_input30),
        .W31(weight1_input31),
        .W32(weight1_input32),
        .W33(weight1_input33),
        .W34(weight1_input34),
        .W35(weight1_input35),
        .W36(weight1_input36),
        .W37(weight1_input37),
        .W38(weight1_input38),
        .W39(weight1_input39),
        .W40(weight1_input40),
        .W41(weight1_input41),
        .W42(weight1_input42),
        .W43(weight1_input43),
        .W44(weight1_input44),
        .W45(weight1_input45),
        .W46(weight1_input46),
        .W47(weight1_input47),
        .W48(weight1_input48),
        .W49(weight1_input49),
        .W50(weight1_input50),
        .W51(weight1_input51),
        .W52(weight1_input52),
        .W53(weight1_input53),
        .W54(weight1_input54),
        .W55(weight1_input55),
        .W56(weight1_input56),
        .W57(weight1_input57),
        .W58(weight1_input58),
        .W59(weight1_input59),
        .W60(weight1_input60),
        .W61(weight1_input61),
        .W62(weight1_input62),
        .W63(weight1_input63),
        .W64(weight1_input64),
        .W65(weight1_input65),
        .W66(weight1_input66),
        .W67(weight1_input67),
        .W68(weight1_input68),
        .W69(weight1_input69),
        .W70(weight1_input70),
        .W71(weight1_input71),
        .W72(weight1_input72),
        .W73(weight1_input73),
        .W74(weight1_input74),
        .W75(weight1_input75),
        .W76(weight1_input76),
        .W77(weight1_input77),
        .W78(weight1_input78),
        .W79(weight1_input79),
        .W80(weight1_input80),
        .W81(weight1_input81),
        .W82(weight1_input82),
        .W83(weight1_input83),
        .W84(weight1_input84),
        .W85(weight1_input85),
        .W86(weight1_input86),
        .W87(weight1_input87),
        .W88(weight1_input88),
        .W89(weight1_input89),
        .W90(weight1_input90),
        .W91(weight1_input91),
        .W92(weight1_input92),
        .W93(weight1_input93),
        .W94(weight1_input94),
        .W95(weight1_input95),
        .W96(weight1_input96),
        .W97(weight1_input97),
        .W98(weight1_input98),

        .W1_2(weight2_input1), // first weight element of layer 2 (WeightII)
        .W2_2(weight2_input2),
        .W3_2(weight2_input3),
        .W4_2(weight2_input4),
        .W5_2(weight2_input5),
        .W6_2(weight2_input6),
        .W7_2(weight2_input7),
        .W8_2(weight2_input8),
        .W9_2(weight2_input9),
        .W10_2(weight2_input10),

        .I_hidden(lut_output1),
        .output1_2(mult_out1_2),
        .output2_2(mult_out2_2),
        .output3_2(mult_out3_2),
        .output4_2(mult_out4_2),
        .output5_2(mult_out5_2),
        .output6_2(mult_out6_2),
        .output7_2(mult_out7_2),
        .output8_2(mult_out8_2),
        .output9_2(mult_out9_2),
        .output10_2(mult_out10_2),

        .output1(mult_out1),
        .output2(mult_out2),
        .output3(mult_out3),
        .output4(mult_out4),
        .output5(mult_out5),
        .output6(mult_out6),
        .output7(mult_out7),
        .output8(mult_out8),
        .output9(mult_out9),
        .output10(mult_out10),
        .output11(mult_out11),
        .output12(mult_out12),
        .output13(mult_out13),
        .output14(mult_out14),
        .output15(mult_out15),
        .output16(mult_out16),
        .output17(mult_out17),
        .output18(mult_out18),
        .output19(mult_out19),
        .output20(mult_out20),
        .output21(mult_out21),
        .output22(mult_out22),
        .output23(mult_out23),
        .output24(mult_out24),
        .output25(mult_out25),
        .output26(mult_out26),
        .output27(mult_out27),
        .output28(mult_out28),
        .output29(mult_out29),
        .output30(mult_out30),
        .output31(mult_out31),
        .output32(mult_out32),
        .output33(mult_out33),
        .output34(mult_out34),
        .output35(mult_out35),
        .output36(mult_out36),
        .output37(mult_out37),
        .output38(mult_out38),
        .output39(mult_out39),
        .output40(mult_out40),
        .output41(mult_out41),
        .output42(mult_out42),
        .output43(mult_out43),
        .output44(mult_out44),
        .output45(mult_out45),
        .output46(mult_out46),
        .output47(mult_out47),
        .output48(mult_out48),
        .output49(mult_out49),
        .output50(mult_out50),
        .output51(mult_out51),
        .output52(mult_out52),
        .output53(mult_out53),
        .output54(mult_out54),
        .output55(mult_out55),
        .output56(mult_out56),
        .output57(mult_out57),
        .output58(mult_out58),
        .output59(mult_out59),
        .output60(mult_out60),
        .output61(mult_out61),
        .output62(mult_out62),
        .output63(mult_out63),
        .output64(mult_out64),
        .output65(mult_out65),
        .output66(mult_out66),
        .output67(mult_out67),
        .output68(mult_out68),
        .output69(mult_out69),
        .output70(mult_out70),
        .output71(mult_out71),
        .output72(mult_out72),
        .output73(mult_out73),
        .output74(mult_out74),
        .output75(mult_out75),
        .output76(mult_out76),
        .output77(mult_out77),
        .output78(mult_out78),
        .output79(mult_out79),
        .output80(mult_out80),
        .output81(mult_out81),
        .output82(mult_out82),
        .output83(mult_out83),
        .output84(mult_out84),
        .output85(mult_out85),
        .output86(mult_out86),
        .output87(mult_out87),
        .output88(mult_out88),
        .output89(mult_out89),
        .output90(mult_out90),
        .output91(mult_out91),
        .output92(mult_out92),
        .output93(mult_out93),
        .output94(mult_out94),
        .output95(mult_out95),
        .output96(mult_out96),
        .output97(mult_out97),
        .output98(mult_out98)

    );

ADDER adder(
        .clk(clk),
        .rst(rst),
        .mode(adder_mode),
        .ready(adder_ready),

        .P1(mult_out1),
        .P2(mult_out2),
        .P3(mult_out3),
        .P4(mult_out4),
        .P5(mult_out5),
        .P6(mult_out6),
        .P7(mult_out7),
        .P8(mult_out8),
        .P9(mult_out9),
        .P10(mult_out10),
        .P11(mult_out11),
        .P12(mult_out12),
        .P13(mult_out13),
        .P14(mult_out14),
        .P15(mult_out15),
        .P16(mult_out16),
        .P17(mult_out17),
        .P18(mult_out18),
        .P19(mult_out19),
        .P20(mult_out20),
        .P21(mult_out21),
        .P22(mult_out22),
        .P23(mult_out23),
        .P24(mult_out24),
        .P25(mult_out25),
        .P26(mult_out26),
        .P27(mult_out27),
        .P28(mult_out28),
        .P29(mult_out29),
        .P30(mult_out30),
        .P31(mult_out31),
        .P32(mult_out32),
        .P33(mult_out33),
        .P34(mult_out34),
        .P35(mult_out35),
        .P36(mult_out36),
        .P37(mult_out37),
        .P38(mult_out38),
        .P39(mult_out39),
        .P40(mult_out40),
        .P41(mult_out41),
        .P42(mult_out42),
        .P43(mult_out43),
        .P44(mult_out44),
        .P45(mult_out45),
        .P46(mult_out46),
        .P47(mult_out47),
        .P48(mult_out48),
        .P49(mult_out49),
        .P50(mult_out50),
        .P51(mult_out51),
        .P52(mult_out52),
        .P53(mult_out53),
        .P54(mult_out54),
        .P55(mult_out55),
        .P56(mult_out56),
        .P57(mult_out57),
        .P58(mult_out58),
        .P59(mult_out59),
        .P60(mult_out60),
        .P61(mult_out61),
        .P62(mult_out62),
        .P63(mult_out63),
        .P64(mult_out64),
        .P65(mult_out65),
        .P66(mult_out66),
        .P67(mult_out67),
        .P68(mult_out68),
        .P69(mult_out69),
        .P70(mult_out70),
        .P71(mult_out71),
        .P72(mult_out72),
        .P73(mult_out73),
        .P74(mult_out74),
        .P75(mult_out75),
        .P76(mult_out76),
        .P77(mult_out77),
        .P78(mult_out78),
        .P79(mult_out79),
        .P80(mult_out80),
        .P81(mult_out81),
        .P82(mult_out82),
        .P83(mult_out83),
        .P84(mult_out84),
        .P85(mult_out85),
        .P86(mult_out86),
        .P87(mult_out87),
        .P88(mult_out88),
        .P89(mult_out89),
        .P90(mult_out90),
        .P91(mult_out91),
        .P92(mult_out92),
        .P93(mult_out93),
        .P94(mult_out94),
        .P95(mult_out95),
        .P96(mult_out96),
        .P97(mult_out97),
        .P98(mult_out98),

        .P1_2(mult_out1_2),
        .P2_2(mult_out2_2),
        .P3_2(mult_out3_2),
        .P4_2(mult_out4_2),
        .P5_2(mult_out5_2),
        .P6_2(mult_out6_2),
        .P7_2(mult_out7_2),
        .P8_2(mult_out8_2),
        .P9_2(mult_out9_2),
        .P10_2(mult_out10_2),

        .output1(adder_out1),
        .output2(adder_out2),
        .output3(adder_out3),
        .output4(adder_out4),
        .output5(adder_out5),
        .output6(adder_out6),
        .output7(adder_out7),
        .output8(adder_out8),
        .output9(adder_out9),
        .output10(adder_out10),
        .output11(adder_out11)
    );

LUT lut(
        .clk(clk),
        .rst(rst),
        .ready(adder_ready),
        .layer2_ready(layer2_ready),
        .Y_sample(Y_sample),
        .Input1(adder_out1),
        .Input2(adder_out2),
        .Input3(adder_out3),
        .Input4(adder_out4),
        .Input5(adder_out5),
        .Input6(adder_out6),
        .Input7(adder_out7),
        .Input8(adder_out8),
        .Input9(adder_out9),
        .Input10(adder_out10),
        .Input11(adder_out11),
        .Y(lut_output1),
        .Y2(lut_output2),
        .done(lut_layer_done)
    );

  

endmodule // top
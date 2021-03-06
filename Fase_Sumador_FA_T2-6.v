//: version "1.8.7"

module main;    //: root_module
wire w6;    //: /sn:0 {0}(-101,251)(-101,133){1}
//: {2}(-99,131)(214,131)(214,106)(269,106)(269,114){3}
//: {4}(-101,129)(-101,32)(-92,32){5}
wire w14;    //: /sn:0 {0}(276,156)(276,186)(469,186)(469,162)(536,162){1}
wire [1:0] w28;    //: /sn:0 /dp:1 {0}(553,94)(553,157)(542,157){1}
wire w8;    //: /sn:0 {0}(280,114)(280,103)(-17,103){1}
//: {2}(-19,101)(-19,41){3}
//: {4}(-19,105)(-19,250){5}
wire w11;    //: /sn:0 /dp:1 {0}(295,132)(305,132)(305,147)(44,147)(44,250){1}
wire w13;    //: /sn:0 {0}(253,132)(243,132)(243,147)(435,147)(435,137)(469,137)(469,152)(536,152){1}
//: enddecls

  //: switch g13 (w6) @(-101,265) /sn:0 /R:1 /w:[ 0 ] /st:0
  //: joint g1 (w6) @(-101, 131) /w:[ 2 4 -1 1 ]
  concat g11 (.I0(w14), .I1(w13), .Z(w28));   //: @(541,157) /sn:0 /w:[ 1 1 1 ] /dr:0
  led g10 (.I(w28));   //: @(553,87) /sn:0 /w:[ 0 ] /type:2
  //: switch g9 (w8) @(-19,264) /sn:0 /R:1 /w:[ 5 ] /st:0
  //: joint g0 (w8) @(-19, 103) /w:[ 1 2 -1 4 ]
  SFA g22 (.B(w8), .A(w6), .Ci(w11), .Co(w13), .S(w14));   //: @(254, 115) /sz:(40, 40) /sn:0 /p:[ Ti0>0 Ti1>3 Ri0>0 Lo0<0 Bo0<0 ]
  //: switch g12 (w11) @(44,264) /sn:0 /R:1 /w:[ 1 ] /st:0

endmodule

module SFA(B, S, Co, Ci, A);
//: interface  /sz:(40, 40) /bd:[ Ti0>A(15/40) Ti1>B(26/40) Ri0>Ci(17/40) Lo0<Co(17/40) Bo0<S(22/40) ]
input B;    //: /sn:0 {0}(-4,89)(12,89)(12,173){1}
//: {2}(14,175)(24,175)(24,173)(348,173){3}
//: {4}(12,177)(12,217){5}
//: {6}(14,219)(24,219)(24,218)(288,218){7}
//: {8}(12,221)(12,244){9}
//: {10}(14,246)(24,246)(24,245)(290,245){11}
//: {12}(12,248)(12,406){13}
input A;    //: /sn:0 {0}(296,295)(89,295)(89,293)(79,293){1}
//: {2}(77,291)(77,239){3}
//: {4}(79,237)(89,237)(89,223)(288,223){5}
//: {6}(77,235)(77,194){7}
//: {8}(79,192)(89,192)(89,178)(348,178){9}
//: {10}(77,190)(77,83)(68,83){11}
//: {12}(77,295)(77,373){13}
output Co;    //: /sn:0 /dp:1 {0}(546,261)(637,261)(637,186)(714,186){1}
input Ci;    //: /sn:0 {0}(107,109)(155,109)(155,209){1}
//: {2}(157,211)(167,211)(167,214)(529,214){3}
//: {4}(155,213)(155,253){5}
//: {6}(157,255)(167,255)(167,250)(290,250){7}
//: {8}(155,257)(155,280){9}
//: {10}(157,282)(167,282)(167,290)(296,290){11}
//: {12}(155,284)(155,453){13}
output S;    //: /sn:0 /dp:1 {0}(550,212)(582,212)(582,227)(642,227){1}
//: {2}(646,227)(653,227){3}
//: {4}(644,229)(644,278)(713,278){5}
wire w7;    //: /sn:0 {0}(529,209)(379,209)(379,176)(369,176){1}
wire w19;    //: /sn:0 {0}(525,258)(440,258)(440,237)(430,237){1}
wire w0;    //: /sn:0 {0}(311,248)(382,248)(382,239)(409,239){1}
wire w20;    //: /sn:0 {0}(525,263)(333,263)(333,293)(317,293){1}
wire w12;    //: /sn:0 {0}(309,221)(399,221)(399,234)(409,234){1}
//: enddecls

  //: input g8 (B) @(-6,89) /sn:0 /w:[ 0 ]
  and g4 (.I0(Ci), .I1(A), .Z(w20));   //: @(307,293) /sn:0 /w:[ 11 0 1 ]
  //: joint g13 (Ci) @(155, 211) /w:[ 2 1 -1 4 ]
  and g3 (.I0(B), .I1(Ci), .Z(w0));   //: @(301,248) /sn:0 /w:[ 11 7 0 ]
  and g2 (.I0(B), .I1(A), .Z(w12));   //: @(299,221) /sn:0 /w:[ 7 5 0 ]
  xor g1 (.I0(w7), .I1(Ci), .Z(S));   //: @(540,212) /sn:0 /w:[ 0 3 0 ]
  //: joint g16 (A) @(77, 293) /w:[ 1 2 -1 12 ]
  //: output g11 (S) @(710,278) /sn:0 /w:[ 5 ]
  //: output g10 (Co) @(711,186) /sn:0 /w:[ 1 ]
  //: joint g19 (B) @(12, 175) /w:[ 2 1 -1 4 ]
  or g6 (.I0(w12), .I1(w0), .Z(w19));   //: @(420,237) /sn:0 /w:[ 1 1 1 ]
  //: input g9 (Ci) @(105,109) /sn:0 /w:[ 0 ]
  //: input g7 (A) @(66,83) /sn:0 /w:[ 11 ]
  //: joint g20 (B) @(12, 219) /w:[ 6 5 -1 8 ]
  //: joint g15 (Ci) @(155, 282) /w:[ 10 9 -1 12 ]
  //: joint g17 (A) @(77, 237) /w:[ 4 6 -1 3 ]
  //: joint g14 (Ci) @(155, 255) /w:[ 6 5 -1 8 ]
  or g5 (.I0(w19), .I1(w20), .Z(Co));   //: @(536,261) /sn:0 /w:[ 0 0 0 ]
  //: joint g21 (B) @(12, 246) /w:[ 10 9 -1 12 ]
  xor g0 (.I0(B), .I1(A), .Z(w7));   //: @(359,176) /sn:0 /w:[ 3 9 1 ]
  //: joint g18 (A) @(77, 192) /w:[ 8 10 -1 7 ]
  //: joint g12 (S) @(644, 227) /w:[ 2 -1 1 4 ]

endmodule

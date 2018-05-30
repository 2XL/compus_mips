//: version "1.8.7"

module main;    //: root_module
wire [1:0] w6;    //: /sn:0 /dp:1 {0}(307,296)(307,289)(370,289)(370,258)(361,258){1}
wire w4;    //: /sn:0 {0}(355,263)(130,263)(130,192)(167,192){1}
wire w3;    //: /sn:0 {0}(190,216)(190,253)(355,253){1}
wire w0;    //: /sn:0 {0}(183,68)(183,174){1}
wire w1;    //: /sn:0 /dp:1 {0}(194,174)(194,121)(216,121)(216,68){1}
wire w2;    //: /sn:0 {0}(280,68)(280,192)(209,192){1}
wire [7:0] w5;    //: /sn:0 {0}(72,59)(72,64)(182,64){1}
//: {2}(183,64)(215,64){3}
//: {4}(216,64)(279,64){5}
//: {6}(280,64)(311,64){7}
//: enddecls

  tran g4(.Z(w2), .I(w5[0]));   //: @(280,62) /sn:0 /R:1 /w:[ 0 5 6 ] /ss:1
  tran g3(.Z(w0), .I(w5[0]));   //: @(183,62) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1
  led g2 (.I(w6));   //: @(307,303) /sn:0 /R:2 /w:[ 0 ] /type:2
  //: dip g1 (w5) @(72,49) /sn:0 /w:[ 0 ] /st:4
  tran g6(.Z(w1), .I(w5[0]));   //: @(216,62) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1
  concat g7 (.I0(w4), .I1(w3), .Z(w6));   //: @(360,258) /sn:0 /w:[ 0 1 1 ] /dr:0
  SFA g0 (.B(w1), .A(w0), .Ci(w2), .Co(w4), .S(w3));   //: @(168, 175) /sz:(40, 40) /sn:0 /p:[ Ti0>0 Ti1>1 Ri0>1 Lo0<1 Bo0<0 ]

endmodule

module SFA(Co, Ci, B, A, S);
//: interface  /sz:(40, 40) /bd:[ Ti0>A(15/40) Ti1>B(26/40) Ri0>Ci(17/40) Lo0<Co(17/40) Bo0<S(22/40) ]
input B;    //: /sn:0 {0}(66,121)(105,121){1}
//: {2}(109,121)(149,121)(149,103)(157,103){3}
//: {4}(107,123)(107,193)(163,193){5}
input A;    //: /sn:0 /dp:1 {0}(157,98)(99,98)(99,102){1}
//: {2}(97,104)(65,104){3}
//: {4}(99,106)(99,188)(163,188){5}
output Co;    //: /sn:0 /dp:1 {0}(249,178)(288,178){1}
input Ci;    //: /sn:0 {0}(67,141)(132,141){1}
//: {2}(136,141)(212,141)(212,127)(220,127){3}
//: {4}(134,143)(134,162)(164,162){5}
output S;    //: /sn:0 /dp:1 {0}(241,125)(283,125){1}
wire w8;    //: /sn:0 {0}(184,191)(218,191)(218,180)(228,180){1}
wire w2;    //: /sn:0 {0}(178,101)(190,101){1}
//: {2}(194,101)(210,101)(210,122)(220,122){3}
//: {4}(192,103)(192,132)(155,132)(155,167)(164,167){5}
wire w5;    //: /sn:0 {0}(185,165)(218,165)(218,175)(228,175){1}
//: enddecls

  //: joint g8 (A) @(99, 104) /w:[ -1 1 2 4 ]
  and g4 (.I0(Ci), .I1(w2), .Z(w5));   //: @(175,165) /sn:0 /w:[ 5 5 0 ]
  //: output g13 (Co) @(285,178) /sn:0 /w:[ 1 ]
  xor g3 (.I0(A), .I1(B), .Z(w2));   //: @(168,101) /sn:0 /w:[ 0 3 0 ]
  //: input g2 (Ci) @(65,141) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(64,121) /sn:0 /w:[ 0 ]
  //: joint g11 (w2) @(192, 101) /w:[ 2 -1 1 4 ]
  //: joint g10 (Ci) @(134, 141) /w:[ 2 -1 1 4 ]
  or g6 (.I0(w5), .I1(w8), .Z(Co));   //: @(239,178) /sn:0 /w:[ 1 1 0 ]
  //: joint g9 (B) @(107, 121) /w:[ 2 -1 1 4 ]
  xor g7 (.I0(w2), .I1(Ci), .Z(S));   //: @(231,125) /sn:0 /w:[ 3 3 0 ]
  and g5 (.I0(A), .I1(B), .Z(w8));   //: @(174,191) /sn:0 /w:[ 5 5 0 ]
  //: input g0 (A) @(63,104) /sn:0 /w:[ 3 ]
  //: output g12 (S) @(280,125) /sn:0 /w:[ 1 ]

endmodule

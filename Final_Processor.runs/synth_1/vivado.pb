
r
Command: %s
53*	vivadotcl2D
0synth_design -top TopLevel -part xc7a35tcpg236-12default:defaultZ4-113h px
7
Starting synth_design
149*	vivadotclZ4-321h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 265.098 ; gain = 86.461
2default:defaulth px
�
synthesizing module '%s'638*oasys2
TopLevel2default:default2~
hC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/TopLevel.v2default:default2
232default:default8@Z8-638h px
�
synthesizing module '%s'638*oasys2
Timer2default:default2{
eC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Timer.v2default:default2
242default:default8@Z8-638h px
Y
%s*synth2D
0	Parameter TimerBaseAddr bound to: 8'b11110000 
2default:defaulth px
g
%s*synth2R
>	Parameter InitialIterruptRate bound to: 100 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter InitialIterruptEnable bound to: 1'b1 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Timer2default:default2
12default:default2
12default:default2{
eC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Timer.v2default:default2
242default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2
	Processor2default:default2
iC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Processor.v2default:default2
232default:default8@Z8-638h px
P
%s*synth2;
'	Parameter IDLE bound to: 8'b11110000 
2default:defaulth px
c
%s*synth2N
:	Parameter GET_THREAD_START_ADDR_0 bound to: 8'b11110001 
2default:defaulth px
c
%s*synth2N
:	Parameter GET_THREAD_START_ADDR_1 bound to: 8'b11110010 
2default:defaulth px
c
%s*synth2N
:	Parameter GET_THREAD_START_ADDR_2 bound to: 8'b11110011 
2default:defaulth px
V
%s*synth2A
-	Parameter CHOOSE_OPP bound to: 8'b00000000 
2default:defaulth px
^
%s*synth2I
5	Parameter READ_FROM_MEM_TO_A bound to: 8'b00010000 
2default:defaulth px
^
%s*synth2I
5	Parameter READ_FROM_MEM_TO_B bound to: 8'b00010001 
2default:defaulth px
[
%s*synth2F
2	Parameter READ_FROM_MEM_0 bound to: 8'b00010010 
2default:defaulth px
[
%s*synth2F
2	Parameter READ_FROM_MEM_1 bound to: 8'b00010011 
2default:defaulth px
[
%s*synth2F
2	Parameter READ_FROM_MEM_2 bound to: 8'b00010100 
2default:defaulth px
_
%s*synth2J
6	Parameter WRITE_TO_MEM_FROM_A bound to: 8'b00100000 
2default:defaulth px
_
%s*synth2J
6	Parameter WRITE_TO_MEM_FROM_B bound to: 8'b00100001 
2default:defaulth px
Z
%s*synth2E
1	Parameter WRITE_TO_MEM_0 bound to: 8'b00100010 
2default:defaulth px
b
%s*synth2M
9	Parameter DO_MATHS_OPP_SAVE_IN_A bound to: 8'b00110000 
2default:defaulth px
b
%s*synth2M
9	Parameter DO_MATHS_OPP_SAVE_IN_B bound to: 8'b00110001 
2default:defaulth px
Z
%s*synth2E
1	Parameter DO_MATHS_OPP_0 bound to: 8'b00110010 
2default:defaulth px
`
%s*synth2K
7	Parameter IF_A_EQUALITY_B_GOTO bound to: 8'b01000000 
2default:defaulth px
b
%s*synth2M
9	Parameter IF_A_EQUALITY_B_GOTO_1 bound to: 8'b01000001 
2default:defaulth px
P
%s*synth2;
'	Parameter GOTO bound to: 8'b01010000 
2default:defaulth px
R
%s*synth2=
)	Parameter GOTO_1 bound to: 8'b01010001 
2default:defaulth px
R
%s*synth2=
)	Parameter GOTO_2 bound to: 8'b01010010 
2default:defaulth px
Z
%s*synth2E
1	Parameter FUNCTION_START bound to: 8'b01100000 
2default:defaulth px
R
%s*synth2=
)	Parameter RETURN bound to: 8'b01100001 
2default:defaulth px
Z
%s*synth2E
1	Parameter DE_REFERENCE_A bound to: 8'b01110000 
2default:defaulth px
Z
%s*synth2E
1	Parameter DE_REFERENCE_B bound to: 8'b01110001 
2default:defaulth px
Z
%s*synth2E
1	Parameter DE_REFERENCE_0 bound to: 8'b01110010 
2default:defaulth px
\
%s*synth2G
3	Parameter LOAD_IMMEDIATE_A bound to: 8'b10000000 
2default:defaulth px
\
%s*synth2G
3	Parameter LOAD_IMMEDIATE_B bound to: 8'b10000001 
2default:defaulth px
\
%s*synth2G
3	Parameter LOAD_IMMEDIATE_0 bound to: 8'b10000010 
2default:defaulth px
�
synthesizing module '%s'638*oasys2
ALU2default:default2y
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/ALU.v2default:default2
232default:default8@Z8-638h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU2default:default2
22default:default2
12default:default2y
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/ALU.v2default:default2
232default:default8@Z8-256h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	Processor2default:default2
32default:default2
12default:default2
iC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Processor.v2default:default2
232default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2
ROM2default:default2y
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/ROM.v2default:default2
232default:default8@Z8-638h px
^
%s*synth2I
5	Parameter RAMAddrWidth bound to: 8 - type: integer 
2default:defaulth px
�
,$readmem data file '%s' is read successfully3426*oasys2z
fC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/ROM_COMPLETE.mem2default:default2y
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/ROM.v2default:default2
362default:default8@Z8-3876h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ROM2default:default2
42default:default2
12default:default2y
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/ROM.v2default:default2
232default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2
RAM2default:default2y
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/RAM.v2default:default2
232default:default8@Z8-638h px
]
%s*synth2H
4	Parameter RAMBaseAddr bound to: 0 - type: integer 
2default:defaulth px
^
%s*synth2I
5	Parameter RAMAddrWidth bound to: 7 - type: integer 
2default:defaulth px
�
,$readmem data file '%s' is read successfully3426*oasys2z
fC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/RAM_COMPLETE.mem2default:default2y
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/RAM.v2default:default2
442default:default8@Z8-3876h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RAM2default:default2
52default:default2
12default:default2y
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/RAM.v2default:default2
232default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2
	Mouse_BUS2default:default2
iC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Mouse_BUS.v2default:default2
242default:default8@Z8-638h px
[
%s*synth2F
2	Parameter Mouse_Base_Addr bound to: 8'b10100000 
2default:defaulth px
[
%s*synth2F
2	Parameter Addr_Size bound to: 2 - type: integer 
2default:defaulth px
[
%s*synth2F
2	Parameter mem_MouseStatus bound to: 8'b10100000 
2default:defaulth px
V
%s*synth2A
-	Parameter mem_MouseX bound to: 8'b10100001 
2default:defaulth px
V
%s*synth2A
-	Parameter mem_MouseY bound to: 8'b10100010 
2default:defaulth px
�
synthesizing module '%s'638*oasys2$
MouseTransceiver2default:default2�
pC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/MouseTransceiver.v2default:default2
272default:default8@Z8-638h px
W
%s*synth2B
.	Parameter MouseLimitX bound to: 8'b10100000 
2default:defaulth px
W
%s*synth2B
.	Parameter MouseLimitY bound to: 8'b01111000 
2default:defaulth px
�
synthesizing module '%s'638*oasys2$
MouseTransmitter2default:default2�
pC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/MouseTransmitter.v2default:default2
242default:default8@Z8-638h px
L
%s*synth27
#	Parameter IDLE bound to: 4'b0000 
2default:defaulth px
Q
%s*synth2<
(	Parameter CLOCK_LOW bound to: 4'b0001 
2default:defaulth px
P
%s*synth2;
'	Parameter DATA_LOW bound to: 4'b0010 
2default:defaulth px
U
%s*synth2@
,	Parameter START_SENDING bound to: 4'b0011 
2default:defaulth px
Q
%s*synth2<
(	Parameter SEND_BITS bound to: 4'b0100 
2default:defaulth px
S
%s*synth2>
*	Parameter SEND_PARITY bound to: 4'b0101 
2default:defaulth px
U
%s*synth2@
,	Parameter SEND_STOP_BIT bound to: 4'b0110 
2default:defaulth px
T
%s*synth2?
+	Parameter RELEASE_DATA bound to: 4'b0111 
2default:defaulth px
Q
%s*synth2<
(	Parameter WAIT_DATA bound to: 4'b1000 
2default:defaulth px
R
%s*synth2=
)	Parameter WAIT_CLOCK bound to: 4'b1001 
2default:defaulth px
T
%s*synth2?
+	Parameter WAIT_RELEASE bound to: 4'b1010 
2default:defaulth px
_
%s*synth2J
6	Parameter WAIT_TIME bound to: 12000 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
MouseTransmitter2default:default2
62default:default2
12default:default2�
pC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/MouseTransmitter.v2default:default2
242default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2!
MouseReceiver2default:default2�
mC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/MouseReceiver.v2default:default2
242default:default8@Z8-638h px
K
%s*synth26
"	Parameter IDLE bound to: 3'b000 
2default:defaulth px
P
%s*synth2;
'	Parameter READ_BITS bound to: 3'b001 
2default:defaulth px
S
%s*synth2>
*	Parameter CHECK_PARITY bound to: 3'b010 
2default:defaulth px
U
%s*synth2@
,	Parameter CHECK_STOP_BIT bound to: 3'b011 
2default:defaulth px
T
%s*synth2?
+	Parameter CONF_RECEIVED bound to: 3'b100 
2default:defaulth px
^
%s*synth2I
5	Parameter TIMEOUT bound to: 100000 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
MouseReceiver2default:default2
72default:default2
12default:default2�
mC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/MouseReceiver.v2default:default2
242default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2!
MouseMasterSM2default:default2�
mC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/MouseMasterSM.v2default:default2
252default:default8@Z8-638h px
O
%s*synth2:
&	Parameter INITIAL bound to: 4'b0000 
2default:defaulth px
R
%s*synth2=
)	Parameter SEND_RESET bound to: 4'b0001 
2default:defaulth px
W
%s*synth2B
.	Parameter CONF_RESET_SENT bound to: 4'b0010 
2default:defaulth px
O
%s*synth2:
&	Parameter REC_ACK bound to: 4'b0011 
2default:defaulth px
W
%s*synth2B
.	Parameter MOUSE_SELF_TEST bound to: 4'b0100 
2default:defaulth px
T
%s*synth2?
+	Parameter REC_MOUSE_ID bound to: 4'b0101 
2default:defaulth px
S
%s*synth2>
*	Parameter EN_REP_MODE bound to: 4'b0110 
2default:defaulth px
Z
%s*synth2E
1	Parameter CONF_REP_MODE_SENT bound to: 4'b0111 
2default:defaulth px
S
%s*synth2>
*	Parameter REC_ACK_REP bound to: 4'b1000 
2default:defaulth px
R
%s*synth2=
)	Parameter REC_STATUS bound to: 4'b1001 
2default:defaulth px
N
%s*synth29
%	Parameter REC_DX bound to: 4'b1010 
2default:defaulth px
N
%s*synth29
%	Parameter REC_DY bound to: 4'b1011 
2default:defaulth px
\
%s*synth2G
3	Parameter SEND_INTERRUPT_STATE bound to: 4'b1100 
2default:defaulth px
W
%s*synth2B
.	Parameter RESET_MOUSE bound to: 8'b11111111 
2default:defaulth px
O
%s*synth2:
&	Parameter ACK bound to: 8'b11111010 
2default:defaulth px
Z
%s*synth2E
1	Parameter PASS_SELF_TEST bound to: 8'b10101010 
2default:defaulth px
T
%s*synth2?
+	Parameter MOUSE_ID bound to: 8'b00000000 
2default:defaulth px
R
%s*synth2=
)	Parameter EN_REP bound to: 8'b11110100 
2default:defaulth px
S
%s*synth2>
*	Parameter ACK_REP bound to: 8'b11110100 
2default:defaulth px
b
%s*synth2M
9	Parameter WAIT_TIME bound to: 10000000 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
MouseMasterSM2default:default2
82default:default2
12default:default2�
mC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/MouseMasterSM.v2default:default2
252default:default8@Z8-256h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
MouseTransceiver2default:default2
92default:default2
12default:default2�
pC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/MouseTransceiver.v2default:default2
272default:default8@Z8-256h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	Mouse_BUS2default:default2
102default:default2
12default:default2
iC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Mouse_BUS.v2default:default2
242default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2
VGA2default:default2�
kC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/VGA_Wrapper.v2default:default2
122default:default8@Z8-638h px
W
%s*synth2B
.	Parameter VGABaseAddr bound to: 8'b10110000 
2default:defaulth px
T
%s*synth2?
+	Parameter VGAXAddr bound to: 8'b10110001 
2default:defaulth px
T
%s*synth2?
+	Parameter VGAYAddr bound to: 8'b10110010 
2default:defaulth px
T
%s*synth2?
+	Parameter VGAEAddr bound to: 8'b10110011 
2default:defaulth px
T
%s*synth2?
+	Parameter VGAOAddr bound to: 8'b10110100 
2default:defaulth px
�
synthesizing module '%s'638*oasys2
VGA_Sig_Gen2default:default2�
kC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/VGA_Sig_Gen.v2default:default2
132default:default8@Z8-638h px
f
%s*synth2Q
=	Parameter VertTimeToPulseWidthEnd bound to: 10'b0000000010 
2default:defaulth px
e
%s*synth2P
<	Parameter VertTimeToBackPorchEnd bound to: 10'b0000011111 
2default:defaulth px
g
%s*synth2R
>	Parameter VertTimeToDisplayTimeEnd bound to: 10'b0111111111 
2default:defaulth px
f
%s*synth2Q
=	Parameter VertTimeToFrontPorchEnd bound to: 10'b1000001001 
2default:defaulth px
f
%s*synth2Q
=	Parameter HorzTimeToPulseWidthEnd bound to: 10'b0001100000 
2default:defaulth px
e
%s*synth2P
<	Parameter HorzTimeToBackPorchEnd bound to: 10'b0010010000 
2default:defaulth px
g
%s*synth2R
>	Parameter HorzTimeToDisplayTimeEnd bound to: 10'b1100010000 
2default:defaulth px
f
%s*synth2Q
=	Parameter HorzTimeToFrontPorchEnd bound to: 10'b1100100000 
2default:defaulth px
�
synthesizing module '%s'638*oasys2#
Generic_counter2default:default2�
oC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Generic_counter.v2default:default2
132default:default8@Z8-638h px
_
%s*synth2J
6	Parameter COUNTER_WIDTH bound to: 2 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter COUNTER_MAX bound to: 3 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
Generic_counter2default:default2
112default:default2
12default:default2�
oC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Generic_counter.v2default:default2
132default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys23
Generic_counter__parameterized02default:default2�
oC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Generic_counter.v2default:default2
132default:default8@Z8-638h px
`
%s*synth2K
7	Parameter COUNTER_WIDTH bound to: 10 - type: integer 
2default:defaulth px
_
%s*synth2J
6	Parameter COUNTER_MAX bound to: 799 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys23
Generic_counter__parameterized02default:default2
112default:default2
12default:default2�
oC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Generic_counter.v2default:default2
132default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys23
Generic_counter__parameterized12default:default2�
oC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Generic_counter.v2default:default2
132default:default8@Z8-638h px
`
%s*synth2K
7	Parameter COUNTER_WIDTH bound to: 10 - type: integer 
2default:defaulth px
_
%s*synth2J
6	Parameter COUNTER_MAX bound to: 520 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys23
Generic_counter__parameterized12default:default2
112default:default2
12default:default2�
oC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Generic_counter.v2default:default2
132default:default8@Z8-256h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
VGA_Sig_Gen2default:default2
122default:default2
12default:default2�
kC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/VGA_Sig_Gen.v2default:default2
132default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2

VGA_Buffer2default:default2�
lC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Frame_Buffer.v2default:default2
122default:default8@Z8-638h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2

VGA_Buffer2default:default2
132default:default2
12default:default2�
lC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Frame_Buffer.v2default:default2
122default:default8@Z8-256h px
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2 
Frame_Buffer2default:default2

VGA_Buffer2default:default2
82default:default2
72default:default2�
kC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/VGA_Wrapper.v2default:default2
582default:default8@Z8-350h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
VGA2default:default2
142default:default2
12default:default2�
kC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/VGA_Wrapper.v2default:default2
122default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2!
IRTransmitter2default:default2{
eC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitter.v2default:default2
132default:default8@Z8-638h px
U
%s*synth2@
,	Parameter BASE_ADDR bound to: 8'b10010000 
2default:defaulth px
�
synthesizing module '%s'638*oasys2
	TenHz_cnt2default:default2w
aC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/TenHz_cnt.v2default:default2
132default:default8@Z8-638h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	TenHz_cnt2default:default2
152default:default2
12default:default2w
aC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/TenHz_cnt.v2default:default2
132default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2#
IRTransmitterSM2default:default2}
gC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitterSM.v2default:default2
112default:default8@Z8-638h px
b
%s*synth2M
9	Parameter StartBurstSize bound to: 191 - type: integer 
2default:defaulth px
e
%s*synth2P
<	Parameter CarSelectBurstSize bound to: 47 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter GapSize bound to: 25 - type: integer 
2default:defaulth px
b
%s*synth2M
9	Parameter AssertBurstSize bound to: 47 - type: integer 
2default:defaulth px
d
%s*synth2O
;	Parameter DeAssertBurstSize bound to: 22 - type: integer 
2default:defaulth px
c
%s*synth2N
:	Parameter FrequencyCount bound to: 1388 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
IRTransmitterSM2default:default2
162default:default2
12default:default2}
gC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitterSM.v2default:default2
112default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys23
IRTransmitterSM__parameterized02default:default2}
gC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitterSM.v2default:default2
112default:default8@Z8-638h px
a
%s*synth2L
8	Parameter StartBurstSize bound to: 88 - type: integer 
2default:defaulth px
e
%s*synth2P
<	Parameter CarSelectBurstSize bound to: 22 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter GapSize bound to: 40 - type: integer 
2default:defaulth px
b
%s*synth2M
9	Parameter AssertBurstSize bound to: 44 - type: integer 
2default:defaulth px
d
%s*synth2O
;	Parameter DeAssertBurstSize bound to: 22 - type: integer 
2default:defaulth px
c
%s*synth2N
:	Parameter FrequencyCount bound to: 1250 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys23
IRTransmitterSM__parameterized02default:default2
162default:default2
12default:default2}
gC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitterSM.v2default:default2
112default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys23
IRTransmitterSM__parameterized12default:default2}
gC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitterSM.v2default:default2
112default:default8@Z8-638h px
a
%s*synth2L
8	Parameter StartBurstSize bound to: 88 - type: integer 
2default:defaulth px
e
%s*synth2P
<	Parameter CarSelectBurstSize bound to: 44 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter GapSize bound to: 40 - type: integer 
2default:defaulth px
b
%s*synth2M
9	Parameter AssertBurstSize bound to: 44 - type: integer 
2default:defaulth px
d
%s*synth2O
;	Parameter DeAssertBurstSize bound to: 22 - type: integer 
2default:defaulth px
c
%s*synth2N
:	Parameter FrequencyCount bound to: 1333 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys23
IRTransmitterSM__parameterized12default:default2
162default:default2
12default:default2}
gC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitterSM.v2default:default2
112default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys23
IRTransmitterSM__parameterized22default:default2}
gC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitterSM.v2default:default2
112default:default8@Z8-638h px
b
%s*synth2M
9	Parameter StartBurstSize bound to: 192 - type: integer 
2default:defaulth px
e
%s*synth2P
<	Parameter CarSelectBurstSize bound to: 24 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter GapSize bound to: 24 - type: integer 
2default:defaulth px
b
%s*synth2M
9	Parameter AssertBurstSize bound to: 48 - type: integer 
2default:defaulth px
d
%s*synth2O
;	Parameter DeAssertBurstSize bound to: 24 - type: integer 
2default:defaulth px
c
%s*synth2N
:	Parameter FrequencyCount bound to: 1388 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys23
IRTransmitterSM__parameterized22default:default2
162default:default2
12default:default2}
gC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitterSM.v2default:default2
112default:default8@Z8-256h px
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2{
eC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitter.v2default:default2
992default:default8@Z8-4446h px
�
synthesizing module '%s'638*oasys2
ila_02default:default2�
�C:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.runs/synth_1/.Xil/Vivado-27056-LAPTOP-C7QOK973/realtime/ila_0_stub.v2default:default2
72default:default8@Z8-638h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ila_02default:default2
172default:default2
12default:default2�
�C:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.runs/synth_1/.Xil/Vivado-27056-LAPTOP-C7QOK973/realtime/ila_0_stub.v2default:default2
72default:default8@Z8-256h px
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2
probe32default:default2
22default:default2
ila_02default:default2{
eC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitter.v2default:default2
1052default:default8@Z8-689h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
IRTransmitter2default:default2
182default:default2
12default:default2{
eC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/IRTransmitter.v2default:default2
132default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2
	Disp_Seg72default:default2w
aC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/Disp_Seg7.v2default:default2
222default:default8@Z8-638h px
Y
%s*synth2D
0	Parameter seg7_BaseAddr bound to: 8'b11010000 
2default:defaulth px
X
%s*synth2C
/	Parameter seg7_DotAddr bound to: 8'b11010001 
2default:defaulth px
X
%s*synth2C
/	Parameter seg7_DispCar bound to: 8'b11010010 
2default:defaulth px
�
synthesizing module '%s'638*oasys23
Generic_counter__parameterized22default:default2�
oC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Generic_counter.v2default:default2
132default:default8@Z8-638h px
`
%s*synth2K
7	Parameter COUNTER_WIDTH bound to: 17 - type: integer 
2default:defaulth px
a
%s*synth2L
8	Parameter COUNTER_MAX bound to: 99999 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys23
Generic_counter__parameterized22default:default2
182default:default2
12default:default2�
oC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Generic_counter.v2default:default2
132default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2$
Multiplexer_4way2default:default2�
pC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Multiplexer_4way.v2default:default2
232default:default8@Z8-638h px
�
default block is never used226*oasys2�
pC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Multiplexer_4way.v2default:default2
392default:default8@Z8-226h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
Multiplexer_4way2default:default2
192default:default2
12default:default2�
pC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Multiplexer_4way.v2default:default2
232default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2
seg7decoder2default:default2�
kC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/seg7Decoder.v2default:default2
302default:default8@Z8-638h px
�
default block is never used226*oasys2�
kC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/seg7Decoder.v2default:default2
742default:default8@Z8-226h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
seg7decoder2default:default2
202default:default2
12default:default2�
kC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/seg7Decoder.v2default:default2
302default:default8@Z8-256h px
�
case item %s is unreachable151*oasys2
4'b01002default:default2w
aC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/Disp_Seg7.v2default:default2
1232default:default8@Z8-151h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	Disp_Seg72default:default2
212default:default2
12default:default2w
aC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/Disp_Seg7.v2default:default2
222default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2
LEDS_BUS2default:default2~
hC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/LEDS_BUS.v2default:default2
242default:default8@Z8-638h px
X
%s*synth2C
/	Parameter LED_baseAddr bound to: 8'b11000000 
2default:defaulth px
\
%s*synth2G
3	Parameter LED_baseAddrHigh bound to: 8'b11000001 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
LEDS_BUS2default:default2
222default:default2
12default:default2~
hC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/LEDS_BUS.v2default:default2
242default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2%
Slideswitches_BUS2default:default2�
qC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Slideswitches_BUS.v2default:default2
242default:default8@Z8-638h px
`
%s*synth2K
7	Parameter slideSwitch_baseAddr bound to: 8'b11100000 
2default:defaulth px
`
%s*synth2K
7	Parameter slideSwitch_HighAddr bound to: 8'b11100001 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys2%
Slideswitches_BUS2default:default2
232default:default2
12default:default2�
qC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/Slideswitches_BUS.v2default:default2
242default:default8@Z8-256h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TopLevel2default:default2
242default:default2
12default:default2~
hC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/TopLevel.v2default:default2
232default:default8@Z8-256h px
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 304.055 ; gain = 125.418
2default:defaulth px
A
%s*synth2,

Report Check Netlist: 
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 304.055 ; gain = 125.418
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
S
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px
H
)Preparing netlist for logic optimization
349*projectZ1-570h px
;

Processing XDC Constraints
244*projectZ1-262h px
:
Initializing timing engine
348*projectZ1-569h px
�
Parsing XDC File [%s]
179*designutils2w
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/constrs_1/new/Final_XDC.xdc2default:defaultZ20-179h px
�
Finished Parsing XDC File [%s]
178*designutils2w
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/constrs_1/new/Final_XDC.xdc2default:defaultZ20-178h px
E
&Completed Processing XDC Constraints

245*projectZ1-263h px
{
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:002default:default2
597.9962default:default2
0.0002default:defaultZ17-268h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:15 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
S
%s*synth2>
*Start Loading Part and Timing Information
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
G
%s*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:15 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
W
%s*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:15 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
DownCounter2default:default2
322default:default2
182default:defaultZ8-5545h px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
Timer2default:default2
322default:default2
182default:defaultZ8-5545h px

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2&
TransmitTimerValue2default:defaultZ8-5546h px
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the inputs of the operator3413*oasys2
adder2default:default2y
cC:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/imports/new/ALU.v2default:default2
402default:default8@Z8-3537h px
�
3inferred FSM for state register '%s' in module '%s'802*oasys2!
CurrState_reg2default:default2
	Processor2default:defaultZ8-802h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
u
%s*synth2`
LROM size is below threshold of ROM address width. It will be mapped to LUTs
2default:defaulth px
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2)
NextProgCounterOffset2default:defaultZ8-5546h px
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
NextBusDataOut2default:defaultZ8-5546h px
u
%s*synth2`
LROM size is below threshold of ROM address width. It will be mapped to LUTs
2default:defaulth px
|
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
NextProgContext2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
42default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
�
3inferred FSM for state register '%s' in module '%s'802*oasys2"
Curr_State_reg2default:default2$
MouseTransmitter2default:defaultZ8-802h px
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

Next_State2default:defaultZ8-5546h px
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

Next_State2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2'
Next_MouseDataOutWE2default:default2
42default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2&
Next_MouseClkOutWE2default:default2
42default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

Next_State2default:default2
42default:default2
52default:defaultZ8-5544h px
�
3inferred FSM for state register '%s' in module '%s'802*oasys2"
Curr_State_reg2default:default2!
MouseReceiver2default:defaultZ8-802h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

Next_State2default:default2
42default:default2
52default:defaultZ8-5544h px
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
Next_ByteReceived2default:defaultZ8-5546h px
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

Next_State2default:defaultZ8-5546h px
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

Next_State2default:defaultZ8-5546h px
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

Next_State2default:defaultZ8-5546h px
�
3inferred FSM for state register '%s' in module '%s'802*oasys2"
Curr_State_reg2default:default2!
MouseMasterSM2default:defaultZ8-802h px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

Next_State2default:default2
242default:default2
182default:defaultZ8-5545h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
Next_Status2default:default2
22default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2&
Next_SendInterrupt2default:default2
42default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2#
Next_ReadEnable2default:default2
42default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2#
Next_ByteToSend2default:default2
42default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
Next_SendByte2default:default2
42default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
Next_Counter2default:default2
42default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

Next_State2default:default2
12default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

Next_State2default:default2
12default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

Next_State2default:default2
12default:default2
52default:defaultZ8-5544h px
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

Next_State2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

Next_State2default:default2
22default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

Next_State2default:default2
22default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

Next_State2default:default2
22default:default2
52default:defaultZ8-5544h px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

triggerOut2default:default2
242default:default2
182default:defaultZ8-5545h px
�
3inferred FSM for state register '%s' in module '%s'802*oasys2!
CurrState_reg2default:default2#
IRTransmitterSM2default:defaultZ8-802h px
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Carrier2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
NextLEDEnable2default:default2
42default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
3inferred FSM for state register '%s' in module '%s'802*oasys2!
CurrState_reg2default:default23
IRTransmitterSM__parameterized02default:defaultZ8-802h px
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Carrier2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
NextLEDEnable2default:default2
42default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
3inferred FSM for state register '%s' in module '%s'802*oasys2!
CurrState_reg2default:default23
IRTransmitterSM__parameterized12default:defaultZ8-802h px
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Carrier2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
NextLEDEnable2default:default2
42default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
3inferred FSM for state register '%s' in module '%s'802*oasys2!
CurrState_reg2default:default23
IRTransmitterSM__parameterized22default:defaultZ8-802h px
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Carrier2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
NextLEDEnable2default:default2
42default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	NextState2default:default2
12default:default2
52default:defaultZ8-5544h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	NextState2default:defaultZ8-5546h px
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

data_input2default:defaultZ8-5546h px
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
disp_car2default:defaultZ8-5546h px
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	dot_input2default:defaultZ8-5546h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	DecCount32default:default2
42default:default2
52default:defaultZ8-5544h px
q
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
LEDS2default:defaultZ8-5546h px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2t
`                   State |                     New Encoding |                     Old Encoding 
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2s
_              CHOOSE_OPP |                            00000 |                         00000000
2default:defaulth px
�
%s*synth2s
_      READ_FROM_MEM_TO_A |                            00001 |                         00010000
2default:defaulth px
�
%s*synth2s
_      READ_FROM_MEM_TO_B |                            00010 |                         00010001
2default:defaulth px
�
%s*synth2s
_         READ_FROM_MEM_0 |                            00011 |                         00010010
2default:defaulth px
�
%s*synth2s
_         READ_FROM_MEM_1 |                            00100 |                         00010011
2default:defaulth px
�
%s*synth2s
_     WRITE_TO_MEM_FROM_A |                            00101 |                         00100000
2default:defaulth px
�
%s*synth2s
_     WRITE_TO_MEM_FROM_B |                            00110 |                         00100001
2default:defaulth px
�
%s*synth2s
_          WRITE_TO_MEM_0 |                            00111 |                         00100010
2default:defaulth px
�
%s*synth2s
_  DO_MATHS_OPP_SAVE_IN_A |                            01000 |                         00110000
2default:defaulth px
�
%s*synth2s
_  DO_MATHS_OPP_SAVE_IN_B |                            01001 |                         00110001
2default:defaulth px
�
%s*synth2s
_          DO_MATHS_OPP_0 |                            01010 |                         00110010
2default:defaulth px
�
%s*synth2s
_    IF_A_EQUALITY_B_GOTO |                            01011 |                         01000000
2default:defaulth px
�
%s*synth2s
_  IF_A_EQUALITY_B_GOTO_1 |                            01100 |                         01000001
2default:defaulth px
�
%s*synth2s
_                    GOTO |                            01101 |                         01010000
2default:defaulth px
�
%s*synth2s
_                    IDLE |                            01110 |                         11110000
2default:defaulth px
�
%s*synth2s
_ GET_THREAD_START_ADDR_0 |                            01111 |                         11110001
2default:defaulth px
�
%s*synth2s
_ GET_THREAD_START_ADDR_1 |                            10000 |                         11110010
2default:defaulth px
�
%s*synth2s
_ GET_THREAD_START_ADDR_2 |                            10001 |                         11110011
2default:defaulth px
�
%s*synth2s
_          FUNCTION_START |                            10010 |                         01100000
2default:defaulth px
�
%s*synth2s
_                  GOTO_1 |                            10011 |                         01010001
2default:defaulth px
�
%s*synth2s
_                  GOTO_2 |                            10100 |                         01010010
2default:defaulth px
�
%s*synth2s
_                  RETURN |                            10101 |                         01100001
2default:defaulth px
�
%s*synth2s
_          DE_REFERENCE_A |                            10110 |                         01110000
2default:defaulth px
�
%s*synth2s
_          DE_REFERENCE_B |                            10111 |                         01110001
2default:defaulth px
�
%s*synth2s
_          DE_REFERENCE_0 |                            11000 |                         01110010
2default:defaulth px
�
%s*synth2s
_         READ_FROM_MEM_2 |                            11001 |                         00010100
2default:defaulth px
�
%s*synth2s
_        LOAD_IMMEDIATE_A |                            11010 |                         10000000
2default:defaulth px
�
%s*synth2s
_        LOAD_IMMEDIATE_B |                            11011 |                         10000001
2default:defaulth px
�
%s*synth2s
_        LOAD_IMMEDIATE_0 |                            11100 |                         10000010
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
CurrState_reg2default:default2

sequential2default:default2
	Processor2default:defaultZ8-3354h px
�
�The signal %s is implemented as block RAM but is better mapped onto distributed LUT RAM for the following reason(s): The *depth (%s address bits)* is shallow. Please use attribute (* ram_style = "distributed" *) to instruct Vivado to infer distributed LUT RAM.
4016*oasys2
DATA_reg2default:default2
82default:defaultZ8-5562h px
�
�The signal %s is implemented as block RAM but is better mapped onto distributed LUT RAM for the following reason(s): The *depth (%s address bits)* is shallow. Please use attribute (* ram_style = "distributed" *) to instruct Vivado to infer distributed LUT RAM.
4016*oasys2
Mem_reg2default:default2
72default:defaultZ8-5562h px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2t
`                   State |                     New Encoding |                     Old Encoding 
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2s
_                    IDLE |                             0000 |                             0000
2default:defaulth px
�
%s*synth2s
_               CLOCK_LOW |                             0001 |                             0001
2default:defaulth px
�
%s*synth2s
_                DATA_LOW |                             0010 |                             0010
2default:defaulth px
�
%s*synth2s
_           START_SENDING |                             0011 |                             0011
2default:defaulth px
�
%s*synth2s
_               SEND_BITS |                             0100 |                             0100
2default:defaulth px
�
%s*synth2s
_             SEND_PARITY |                             0101 |                             0101
2default:defaulth px
�
%s*synth2s
_            RELEASE_DATA |                             0110 |                             0111
2default:defaulth px
�
%s*synth2s
_               WAIT_DATA |                             0111 |                             1000
2default:defaulth px
�
%s*synth2s
_              WAIT_CLOCK |                             1000 |                             1001
2default:defaulth px
�
%s*synth2s
_            WAIT_RELEASE |                             1001 |                             1010
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
Curr_State_reg2default:default2

sequential2default:default2$
MouseTransmitter2default:defaultZ8-3354h px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2t
`                   State |                     New Encoding |                     Old Encoding 
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2s
_                    IDLE |                              000 |                              000
2default:defaulth px
�
%s*synth2s
_               READ_BITS |                              001 |                              001
2default:defaulth px
�
%s*synth2s
_            CHECK_PARITY |                              010 |                              010
2default:defaulth px
�
%s*synth2s
_          CHECK_STOP_BIT |                              011 |                              011
2default:defaulth px
�
%s*synth2s
_           CONF_RECEIVED |                              100 |                              100
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
Curr_State_reg2default:default2

sequential2default:default2!
MouseReceiver2default:defaultZ8-3354h px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2t
`                   State |                     New Encoding |                     Old Encoding 
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2s
_                 INITIAL |                             0000 |                             0000
2default:defaulth px
�
%s*synth2s
_              SEND_RESET |                             0001 |                             0001
2default:defaulth px
�
%s*synth2s
_         CONF_RESET_SENT |                             0010 |                             0010
2default:defaulth px
�
%s*synth2s
_                 REC_ACK |                             0011 |                             0011
2default:defaulth px
�
%s*synth2s
_         MOUSE_SELF_TEST |                             0100 |                             0100
2default:defaulth px
�
%s*synth2s
_            REC_MOUSE_ID |                             0101 |                             0101
2default:defaulth px
�
%s*synth2s
_             EN_REP_MODE |                             0110 |                             0110
2default:defaulth px
�
%s*synth2s
_      CONF_REP_MODE_SENT |                             0111 |                             0111
2default:defaulth px
�
%s*synth2s
_             REC_ACK_REP |                             1000 |                             1000
2default:defaulth px
�
%s*synth2s
_              REC_STATUS |                             1001 |                             1001
2default:defaulth px
�
%s*synth2s
_                  REC_DX |                             1010 |                             1010
2default:defaulth px
�
%s*synth2s
_                  REC_DY |                             1011 |                             1011
2default:defaulth px
�
%s*synth2s
_    SEND_INTERRUPT_STATE |                             1100 |                             1100
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
Curr_State_reg2default:default2

sequential2default:default2!
MouseMasterSM2default:defaultZ8-3354h px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2t
`                   State |                     New Encoding |                     Old Encoding 
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2s
_                  iSTATE |                             0000 |                             0000
2default:defaulth px
�
%s*synth2s
_                 iSTATE0 |                             0001 |                             0001
2default:defaulth px
�
%s*synth2s
_                 iSTATE1 |                             0010 |                             0010
2default:defaulth px
�
%s*synth2s
_                 iSTATE2 |                             0011 |                             0011
2default:defaulth px
�
%s*synth2s
_                 iSTATE3 |                             0100 |                             0100
2default:defaulth px
�
%s*synth2s
_                 iSTATE4 |                             0101 |                             0101
2default:defaulth px
�
%s*synth2s
_                 iSTATE5 |                             0110 |                             0110
2default:defaulth px
�
%s*synth2s
_                 iSTATE6 |                             0111 |                             0111
2default:defaulth px
�
%s*synth2s
_                 iSTATE7 |                             1000 |                             1000
2default:defaulth px
�
%s*synth2s
_                 iSTATE8 |                             1001 |                             1001
2default:defaulth px
�
%s*synth2s
_                 iSTATE9 |                             1010 |                             1010
2default:defaulth px
�
%s*synth2s
_                iSTATE10 |                             1011 |                             1011
2default:defaulth px
�
%s*synth2s
_                iSTATE11 |                             1100 |                             1100
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
CurrState_reg2default:default2

sequential2default:default2#
IRTransmitterSM2default:defaultZ8-3354h px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2t
`                   State |                     New Encoding |                     Old Encoding 
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2s
_                  iSTATE |                             0000 |                             0000
2default:defaulth px
�
%s*synth2s
_                 iSTATE0 |                             0001 |                             0001
2default:defaulth px
�
%s*synth2s
_                 iSTATE1 |                             0010 |                             0010
2default:defaulth px
�
%s*synth2s
_                 iSTATE2 |                             0011 |                             0011
2default:defaulth px
�
%s*synth2s
_                 iSTATE3 |                             0100 |                             0100
2default:defaulth px
�
%s*synth2s
_                 iSTATE4 |                             0101 |                             0101
2default:defaulth px
�
%s*synth2s
_                 iSTATE5 |                             0110 |                             0110
2default:defaulth px
�
%s*synth2s
_                 iSTATE6 |                             0111 |                             0111
2default:defaulth px
�
%s*synth2s
_                 iSTATE7 |                             1000 |                             1000
2default:defaulth px
�
%s*synth2s
_                 iSTATE8 |                             1001 |                             1001
2default:defaulth px
�
%s*synth2s
_                 iSTATE9 |                             1010 |                             1010
2default:defaulth px
�
%s*synth2s
_                iSTATE10 |                             1011 |                             1011
2default:defaulth px
�
%s*synth2s
_                iSTATE11 |                             1100 |                             1100
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
CurrState_reg2default:default2

sequential2default:default23
IRTransmitterSM__parameterized02default:defaultZ8-3354h px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2t
`                   State |                     New Encoding |                     Old Encoding 
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2s
_                  iSTATE |                             0000 |                             0000
2default:defaulth px
�
%s*synth2s
_                 iSTATE0 |                             0001 |                             0001
2default:defaulth px
�
%s*synth2s
_                 iSTATE1 |                             0010 |                             0010
2default:defaulth px
�
%s*synth2s
_                 iSTATE2 |                             0011 |                             0011
2default:defaulth px
�
%s*synth2s
_                 iSTATE3 |                             0100 |                             0100
2default:defaulth px
�
%s*synth2s
_                 iSTATE4 |                             0101 |                             0101
2default:defaulth px
�
%s*synth2s
_                 iSTATE5 |                             0110 |                             0110
2default:defaulth px
�
%s*synth2s
_                 iSTATE6 |                             0111 |                             0111
2default:defaulth px
�
%s*synth2s
_                 iSTATE7 |                             1000 |                             1000
2default:defaulth px
�
%s*synth2s
_                 iSTATE8 |                             1001 |                             1001
2default:defaulth px
�
%s*synth2s
_                 iSTATE9 |                             1010 |                             1010
2default:defaulth px
�
%s*synth2s
_                iSTATE10 |                             1011 |                             1011
2default:defaulth px
�
%s*synth2s
_                iSTATE11 |                             1100 |                             1100
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
CurrState_reg2default:default2

sequential2default:default23
IRTransmitterSM__parameterized12default:defaultZ8-3354h px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2t
`                   State |                     New Encoding |                     Old Encoding 
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2s
_                  iSTATE |                             0000 |                             0000
2default:defaulth px
�
%s*synth2s
_                 iSTATE0 |                             0001 |                             0001
2default:defaulth px
�
%s*synth2s
_                 iSTATE1 |                             0010 |                             0010
2default:defaulth px
�
%s*synth2s
_                 iSTATE2 |                             0011 |                             0011
2default:defaulth px
�
%s*synth2s
_                 iSTATE3 |                             0100 |                             0100
2default:defaulth px
�
%s*synth2s
_                 iSTATE4 |                             0101 |                             0101
2default:defaulth px
�
%s*synth2s
_                 iSTATE5 |                             0110 |                             0110
2default:defaulth px
�
%s*synth2s
_                 iSTATE6 |                             0111 |                             0111
2default:defaulth px
�
%s*synth2s
_                 iSTATE7 |                             1000 |                             1000
2default:defaulth px
�
%s*synth2s
_                 iSTATE8 |                             1001 |                             1001
2default:defaulth px
�
%s*synth2s
_                 iSTATE9 |                             1010 |                             1010
2default:defaulth px
�
%s*synth2s
_                iSTATE10 |                             1011 |                             1011
2default:defaulth px
�
%s*synth2s
_                iSTATE11 |                             1100 |                             1100
2default:defaulth px
�
%s*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth px
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
CurrState_reg2default:default2

sequential2default:default23
IRTransmitterSM__parameterized22default:defaultZ8-3354h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
I
%s*synth24
 Start RTL Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input     24 Bit       Adders := 5     
2default:defaulth px
W
%s*synth2B
.	   2 Input     17 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit       Adders := 4     
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth px
W
%s*synth2B
.	   2 Input      9 Bit       Adders := 3     
2default:defaulth px
W
%s*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit       Adders := 7     
2default:defaulth px
W
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit       Adders := 2     
2default:defaulth px
5
%s*synth2 
+---XORs : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Wide XORs := 2     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	               24 Bit    Registers := 5     
2default:defaulth px
W
%s*synth2B
.	               17 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	               16 Bit    Registers := 3     
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 4     
2default:defaulth px
W
%s*synth2B
.	               10 Bit    Registers := 3     
2default:defaulth px
W
%s*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 28    
2default:defaulth px
W
%s*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 6     
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 5     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 47    
2default:defaulth px
5
%s*synth2 
+---RAMs : 
2default:defaulth px
W
%s*synth2B
.	              32K Bit         RAMs := 1     
2default:defaulth px
W
%s*synth2B
.	             1024 Bit         RAMs := 1     
2default:defaulth px
5
%s*synth2 
+---ROMs : 
2default:defaulth px
W
%s*synth2B
.	                              ROMs := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	  13 Input     24 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input     17 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  10 Input     16 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      9 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  14 Input      8 Bit        Muxes := 3     
2default:defaulth px
W
%s*synth2B
.	   3 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 31    
2default:defaulth px
W
%s*synth2B
.	  29 Input      8 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  13 Input      8 Bit        Muxes := 8     
2default:defaulth px
W
%s*synth2B
.	   4 Input      8 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	  47 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  10 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  10 Input      4 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  13 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  20 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  26 Input      4 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  29 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input      2 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 35    
2default:defaulth px
W
%s*synth2B
.	  29 Input      1 Bit        Muxes := 9     
2default:defaulth px
W
%s*synth2B
.	  10 Input      1 Bit        Muxes := 8     
2default:defaulth px
W
%s*synth2B
.	   5 Input      1 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  13 Input      1 Bit        Muxes := 17    
2default:defaulth px
W
%s*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Finished RTL Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
V
%s*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Hierarchical RTL Component report 
2default:defaulth px
7
%s*synth2"
Module Timer 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth px
5
%s*synth2 
Module ALU 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	  14 Input      8 Bit        Muxes := 3     
2default:defaulth px
;
%s*synth2&
Module Processor 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit       Adders := 3     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   3 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	  29 Input      8 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  47 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  29 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  29 Input      1 Bit        Muxes := 9     
2default:defaulth px
5
%s*synth2 
Module ROM 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
5
%s*synth2 
+---ROMs : 
2default:defaulth px
W
%s*synth2B
.	                              ROMs := 1     
2default:defaulth px
5
%s*synth2 
Module RAM 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
5
%s*synth2 
+---RAMs : 
2default:defaulth px
W
%s*synth2B
.	             1024 Bit         RAMs := 1     
2default:defaulth px
B
%s*synth2-
Module MouseTransmitter 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth px
5
%s*synth2 
+---XORs : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Wide XORs := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	  10 Input     16 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  10 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  10 Input      1 Bit        Muxes := 8     
2default:defaulth px
?
%s*synth2*
Module MouseReceiver 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth px
5
%s*synth2 
+---XORs : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Wide XORs := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input     17 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input      2 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth px
W
%s*synth2B
.	   5 Input      1 Bit        Muxes := 4     
2default:defaulth px
?
%s*synth2*
Module MouseMasterSM 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	  13 Input     24 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  13 Input      8 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  13 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  20 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  13 Input      1 Bit        Muxes := 9     
2default:defaulth px
B
%s*synth2-
Module MouseTransceiver 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      9 Bit       Adders := 2     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      9 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 6     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth px
;
%s*synth2&
Module Mouse_BUS 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   4 Input      8 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth px
A
%s*synth2,
Module Generic_counter 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth px
Q
%s*synth2<
(Module Generic_counter__parameterized0 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
Q
%s*synth2<
(Module Generic_counter__parameterized1 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
=
%s*synth2(
Module VGA_Sig_Gen 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth px
<
%s*synth2'
Module VGA_Buffer 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth px
5
%s*synth2 
+---RAMs : 
2default:defaulth px
W
%s*synth2B
.	              32K Bit         RAMs := 1     
2default:defaulth px
5
%s*synth2 
Module VGA 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth px
;
%s*synth2&
Module TenHz_cnt 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
A
%s*synth2,
Module IRTransmitterSM 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  13 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  26 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  13 Input      1 Bit        Muxes := 2     
2default:defaulth px
Q
%s*synth2<
(Module IRTransmitterSM__parameterized0 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  13 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  26 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  13 Input      1 Bit        Muxes := 2     
2default:defaulth px
Q
%s*synth2<
(Module IRTransmitterSM__parameterized1 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  13 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  26 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  13 Input      1 Bit        Muxes := 2     
2default:defaulth px
Q
%s*synth2<
(Module IRTransmitterSM__parameterized2 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  13 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  26 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  13 Input      1 Bit        Muxes := 2     
2default:defaulth px
?
%s*synth2*
Module IRTransmitter 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth px
Q
%s*synth2<
(Module Generic_counter__parameterized2 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
B
%s*synth2-
Module Multiplexer_4way 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth px
=
%s*synth2(
Module seg7decoder 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth px
;
%s*synth2&
Module Disp_Seg7 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	  10 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  10 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth px
W
%s*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth px
:
%s*synth2%
Module LEDS_BUS 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth px
C
%s*synth2.
Module Slideswitches_BUS 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
X
%s*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
E
%s*synth20
Start Part Resource Summary
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2k
WPart Resources:
DSPs: 120 (col length:60)
BRAMs: 150 (col length: RAMB18 60 RAMB36 30)
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Finished Part Resource Summary
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Start Parallel Synthesis Optimization  : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
K
%s*synth26
"Start Cross Boundary Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
DownCounter2default:default2
322default:default2
182default:defaultZ8-5545h px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
Timer2default:default2
322default:default2
182default:defaultZ8-5545h px

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2&
TransmitTimerValue2default:defaultZ8-5546h px
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

Next_State2default:defaultZ8-5546h px
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

Next_State2default:defaultZ8-5546h px
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
Next_ByteReceived2default:defaultZ8-5546h px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

Next_State2default:default2
242default:default2
182default:defaultZ8-5545h px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

triggerOut2default:default2
242default:default2
182default:defaultZ8-5545h px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

triggerOut2default:default2
242default:default2
182default:defaultZ8-5545h px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

triggerOut2default:default2
242default:default2
182default:defaultZ8-5545h px
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

triggerOut2default:default2
242default:default2
182default:defaultZ8-5545h px
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Carrier2default:defaultZ8-5546h px
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Carrier2default:defaultZ8-5546h px
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Carrier2default:defaultZ8-5546h px
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Carrier2default:defaultZ8-5546h px
q
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
LEDS2default:defaultZ8-5546h px
�
�The signal %s is implemented as block RAM but is better mapped onto distributed LUT RAM for the following reason(s): The *depth (%s address bits)* is shallow. Please use attribute (* ram_style = "distributed" *) to instruct Vivado to infer distributed LUT RAM.
4016*oasys2 
ROM/DATA_reg2default:default2
82default:defaultZ8-5562h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Cross Boundary Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:22 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
~Finished Parallel Reinference  : Time (s): cpu = 00:00:15 ; elapsed = 00:00:22 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
�
�The signal %s is implemented as block RAM but is better mapped onto distributed LUT RAM for the following reason(s): The *depth (%s address bits)* is shallow. Please use attribute (* ram_style = "distributed" *) to instruct Vivado to infer distributed LUT RAM.
4016*oasys2
RAM/Mem_reg2default:default2
72default:defaultZ8-5562h px
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
/
%s*synth2

ROM:
2default:defaulth px
f
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px
g
%s*synth2R
>|Module Name | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px
f
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px
g
%s*synth2R
>|ROM         | extrom     | 256x8         | Block RAM      | 
2default:defaulth px
g
%s*synth2R
>|seg7decoder | rom        | 32x7          | LUT            | 
2default:defaulth px
g
%s*synth2R
>|Disp_Seg7   | rom        | 32x7          | LUT            | 
2default:defaulth px
g
%s*synth2R
>|TopLevel    | extrom     | 256x8         | Block RAM      | 
2default:defaulth px
g
%s*synth2R
>+------------+------------+---------------+----------------+

2default:defaulth px
5
%s*synth2 

Block RAM:
2default:defaulth px
�
%s*synth2�
�+------------+----------------------+------------------------+---+---+------------------------+---+---+--------------+--------+--------+------------------------+
2default:defaulth px
�
%s*synth2�
�|Module Name | RTL Object           | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | OUT_REG      | RAMB18 | RAMB36 | Hierarchical Name      | 
2default:defaulth px
�
%s*synth2�
�+------------+----------------------+------------------------+---+---+------------------------+---+---+--------------+--------+--------+------------------------+
2default:defaulth px
�
%s*synth2�
�|TopLevel    | RAM/Mem_reg          | 128 x 8(READ_FIRST)    | W | R |                        |   |   | Port A       | 1      | 0      | TopLevel/extram__3     | 
2default:defaulth px
�
%s*synth2�
�|TopLevel    | Frame_Buffer/Mem_reg | 32 K x 1               | W |   | 32 K x 1(WRITE_FIRST)  |   | R | Port A and B | 0      | 1      | TopLevel/VGA/extram__5 | 
2default:defaulth px
�
%s*synth2�
�+------------+----------------------+------------------------+---+---+------------------------+---+---+--------------+--------+--------+------------------------+

2default:defaulth px
�
%s*synth2�
�Note: The table shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. "Hierarchical Name" reflects the Block RAM name as it appears in the hierarchical module and only part of it is displayed.
2default:defaulth px
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2A
-microProcessor/\CurrProgCounterOffset_reg[1] 2default:defaultZ8-3333h px
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2+
seg7/\DecCount3_reg[2] 2default:defaultZ8-3333h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\CurrProgCounterOffset_reg[1] 2default:default2
	Processor2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\MT/T/Curr_ByteToSend_reg[7] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\MT/T/Curr_ByteToSend_reg[6] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\MT/T/Curr_ByteToSend_reg[5] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\MT/T/Curr_ByteToSend_reg[4] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\MT/T/Curr_ByteToSend_reg[3] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\MT/T/Curr_ByteToSend_reg[1] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
\MT/MSM/Curr_ByteToSend_reg[7] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
\MT/MSM/Curr_ByteToSend_reg[6] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
\MT/MSM/Curr_ByteToSend_reg[5] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
\MT/MSM/Curr_ByteToSend_reg[4] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
\MT/MSM/Curr_ByteToSend_reg[3] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
\MT/MSM/Curr_ByteToSend_reg[1] 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\MT/R/ClkMouseInDly_reg 2default:default2
	Mouse_BUS2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\vga/ADDRH_reg[1] 2default:default2
VGA2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\vga/ADDRH_reg[0] 2default:default2
VGA2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\vga/ADDRY_reg[1] 2default:default2
VGA2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\vga/ADDRY_reg[0] 2default:default2
VGA2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\data_input_reg[7] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\data_input_reg[6] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\data_input_reg[5] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\data_input_reg[4] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\dot_input_reg[3] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\dot_input_reg[2] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\dot_input_reg[1] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\DecCount1_reg[3] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\DecCount1_reg[1] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\DecCount2_reg[2] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\DecCount2_reg[1] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\DecCount3_reg[2] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\DecCount2_reg[3] 2default:default2
	Disp_Seg72default:defaultZ8-3332h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,
Start Area Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
zFinished Area Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:31 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Parallel Area Optimization  : Time (s): cpu = 00:00:20 ; elapsed = 00:00:31 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
�
%s*synth2�
�Finished Parallel Synthesis Optimization  : Time (s): cpu = 00:00:20 ; elapsed = 00:00:31 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
C
%s*synth2.
Start Timing Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
O
%s*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:28 ; elapsed = 00:00:42 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:00:42 . Memory (MB): peak = 597.996 ; gain = 419.359
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-
Start Technology Mapping
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\mouse/MT/Store_MouseY_reg[7] 2default:default2
TopLevel2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
Data_To_Send_reg__0i_11992default:default2
TopLevel2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
Data_To_Send_reg__0i_12002default:default2
TopLevel2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
Data_To_Send_reg__0i_12012default:default2
TopLevel2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
Data_To_Send_reg__0i_12022default:default2
TopLevel2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
Data_To_Send_reg__0i_12032default:default2
TopLevel2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
Data_To_Send_reg__0i_12042default:default2
TopLevel2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
Data_To_Send_reg__0i_12052default:default2
TopLevel2default:defaultZ8-3332h px
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2!
\RAM/Mem_reg 2default:defaultZ8-4480h px
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2.
\VGA/Frame_Buffer/Mem_reg 2default:defaultZ8-4480h px
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2"
\ROM/DATA_reg 2default:defaultZ8-4480h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:30 ; elapsed = 00:00:45 . Memory (MB): peak = 631.152 ; gain = 452.516
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
<
%s*synth2'
Start IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
E
%s*synth20
Start Final Netlist Cleanup
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Finished Final Netlist Cleanup
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:30 ; elapsed = 00:00:46 . Memory (MB): peak = 631.152 ; gain = 452.516
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,

Report Check Netlist: 
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Start Renaming Generated Instances
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:30 ; elapsed = 00:00:46 . Memory (MB): peak = 631.152 ; gain = 452.516
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
I
%s*synth24
 Start Rebuilding User Hierarchy
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:30 ; elapsed = 00:00:46 . Memory (MB): peak = 631.152 ; gain = 452.516
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
~Start Renaming Generated Ports : Time (s): cpu = 00:00:30 ; elapsed = 00:00:46 . Memory (MB): peak = 631.152 ; gain = 452.516
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:30 ; elapsed = 00:00:46 . Memory (MB): peak = 631.152 ; gain = 452.516
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Start Writing Synthesis Report
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
>
%s*synth2)

Report BlackBoxes: 
2default:defaulth px
L
%s*synth27
#+------+--------------+----------+
2default:defaulth px
L
%s*synth27
#|      |BlackBox name |Instances |
2default:defaulth px
L
%s*synth27
#+------+--------------+----------+
2default:defaulth px
L
%s*synth27
#|1     |ila_0         |         1|
2default:defaulth px
L
%s*synth27
#+------+--------------+----------+
2default:defaulth px
>
%s*synth2)

Report Cell Usage: 
2default:defaulth px
E
%s*synth20
+------+-----------+------+
2default:defaulth px
E
%s*synth20
|      |Cell       |Count |
2default:defaulth px
E
%s*synth20
+------+-----------+------+
2default:defaulth px
E
%s*synth20
|1     |ila_0      |     1|
2default:defaulth px
E
%s*synth20
|2     |BUFG       |     1|
2default:defaulth px
E
%s*synth20
|3     |CARRY4     |    97|
2default:defaulth px
E
%s*synth20
|4     |LUT1       |   322|
2default:defaulth px
E
%s*synth20
|5     |LUT2       |   173|
2default:defaulth px
E
%s*synth20
|6     |LUT3       |   132|
2default:defaulth px
E
%s*synth20
|7     |LUT4       |   174|
2default:defaulth px
E
%s*synth20
|8     |LUT5       |   341|
2default:defaulth px
E
%s*synth20
|9     |LUT6       |   599|
2default:defaulth px
E
%s*synth20
|10    |MUXF7      |    59|
2default:defaulth px
E
%s*synth20
|11    |MUXF8      |    13|
2default:defaulth px
E
%s*synth20
|12    |RAMB18E1   |     1|
2default:defaulth px
E
%s*synth20
|13    |RAMB18E1_1 |     1|
2default:defaulth px
E
%s*synth20
|14    |RAMB36E1   |     1|
2default:defaulth px
E
%s*synth20
|15    |FDRE       |   676|
2default:defaulth px
E
%s*synth20
|16    |FDSE       |    20|
2default:defaulth px
E
%s*synth20
|17    |IBUF       |    18|
2default:defaulth px
E
%s*synth20
|18    |IOBUF      |     2|
2default:defaulth px
E
%s*synth20
|19    |OBUF       |    39|
2default:defaulth px
E
%s*synth20
+------+-----------+------+
2default:defaulth px
B
%s*synth2-

Report Instance Areas: 
2default:defaulth px
r
%s*synth2]
I+------+-----------------------+--------------------------------+------+
2default:defaulth px
r
%s*synth2]
I|      |Instance               |Module                          |Cells |
2default:defaulth px
r
%s*synth2]
I+------+-----------------------+--------------------------------+------+
2default:defaulth px
r
%s*synth2]
I|1     |top                    |                                |  2669|
2default:defaulth px
r
%s*synth2]
I|2     |  led                  |LEDS_BUS                        |    16|
2default:defaulth px
r
%s*synth2]
I|3     |  IRTransmitterWrapper |IRTransmitter                   |  1148|
2default:defaulth px
r
%s*synth2]
I|4     |    TenHz_cnt_BLU      |TenHz_cnt__1                    |    96|
2default:defaulth px
r
%s*synth2]
I|5     |    TenHz_cnt_YLW      |TenHz_cnt__2                    |    96|
2default:defaulth px
r
%s*synth2]
I|6     |    TenHz_cnt_GRN      |TenHz_cnt__3                    |    96|
2default:defaulth px
r
%s*synth2]
I|7     |    TenHz_cnt_RED      |TenHz_cnt                       |    96|
2default:defaulth px
r
%s*synth2]
I|8     |    BLUCarSM           |IRTransmitterSM                 |   207|
2default:defaulth px
r
%s*synth2]
I|9     |    YLWCarSM           |IRTransmitterSM__parameterized0 |   198|
2default:defaulth px
r
%s*synth2]
I|10    |    GRNCarSM           |IRTransmitterSM__parameterized1 |   174|
2default:defaulth px
r
%s*synth2]
I|11    |    REDCarSM           |IRTransmitterSM__parameterized2 |   173|
2default:defaulth px
r
%s*synth2]
I|12    |  RAM                  |RAM                             |     2|
2default:defaulth px
r
%s*synth2]
I|13    |  ROM                  |ROM                             |    91|
2default:defaulth px
r
%s*synth2]
I|14    |  Timer                |Timer                           |   293|
2default:defaulth px
r
%s*synth2]
I|15    |  VGA                  |VGA                             |   151|
2default:defaulth px
r
%s*synth2]
I|16    |    Frame_Buffer       |VGA_Buffer                      |     9|
2default:defaulth px
r
%s*synth2]
I|17    |    vga                |VGA_Sig_Gen                     |   102|
2default:defaulth px
r
%s*synth2]
I|18    |      FreqCounter      |Generic_counter_0               |     6|
2default:defaulth px
r
%s*synth2]
I|19    |      HorizCounter     |Generic_counter__parameterized0 |    40|
2default:defaulth px
r
%s*synth2]
I|20    |      VerticalCounter  |Generic_counter__parameterized1 |    31|
2default:defaulth px
r
%s*synth2]
I|21    |  microProcessor       |Processor                       |   306|
2default:defaulth px
r
%s*synth2]
I|22    |    ALU0               |ALU                             |    72|
2default:defaulth px
r
%s*synth2]
I|23    |  mouse                |Mouse_BUS                       |   464|
2default:defaulth px
r
%s*synth2]
I|24    |    MT                 |MouseTransceiver                |   446|
2default:defaulth px
r
%s*synth2]
I|25    |      MSM              |MouseMasterSM                   |   139|
2default:defaulth px
r
%s*synth2]
I|26    |      R                |MouseReceiver                   |   136|
2default:defaulth px
r
%s*synth2]
I|27    |      T                |MouseTransmitter                |    93|
2default:defaulth px
r
%s*synth2]
I|28    |  seg7                 |Disp_Seg7                       |    92|
2default:defaulth px
r
%s*synth2]
I|29    |    Bit17Counter       |Generic_counter__parameterized2 |    43|
2default:defaulth px
r
%s*synth2]
I|30    |    Bit2Counter        |Generic_counter                 |    15|
2default:defaulth px
r
%s*synth2]
I|31    |    Mux4               |Multiplexer_4way                |     5|
2default:defaulth px
r
%s*synth2]
I|32    |  slideSwitches        |Slideswitches_BUS               |    41|
2default:defaulth px
r
%s*synth2]
I+------+-----------------------+--------------------------------+------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:30 ; elapsed = 00:00:46 . Memory (MB): peak = 631.152 ; gain = 452.516
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
p
%s*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 39 warnings.
2default:defaulth px
�
%s*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:22 ; elapsed = 00:00:38 . Memory (MB): peak = 631.152 ; gain = 118.254
2default:defaulth px
�
%s*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:31 ; elapsed = 00:00:46 . Memory (MB): peak = 631.152 ; gain = 452.516
2default:defaulth px
?
 Translating synthesized netlist
350*projectZ1-571h px
d
-Analyzing %s Unisim elements for replacement
17*netlist2
1202default:defaultZ29-17h px
g
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px
H
)Preparing netlist for logic optimization
349*projectZ1-570h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px
�
!Unisim Transformation Summary:
%s111*project2k
W  A total of 2 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 2 instances
2default:defaultZ1-111h px
R
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2132default:default2
432default:default2
02default:default2
02default:defaultZ4-41h px
[
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:302default:default2
00:00:442default:default2
631.1522default:default2
413.3952default:defaultZ17-268h px
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.106 . Memory (MB): peak = 631.152 ; gain = 0.000
*commonh px
}
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Apr 03 14:55:28 20232default:defaultZ17-206h px
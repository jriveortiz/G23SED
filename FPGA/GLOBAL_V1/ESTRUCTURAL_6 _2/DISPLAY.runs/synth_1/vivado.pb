
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:132

00:00:142	
540.8282	
232.828Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/utils_1/imports/synth_1/DISPLAY_PUNTOS.dcp}Z12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/utils_1/imports/synth_1/DISPLAY_PUNTOS.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
c
Command: %s
53*	vivadotcl22
0synth_design -top YAHTZEE -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a100tcsg324-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
14824Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1412.578 ; gain = 450.426
h px� 
�
synthesizing module '%s'638*oasys2	
YAHTZEE2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
298@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
FILTRO_BOTON2�
|C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/FILTRO_BOTON.vhd2
138@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
	SYNCHRNZR2}
yC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/SYNCHRNZR.vhd2
108@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	SYNCHRNZR2
02
12}
yC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/SYNCHRNZR.vhd2
108@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	EDGEDTCTR2}
yC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/EDGEDTCTR.vhd2
108@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	EDGEDTCTR2
02
12}
yC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/EDGEDTCTR.vhd2
108@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
FILTRO_BOTON2
02
12�
|C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/FILTRO_BOTON.vhd2
138@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
FSM2w
sC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/FSM.vhd2
418@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
FSM2
02
12w
sC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/FSM.vhd2
418@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
DISPLAY_PUNTOS2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/DISPLAY.vhd2
258@Z8-638h px� 
�
synthesizing module '%s'638*oasys2

DIVISOR_HZ2~
zC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/DIVISOR_HZ.vhd2
128@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

DIVISOR_HZ2
02
12~
zC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/DIVISOR_HZ.vhd2
128@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
unsigned_to_bcd2�
C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/unsigned_to_bcd.vhd2
158@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

centenas2�
C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/unsigned_to_bcd.vhd2
198@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2	
decenas2�
C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/unsigned_to_bcd.vhd2
198@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

unidades2�
C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/unsigned_to_bcd.vhd2
198@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
unsigned_to_bcd2
02
12�
C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/unsigned_to_bcd.vhd2
158@Z8-256h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
clk_intermitente2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/DISPLAY.vhd2
488@Z8-614h px� 
�
synthesizing module '%s'638*oasys2	
DECODER2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/DECODER.vhd2
118@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
DECODER2
02
12{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/DECODER.vhd2
118@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
FILTRO_LETRAS2�
}C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/FILTRO_LETRAS.vhd2
198@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
dados2�
}C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/FILTRO_LETRAS.vhd2
238@Z8-614h px� 
�
synthesizing module '%s'638*oasys2
DECODER_LETRAS2�
~C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/DECODER_LETRAS.vhd2
118@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
DECODER_LETRAS2
02
12�
~C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/DECODER_LETRAS.vhd2
118@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
FILTRO_LETRAS2
02
12�
}C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/FILTRO_LETRAS.vhd2
198@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
DISPLAY_PUNTOS2
02
12{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/DISPLAY.vhd2
258@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
generaciondados2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/generaciondados.vhd2
198@Z8-638h px� 
H
%s
*synth20
.	Parameter ancho bound to: 3 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
52
	LFSR_inst2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/generaciondados.vhd2
458@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
168@Z8-638h px� 
H
%s
*synth20
.	Parameter ancho bound to: 3 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Generador_LFSR2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
168@Z8-256h px� 
H
%s
*synth20
.	Parameter ancho bound to: 4 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
52
	LFSR_inst2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/generaciondados.vhd2
458@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
Generador_LFSR__parameterized12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
168@Z8-638h px� 
H
%s
*synth20
.	Parameter ancho bound to: 4 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
Generador_LFSR__parameterized12
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
168@Z8-256h px� 
H
%s
*synth20
.	Parameter ancho bound to: 5 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
52
	LFSR_inst2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/generaciondados.vhd2
458@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
Generador_LFSR__parameterized32�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
168@Z8-638h px� 
H
%s
*synth20
.	Parameter ancho bound to: 5 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
Generador_LFSR__parameterized32
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
168@Z8-256h px� 
H
%s
*synth20
.	Parameter ancho bound to: 6 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
52
	LFSR_inst2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/generaciondados.vhd2
458@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
Generador_LFSR__parameterized52�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
168@Z8-638h px� 
H
%s
*synth20
.	Parameter ancho bound to: 6 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
Generador_LFSR__parameterized52
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
168@Z8-256h px� 
H
%s
*synth20
.	Parameter ancho bound to: 7 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
52
	LFSR_inst2
Generador_LFSR2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/generaciondados.vhd2
458@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
Generador_LFSR__parameterized72�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
168@Z8-638h px� 
H
%s
*synth20
.	Parameter ancho bound to: 7 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
Generador_LFSR__parameterized72
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/top.vhd2
168@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
generaciondados2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/dados.srcs/sources_1/new/generaciondados.vhd2
198@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	punt_glob2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
238@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

caso_yahtz2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/caso_yahtz.vhd2
362
instance_caso_yahtz2

caso_yahtz2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
2178@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

caso_yahtz2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/caso_yahtz.vhd2
438@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

caso_yahtz2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/caso_yahtz.vhd2
438@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	case_i_ns2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 1 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	case_i_ns2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
case_i_ns__parameterized02�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 2 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
case_i_ns__parameterized02
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
case_i_ns__parameterized12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 3 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
case_i_ns__parameterized12
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
case_i_ns__parameterized22�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 4 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
case_i_ns__parameterized22
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
case_i_ns__parameterized32�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 5 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
case_i_ns__parameterized32
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
case_i_ns__parameterized42�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 6 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
case_i_ns__parameterized42
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
248@Z8-256h px� 
H
%s
*synth20
.	Parameter param bound to: 3 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter res bound to: 15 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

case_tcy2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
152
instance_case_t2

case_tcy2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
3118@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

case_tcy2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
338@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 3 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter res bound to: 15 - type: integer 
h p
x
� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
dados2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
388@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

case_tcy2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
338@Z8-256h px� 
H
%s
*synth20
.	Parameter param bound to: 4 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter res bound to: 20 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

case_tcy2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
152
instance_case_c2

case_tcy2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
3278@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
case_tcy__parameterized12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
338@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 4 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter res bound to: 20 - type: integer 
h p
x
� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
dados2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
388@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
case_tcy__parameterized12
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
338@Z8-256h px� 
H
%s
*synth20
.	Parameter param bound to: 5 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter res bound to: 50 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

case_tcy2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
152
instance_case_y2

case_tcy2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
3438@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
case_tcy__parameterized32�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
338@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 5 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter res bound to: 50 - type: integer 
h p
x
� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
dados2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
388@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
case_tcy__parameterized32
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
338@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

caso_fullh2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/new/caso_fullh.vhd2
162
instance_caso_fullh2

caso_fullh2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
3608@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

caso_fullh2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/new/caso_fullh.vhd2
308@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
dados2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/new/caso_fullh.vhd2
348@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

caso_fullh2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/new/caso_fullh.vhd2
308@Z8-256h px� 
H
%s
*synth20
.	Parameter param bound to: 3 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter res bound to: 20 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
case_escaleras2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_escaleras.vhd2
82
instance_caso_ep2
case_escaleras2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
3728@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
case_escaleras2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_escaleras.vhd2
258@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 3 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter res bound to: 20 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
case_escaleras2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_escaleras.vhd2
258@Z8-256h px� 
H
%s
*synth20
.	Parameter param bound to: 4 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter res bound to: 25 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
case_escaleras2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_escaleras.vhd2
82
instance_caso_eg2
case_escaleras2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
3888@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
case_escaleras__parameterized12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_escaleras.vhd2
258@Z8-638h px� 
H
%s
*synth20
.	Parameter param bound to: 4 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter res bound to: 25 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
case_escaleras__parameterized12
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_escaleras.vhd2
258@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
caso_magico2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/new/caso_magico.vhd2
152
instance_caso_m2
caso_magico2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
4038@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
caso_magico2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/new/caso_magico.vhd2
298@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
caso_magico2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/new/caso_magico.vhd2
298@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
caso_turnos2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/new/caso_turnos.vhd2
158@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
caso_turnos2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/new/caso_turnos.vhd2
158@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

punt_total2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
102
instancia_punt_total2

punt_total2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
4248@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

punt_total2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
468@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

punt_total2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
468@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
demux2
}C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/demux.vhd2
82
instancia_demux2
demux2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
4608@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
demux2�
}C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/demux.vhd2
328@Z8-638h px� 
�
default block is never used226*oasys2�
}C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/demux.vhd2
358@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
demux2
02
12�
}C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/demux.vhd2
328@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	punt_glob2
02
12�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/punt_glob.vhd2
238@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
MUX_10_UNSIGNED2�
C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/MUX_10_UNSIGNED.vhd2
168@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MUX_10_UNSIGNED2
02
12�
C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/MUX_10_UNSIGNED.vhd2
168@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
YAHTZEE2
02
12{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
298@Z8-256h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2

punt_totalZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][31]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][30]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][29]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][28]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][27]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][26]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][25]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][24]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][23]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][22]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][21]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][20]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][19]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][18]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][17]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][16]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][15]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][14]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][13]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][12]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][11]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[4][10]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][31]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][30]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][29]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][28]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][27]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][26]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][25]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][24]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][23]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][22]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][21]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][20]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][19]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][18]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][17]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][16]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][15]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][14]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][13]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][12]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][11]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[3][10]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][31]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][30]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][29]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][28]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][27]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][26]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][25]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][24]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][23]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][22]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][21]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][20]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][19]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][18]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][17]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][16]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][15]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][14]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][13]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][12]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][11]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[2][10]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][31]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][30]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][29]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][28]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][27]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][26]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][25]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][24]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][23]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][22]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][21]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][20]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][19]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][18]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][17]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][16]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][15]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][14]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][13]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][12]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][11]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[1][10]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][31]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][30]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][29]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][28]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][27]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][26]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][25]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][24]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][23]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][22]2
caso_magicoZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
dados[0][21]2
caso_magicoZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 1542.391 ; gain = 580.238
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1542.391 ; gain = 580.238
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1542.391 ; gain = 580.238
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1962

1542.3912
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/constrs_1/imports/digilent-xdc-master/Nexys-4-DDR-Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/constrs_1/imports/digilent-xdc-master/Nexys-4-DDR-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/constrs_1/imports/digilent-xdc-master/Nexys-4-DDR-Master.xdc2
.Xil/YAHTZEE_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1569.4222
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0162

1569.4222
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1569.422 ; gain = 607.270
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1569.422 ; gain = 607.270
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1569.422 ; gain = 607.270
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
g
3inferred FSM for state register '%s' in module '%s'802*oasys2
	etapa_reg2
FSMZ8-802h px� 
p
3inferred FSM for state register '%s' in module '%s'802*oasys2
indice_jugador_reg2
FSMZ8-802h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
resultado_i_reg2
322
102�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
558@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
resultado_i_reg2
322
102�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
558@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
resultado_i_reg2
322
102�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
558@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
resultado_i_reg2
322
102�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
558@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
resultado_i_reg2
322
102�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
558@Z8-3936h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                               01 |                               01
h p
x
� 

%s
*synth2
*
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
u
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
indice_jugador_reg2
FSMZ8-3898h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 iSTATE5 |                 0000000000000001 |                            00001
h p
x
� 
y
%s
*synth2a
_                 iSTATE3 |                 0000000000000010 |                            00010
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                 0000000000000100 |                            00011
h p
x
� 
y
%s
*synth2a
_                iSTATE13 |                 0000000000001000 |                            00100
h p
x
� 
y
%s
*synth2a
_                iSTATE12 |                 0000000000010000 |                            00101
h p
x
� 
y
%s
*synth2a
_                 iSTATE9 |                 0000000000100000 |                            00110
h p
x
� 
y
%s
*synth2a
_                 iSTATE8 |                 0000000001000000 |                            00111
h p
x
� 
y
%s
*synth2a
_                iSTATE11 |                 0000000010000000 |                            01000
h p
x
� 
y
%s
*synth2a
_                iSTATE10 |                 0000000100000000 |                            01001
h p
x
� 
y
%s
*synth2a
_                 iSTATE7 |                 0000001000000000 |                            01010
h p
x
� 
y
%s
*synth2a
_                 iSTATE6 |                 0000010000000000 |                            01011
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                 0000100000000000 |                            01100
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                 0001000000000000 |                            01101
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                 0010000000000000 |                            01110
h p
x
� 
y
%s
*synth2a
_                iSTATE14 |                 0100000000000000 |                            01111
h p
x
� 
y
%s
*synth2a
_                 iSTATE4 |                 1000000000000000 |                            10000
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	etapa_reg2	
one-hot2
FSMZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
resultado_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
578@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
resultado_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
578@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
resultado_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
578@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
resultado_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
578@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
resultado_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
578@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
resultado_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_i_ns.vhd2
578@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
resultado_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
758@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
resultado_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
758@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
resultado_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/imports/new/case_tcy.vhd2
758@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
resultado_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/sources_1/new/caso_fullh.vhd2
778@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

salida_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
988@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
ready_total_reg2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
548@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1569.422 ; gain = 607.270
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   5 Input   32 Bit       Adders := 10    
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 16    
h p
x
� 
F
%s
*synth2.
,	   5 Input   10 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 28    
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 112   
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 118   
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 5     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 7     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               13 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 34    
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 7     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 43    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 80    
h p
x
� 
F
%s
*synth2.
,	  16 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 15    
h p
x
� 
F
%s
*synth2.
,	   2 Input   13 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	  16 Input   13 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   7 Input    8 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	  23 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 29    
h p
x
� 
F
%s
*synth2.
,	  16 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	  16 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  16 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  16 Input    1 Bit        Muxes := 14    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[0]2
case_i_ns__parameterized0__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[1]2
case_i_ns__parameterized2__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[0]2
case_i_ns__parameterized4__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_tcy__parameterized1__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_tcy__parameterized3__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
caso_fullh__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
ready_total_reg2
punt_total__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[0]2
case_i_ns__parameterized0Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[1]2
case_i_ns__parameterized2Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[0]2
case_i_ns__parameterized4Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_tcy__parameterized1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_tcy__parameterized3Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2

caso_fullhZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
ready_total_reg2

punt_totalZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_i_ns__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_i_ns__parameterized0__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_i_ns__parameterized2__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_i_ns__parameterized3__1Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
	case_i_nsZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_i_ns__parameterized0Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_i_ns__parameterized2Z8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
resultado_reg[9]2
case_i_ns__parameterized3Z8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:06 ; elapsed = 00:01:10 . Memory (MB): peak = 1569.422 ; gain = 607.270
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
_
%s*synth2G
E+---------------+-----------------+---------------+----------------+
h px� 
`
%s*synth2H
F|Module Name    | RTL Object      | Depth x Width | Implemented As | 
h px� 
_
%s*synth2G
E+---------------+-----------------+---------------+----------------+
h px� 
`
%s*synth2H
F|DECODER_LETRAS | segments        | 128x7         | LUT            | 
h px� 
`
%s*synth2H
F|DISPLAY_PUNTOS | D4/DL3/segments | 128x7         | LUT            | 
h px� 
`
%s*synth2H
F|DISPLAY_PUNTOS | D4/DL4/segments | 128x7         | LUT            | 
h px� 
`
%s*synth2H
F|DISPLAY_PUNTOS | D4/DL5/segments | 128x7         | LUT            | 
h px� 
`
%s*synth2H
F|DISPLAY_PUNTOS | D4/DL6/segments | 128x7         | LUT            | 
h px� 
`
%s*synth2H
F|DISPLAY_PUNTOS | D4/DL7/segments | 128x7         | LUT            | 
h px� 
`
%s*synth2H
F+---------------+-----------------+---------------+----------------+

h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:14 ; elapsed = 00:01:19 . Memory (MB): peak = 1569.422 ; gain = 607.270
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:01:17 ; elapsed = 00:01:21 . Memory (MB): peak = 1585.184 ; gain = 623.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
A
%s
*synth2)
'     0: sumador_inferredi_710/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
B
%s
*synth2*
(     1: sumador_inferredi_710/I1 (LUT2)
h p
x
� 
A
%s
*synth2)
'     2: sumador_inferredi_710/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
`
%s
*synth2H
FInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_710"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
A
%s
*synth2)
'     0: sumador_inferredi_711/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
B
%s
*synth2*
(     1: sumador_inferredi_711/I1 (LUT2)
h p
x
� 
A
%s
*synth2)
'     2: sumador_inferredi_711/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
`
%s
*synth2H
FInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_711"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
A
%s
*synth2)
'     0: sumador_inferredi_712/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
B
%s
*synth2*
(     1: sumador_inferredi_712/I1 (LUT2)
h p
x
� 
A
%s
*synth2)
'     2: sumador_inferredi_712/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
`
%s
*synth2H
FInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_712"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
B
%s
*synth2*
(     0: sumador_inferredi_1069/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
C
%s
*synth2+
)     1: sumador_inferredi_1069/I1 (LUT2)
h p
x
� 
B
%s
*synth2*
(     2: sumador_inferredi_1069/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
a
%s
*synth2I
GInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_1069"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
B
%s
*synth2*
(     0: sumador_inferredi_1070/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
C
%s
*synth2+
)     1: sumador_inferredi_1070/I1 (LUT2)
h p
x
� 
B
%s
*synth2*
(     2: sumador_inferredi_1070/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
a
%s
*synth2I
GInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_1070"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
B
%s
*synth2*
(     0: sumador_inferredi_1071/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
C
%s
*synth2+
)     1: sumador_inferredi_1071/I1 (LUT2)
h p
x
� 
B
%s
*synth2*
(     2: sumador_inferredi_1071/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
a
%s
*synth2I
GInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_1071"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
A
%s
*synth2)
'     0: sumador_inferredi_713/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
B
%s
*synth2*
(     1: sumador_inferredi_713/I1 (LUT2)
h p
x
� 
A
%s
*synth2)
'     2: sumador_inferredi_713/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
`
%s
*synth2H
FInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_713"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
A
%s
*synth2)
'     0: sumador_inferredi_714/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
B
%s
*synth2*
(     1: sumador_inferredi_714/I1 (LUT2)
h p
x
� 
A
%s
*synth2)
'     2: sumador_inferredi_714/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
`
%s
*synth2H
FInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_714"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
A
%s
*synth2)
'     0: sumador_inferredi_715/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
B
%s
*synth2*
(     1: sumador_inferredi_715/I1 (LUT2)
h p
x
� 
A
%s
*synth2)
'     2: sumador_inferredi_715/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
`
%s
*synth2H
FInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_715"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
A
%s
*synth2)
'     0: sumador_inferredi_716/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
B
%s
*synth2*
(     1: sumador_inferredi_716/I1 (LUT2)
h p
x
� 
A
%s
*synth2)
'     2: sumador_inferredi_716/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
`
%s
*synth2H
FInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_716"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
A
%s
*synth2)
'     0: sumador_inferredi_717/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
B
%s
*synth2*
(     1: sumador_inferredi_717/I1 (LUT2)
h p
x
� 
A
%s
*synth2)
'     2: sumador_inferredi_717/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
`
%s
*synth2H
FInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_717"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
A
%s
*synth2)
'     0: sumador_inferredi_718/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
B
%s
*synth2*
(     1: sumador_inferredi_718/I1 (LUT2)
h p
x
� 
A
%s
*synth2)
'     2: sumador_inferredi_718/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
`
%s
*synth2H
FInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_718"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
A
%s
*synth2)
'     0: sumador_inferredi_719/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
B
%s
*synth2*
(     1: sumador_inferredi_719/I1 (LUT2)
h p
x
� 
A
%s
*synth2)
'     2: sumador_inferredi_719/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
`
%s
*synth2H
FInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_719"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
B
%s
*synth2*
(     0: sumador_inferredi_1072/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
C
%s
*synth2+
)     1: sumador_inferredi_1072/I1 (LUT2)
h p
x
� 
B
%s
*synth2*
(     2: sumador_inferredi_1072/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
a
%s
*synth2I
GInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_1072"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
B
%s
*synth2*
(     0: sumador_inferredi_1073/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
C
%s
*synth2+
)     1: sumador_inferredi_1073/I1 (LUT2)
h p
x
� 
B
%s
*synth2*
(     2: sumador_inferredi_1073/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
a
%s
*synth2I
GInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_1073"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
B
%s
*synth2*
(     0: sumador_inferredi_1074/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
C
%s
*synth2+
)     1: sumador_inferredi_1074/I1 (LUT2)
h p
x
� 
B
%s
*synth2*
(     2: sumador_inferredi_1074/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
a
%s
*synth2I
GInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_1074"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
B
%s
*synth2*
(     0: sumador_inferredi_1075/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
C
%s
*synth2+
)     1: sumador_inferredi_1075/I1 (LUT2)
h p
x
� 
B
%s
*synth2*
(     2: sumador_inferredi_1075/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
a
%s
*synth2I
GInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_1075"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
B
%s
*synth2*
(     0: sumador_inferredi_1076/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
C
%s
*synth2+
)     1: sumador_inferredi_1076/I1 (LUT2)
h p
x
� 
B
%s
*synth2*
(     2: sumador_inferredi_1076/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
a
%s
*synth2I
GInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_1076"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
B
%s
*synth2*
(     0: sumador_inferredi_1077/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
C
%s
*synth2+
)     1: sumador_inferredi_1077/I1 (LUT2)
h p
x
� 
B
%s
*synth2*
(     2: sumador_inferredi_1077/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
a
%s
*synth2I
GInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_1077"
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
B
%s
*synth2*
(     0: sumador_inferredi_1078/O (LUT2)
h p
x
� 
�
%s
*synth2�
�      [C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd:52]
h p
x
� 
C
%s
*synth2+
)     1: sumador_inferredi_1078/I1 (LUT2)
h p
x
� 
B
%s
*synth2*
(     2: sumador_inferredi_1078/O (LUT2)
h p
x
� 
�
found timing loop.295*oasys2{
wC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/new/YAHTZEE.vhd2
98@Z8-295h px� 
a
%s
*synth2I
GInferred a: "set_disable_timing -from I1 -to O sumador_inferredi_1078"
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:01:19 ; elapsed = 00:01:23 . Memory (MB): peak = 1614.492 ; gain = 652.340
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:01:27 ; elapsed = 00:01:32 . Memory (MB): peak = 1629.305 ; gain = 667.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:27 ; elapsed = 00:01:32 . Memory (MB): peak = 1629.305 ; gain = 667.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[9]2
1st2
salida_reg[9]_i_1/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[9]2
2nd25
3puntuaciones1/instancia_punt_total/sumador_reg[9]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[8]2
1st2
salida_reg[8]_i_1/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[8]2
2nd25
3puntuaciones1/instancia_punt_total/sumador_reg[8]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[7]2
1st2
salida_reg[7]_i_1/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[7]2
2nd25
3puntuaciones1/instancia_punt_total/sumador_reg[7]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[6]2
1st2
salida_reg[6]_i_1/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[6]2
2nd25
3puntuaciones1/instancia_punt_total/sumador_reg[6]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[5]2
1st2
salida_reg[5]_i_1/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[5]2
2nd25
3puntuaciones1/instancia_punt_total/sumador_reg[5]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[4]2
1st2
salida_reg[4]_i_1/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[4]2
2nd25
3puntuaciones1/instancia_punt_total/sumador_reg[4]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[3]2
1st2
salida_reg[3]_i_1/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[3]2
2nd25
3puntuaciones1/instancia_punt_total/sumador_reg[3]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[2]2
1st2
salida_reg[2]_i_1/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[2]2
2nd25
3puntuaciones1/instancia_punt_total/sumador_reg[2]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[1]2
1st2
salida_reg[1]_i_1/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[1]2
2nd25
3puntuaciones1/instancia_punt_total/sumador_reg[1]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[0]2
1st2
salida_reg[0]_i_1/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones1/instancia_punt_total/sumador[0]2
2nd25
3puntuaciones1/instancia_punt_total/sumador_reg[0]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[9]2
1st2
salida_reg[9]_i_1__0/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[9]2
2nd25
3puntuaciones2/instancia_punt_total/sumador_reg[9]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[8]2
1st2
salida_reg[8]_i_1__0/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[8]2
2nd25
3puntuaciones2/instancia_punt_total/sumador_reg[8]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[7]2
1st2
salida_reg[7]_i_1__0/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[7]2
2nd25
3puntuaciones2/instancia_punt_total/sumador_reg[7]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[6]2
1st2
salida_reg[6]_i_1__0/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[6]2
2nd25
3puntuaciones2/instancia_punt_total/sumador_reg[6]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[5]2
1st2
salida_reg[5]_i_1__0/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[5]2
2nd25
3puntuaciones2/instancia_punt_total/sumador_reg[5]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[4]2
1st2
salida_reg[4]_i_1__0/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[4]2
2nd25
3puntuaciones2/instancia_punt_total/sumador_reg[4]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[3]2
1st2
salida_reg[3]_i_1__0/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[3]2
2nd25
3puntuaciones2/instancia_punt_total/sumador_reg[3]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[2]2
1st2
salida_reg[2]_i_1__0/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[2]2
2nd25
3puntuaciones2/instancia_punt_total/sumador_reg[2]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[1]2
1st2
salida_reg[1]_i_1__0/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[1]2
2nd25
3puntuaciones2/instancia_punt_total/sumador_reg[1]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[0]2
1st2
salida_reg[0]_i_1__0/O2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
528@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2/
-puntuaciones2/instancia_punt_total/sumador[0]2
2nd25
3puntuaciones2/instancia_punt_total/sumador_reg[0]/Q2�
�C:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.srcs/sources_1/imports/new/punt_total.vhd2
538@Z8-6859h px� 
2
%s
*synth2

Report Check Netlist: 
h p
x
� 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
� 
c
%s
*synth2K
I|      |Item              |Errors |Warnings |Status |Description       |
h p
x
� 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
� 
c
%s
*synth2K
I|1     |multi_driven_nets |      0|       20|Failed |Multi driven nets |
h p
x
� 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:27 ; elapsed = 00:01:32 . Memory (MB): peak = 1629.305 ; gain = 667.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:27 ; elapsed = 00:01:32 . Memory (MB): peak = 1629.305 ; gain = 667.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:27 ; elapsed = 00:01:32 . Memory (MB): peak = 1629.305 ; gain = 667.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:27 ; elapsed = 00:01:32 . Memory (MB): peak = 1629.305 ; gain = 667.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+------------+----------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name | RTL Name             | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+------------+----------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|YAHTZEE     | up/U3/sreg_reg[0]    | 7      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|YAHTZEE     | down/U3/sreg_reg[0]  | 7      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|YAHTZEE     | enter/U3/sreg_reg[0] | 7      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+------------+----------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     5|
h px� 
2
%s*synth2
|2     |CARRY4 |   174|
h px� 
2
%s*synth2
|3     |LUT1   |    18|
h px� 
2
%s*synth2
|4     |LUT2   |   211|
h px� 
2
%s*synth2
|5     |LUT3   |   189|
h px� 
2
%s*synth2
|6     |LUT4   |   152|
h px� 
2
%s*synth2
|7     |LUT5   |   304|
h px� 
2
%s*synth2
|8     |LUT6   |   450|
h px� 
2
%s*synth2
|9     |MUXF7  |    47|
h px� 
2
%s*synth2
|10    |MUXF8  |    14|
h px� 
2
%s*synth2
|11    |SRL16E |     3|
h px� 
2
%s*synth2
|12    |FDCE   |    97|
h px� 
2
%s*synth2
|13    |FDPE   |    53|
h px� 
2
%s*synth2
|14    |FDRE   |   476|
h px� 
2
%s*synth2
|15    |LD     |    82|
h px� 
2
%s*synth2
|16    |LDC    |     1|
h px� 
2
%s*synth2
|17    |IBUF   |    10|
h px� 
2
%s*synth2
|18    |OBUF   |    31|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:27 ; elapsed = 00:01:32 . Memory (MB): peak = 1629.305 ; gain = 667.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
c
%s
*synth2K
ISynthesis finished with 0 errors, 60 critical warnings and 418 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:01:11 ; elapsed = 00:01:27 . Memory (MB): peak = 1629.305 ; gain = 640.121
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:27 ; elapsed = 00:01:32 . Memory (MB): peak = 1629.305 ; gain = 667.152
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0512

1638.4452
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
318Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1642.0982
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2d
b  A total of 83 instances were transformed.
  LD => LDCE: 82 instances
  LDC => LDCE: 1 instance 
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

f202e8b6Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1152
1492
602
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:362

00:01:422

1642.0982

1095.934Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0082

1642.0982
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2s
qC:/Users/gabri/OneDrive/Documentos/GitHub/G23SED/FPGA/GLOBAL_V1/ESTRUCTURAL_6 _2/DISPLAY.runs/synth_1/YAHTZEE.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Y
Wreport_utilization -file YAHTZEE_utilization_synth.rpt -pb YAHTZEE_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri Jan 24 16:48:05 2025Z17-206h px� 


End Record
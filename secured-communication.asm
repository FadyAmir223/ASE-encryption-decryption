INCLUDE Irvine32.inc
.DATA
;################ S-BOX ################################################

SBOX_R0  Byte 63h,7Ch,77h,7Bh,0F2h,6Bh,6Fh,0C5h,30h,01h,67h,2Bh,0FEh,0D7h,0ABh,76h
 SBOX_R1  Byte 0CAh,82h,0C9h,7Dh,0FAh,59h,47h,0F0h,0ADh,0D4h,0A2h,0AFh,9Ch,0A4h,72h,0C0h
 SBOX_R2  Byte 0B7h,0FDh,93h,26h,36h,3Fh,0F7h,0CCh,34h,0A5h,0E5h,0F1h,71h,0D8h,31h,15h
 SBOX_R3  Byte 04h,0C7h,23h,0C3h,18h,96h,05h,9Ah,07h,12h,80h,0E2h,0EBh,27h,0B2h,75h
 SBOX_R4  Byte 09h,83h,2Ch,1Ah,1Bh,6Eh,5Ah,0A0h,52h,3Bh,0D6h,0B3h,29h,0E3h,2Fh,84h
 SBOX_R5  Byte 53h,0D1h,00h,0EDh,20h,0FCh,0B1h,5Bh,6Ah,0CBh,0BEh,39h,4Ah,4Ch,58h,0CFh
 SBOX_R6  Byte 0D0h,0EFh,0AAh,0FBh,43h,4Dh,33h,85h,45h,0F9h,02h,7Fh,50h,3Ch,9Fh,0A8h
 SBOX_R7  Byte 51h,0A3h,40h,8Fh,92h,9Dh,38h,0F5h,0BCh,0B6h,0DAh,21h,10h,0FFh,0F3h,0D2h
 SBOX_R8  Byte 0CDh,0Ch,13h,0ECh,5Fh,97h,44h,17h,0C4h,0A7h,7Eh,3Dh,64h,5Dh,19h,73h
 SBOX_R9  Byte 60h,81h,4Fh,0DCh,22h,2Ah,90h,88h,46h,0EEh,0B8h,14h,0DEh,5Eh,0Bh,0DBh
 SBOX_R10 Byte 0E0h,32h,3Ah,0Ah,49h,06h,24h,5Ch,0C2h,0D3h,0ACh,62h,91h,95h,0E4h,79h
 SBOX_R11 Byte 0E7h,0C8h,37h,6Dh,8Dh,0D5h,4Eh,0A9h,6Ch,56h,0F4h,0EAh,65h,7Ah,0AEh,08h
 SBOX_R12 Byte 0BAh,78h,25h,2Eh,1Ch,0A6h,0B4h,0C6h,0E8h,0DDh,74h,1Fh,4Bh,0BDh,8Bh,8Ah
 SBOX_R13 Byte 70h,3Eh,0B5h,66h,48h,03h,0F6h,0Eh,61h,35h,57h,0B9h,86h,0C1h,1Dh,9Eh
 SBOX_R14 Byte 0E1h,0F8h,98h,11h,69h,0D9h,8Eh,94h,9Bh,1Eh,87h,0E9h,0CEh,55h,28h,0DFh
 SBOX_R15 Byte 8Ch,0A1h,89h,0Dh,0BFh,0E6h,42h,68h,41h,99h,2Dh,0Fh,0B0h,54h,0BBh,16

;############### inverse-SBOX #########################################

 Inv_SBOX_R0  Byte 52h, 09h, 6ah, 0d5h, 30h, 36h, 0a5h, 38h, 0bfh, 40h, 0a3h, 9eh, 81h, 0f3h, 0d7h, 0fbh
 Inv_SBOX_R1  Byte 7ch, 0e3h, 39h, 82h, 9bh, 2fh, 0ffh, 87h, 34h, 8eh, 43h, 44h, 0c4h, 0deh, 0e9h, 0cbh
 Inv_SBOX_R2  Byte 54h, 7bh, 94h, 32h, 0a6h, 0c2h, 23h, 3dh, 0eeh, 4ch, 95h, 0bh, 42h, 0fah, 0c3h, 4eh
 Inv_SBOX_R3  Byte 08h, 2eh, 0a1h, 66h, 28h, 0d9h, 24h, 0b2h, 76h, 5bh, 0a2h, 49h, 6dh, 8bh, 0d1h, 25h
 Inv_SBOX_R4  Byte 72h, 0f8h, 0f6h, 64h, 86h, 68h, 98h, 16h, 0d4h, 0a4h, 5ch, 0cch, 5dh, 65h, 0b6h, 92h
 Inv_SBOX_R5  Byte 6ch, 70h, 48h, 50h, 0fdh, 0edh, 0b9h, 0dah, 5eh, 15h, 46h, 57h, 0a7h, 8dh, 9dh, 84h
 Inv_SBOX_R6  Byte 90h, 0d8h, 0abh, 00h, 8ch, 0bch, 0d3h, 0ah, 0f7h, 0e4h, 58h, 05h, 0b8h, 0b3h, 45h, 06h
 Inv_SBOX_R7  Byte 0d0h, 2ch, 1eh, 8fh, 0cah, 3fh, 0fh, 02h, 0c1h, 0afh, 0bdh, 03h, 01h, 13h, 8ah, 6bh
 Inv_SBOX_R8  Byte 3ah, 91h, 11h, 41h, 4fh, 67h, 0dch, 0eah, 97h, 0f2h, 0cfh, 0ceh, 0f0h, 0b4h, 0e6h, 73h
 Inv_SBOX_R9  Byte 96h, 0ach, 74h, 22h, 0e7h, 0adh, 35h, 85h, 0e2h, 0f9h, 37h, 0e8h, 1ch, 75h, 0dfh, 6eh
 Inv_SBOX_R10 Byte 47h, 0f1h, 1ah, 71h, 1dh, 29h, 0c5h, 89h, 6fh, 0b7h, 62h, 0eh, 0aah, 18h, 0beh, 1bh
 Inv_SBOX_R11 Byte 0fch, 56h, 3eh, 4bh, 0c6h, 0d2h, 79h, 20h, 9ah, 0dbh, 0c0h, 0feh, 78h, 0cdh, 5ah, 0f4h
 Inv_SBOX_R12 Byte 1fh, 0ddh, 0a8h, 33h, 88h, 07h, 0c7h, 31h, 0b1h, 12h, 10h, 59h, 27h, 80h, 0ech, 5fh
 Inv_SBOX_R13 Byte 60h, 51h, 7fh, 0a9h, 19h, 0b5h, 4ah, 0dh, 2dh, 0e5h, 7ah, 9fh, 93h, 0c9h, 9ch, 0efh
 Inv_SBOX_R14 Byte 0a0h, 0e0h, 3bh, 4dh, 0aeh, 2ah, 0f5h, 0b0h, 0c8h, 0ebh, 0bbh, 3ch, 83h, 53h, 99h, 61h
 Inv_SBOX_R15 Byte 17h, 2bh, 04h, 7eh, 0bah, 77h, 0d6h, 26h, 0e1h, 69h, 14h, 63h, 55h, 21h, 0ch, 7dh

;################ fixedMatrix ##########################################

fixedMatrix_R1 byte 2h, 3h, 1h, 1h
fixedMatrix_R2 byte 1h, 2h, 3h, 1h
fixedMatrix_R3 byte 1h, 1h, 2h, 3h
fixedMatrix_R4 byte 3h, 1h, 1h, 2h

;################ Inv_fixedMatrix ######################################

Inv_fixedMatrix_R1 byte 0Eh, 0Bh, 0Dh, 09h
Inv_fixedMatrix_R2 byte 09h, 0Eh, 0Bh, 0Dh
Inv_fixedMatrix_R3 byte 0Dh, 09h, 0Eh, 0Bh
Inv_fixedMatrix_R4 byte 0Bh, 0Dh, 09h, 0Eh

;################ Rcon #################################################

Rcon_R1 byte 01h, 02h, 04h, 08h, 10h, 20h, 40h, 80h, 1bh, 36h
Rcon_R2 byte 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
Rcon_R3 byte 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
Rcon_R4 byte 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h

;********************** KeyExpansion ********************************************

RconAdd dword offset Rcon_R1
rorSubW3 byte 4 dup(?)

;********************* MixColumns *********************************************

X0 byte ?
X1 byte ?
X2 byte ?
X3 byte ?

NextMsg byte 16 dup(?)
NextMsgAdd dword ?

;################ Main ##########################################
textAdd dword ?
keyAdd dword ?

;text byte 32h, 88h, 31h, 0e0h, 43h, 5ah, 31h, 37h, 0f6h, 30h, 98h, 07h, 0a8h, 8dh, 0a2h, 34h
;key byte 2bh, 28h, 0abh, 09h, 7eh, 0aeh, 0f7h, 0cfh, 15h, 0d2h, 15h, 4fh, 16h, 0a6h, 88h, 3ch
text byte "1234567891234567"
key byte  "1234567123456789"

keyCopy byte 16 dup(?)
.code
Encrypt proto text:PTR byte, key: PTR byte, len:Dword
Decrypt proto text:PTR byte, key: PTR byte, len:Dword

;################ Definition ####################################
KeyExpansion proto
AddRoundKey proto
subsitute proto ,val:byte, destination:ptr byte, SBOX:ptr byte
SubstituteBytes proto ,source:ptr byte ,SBOX:ptr byte
ShiftRows proto ,method:byte
MixColumns proto ,fixedMatrixAdd:ptr byte

mul01 proto ,mulTo:byte
mul02 proto ,mulTo:byte
mul03 proto ,mulTo:byte
mul09 proto ,mulTo:byte
mul0B proto ,mulTo:byte
mul0D proto ,mulTo:byte
mul0E proto ,mulTo:byte
set_X0to3 proto, mulTo:byte
AdvanecdMul proto ,mulBy:byte
copyKey proto ,source:ptr byte, dest:ptr byte
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
main PROC
invoke Encrypt, offset text,offset key, 16
invoke Decrypt, offset text,offset key, 16
	exit
main ENDP

copyKey proc uses esi edi ecx ,source:ptr byte, dest:ptr byte
cld
mov esi,source
mov edi,dest
mov ecx,16
rep movsb
ret
copyKey endp
;(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))
;(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))
;(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))

Encrypt proc text1:PTR byte, key1: PTR byte, len:Dword
pushAD

invoke copyKey ,key1 ,offset keyCopy
mov esi,text1
mov textAdd,esi
mov edi,key1
mov keyAdd,edi

invoke AddRoundKey
mov ecx,9

ERound:
invoke SubstituteBytes ,textAdd ,offset SBOX_R0
invoke ShiftRows ,'E'
invoke MixColumns ,offset fixedMatrix_R1
invoke KeyExpansion
invoke AddRoundKey
loop ERound

invoke SubstituteBytes ,textAdd ,offset SBOX_R0
invoke ShiftRows ,'E'
invoke KeyExpansion
invoke AddRoundKey

popAD
ret
Encrypt Endp

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Decrypt proc text1:PTR byte, key1: PTR byte, len:Dword
pushAD

invoke copyKey ,offset keyCopy ,key1
mov esi,text1
mov textAdd,esi
mov edi,key1
mov keyAdd,edi

mov ecx,10
expand10:
invoke KeyExpansion
loop expand10
invoke AddRoundKey
invoke copyKey ,offset keyCopy ,key1
invoke ShiftRows ,'D'
invoke SubstituteBytes ,textAdd ,offset Inv_SBOX_R0

mov ecx,9
DRound:
push ecx
mov RconAdd,offset Rcon_R1
expandN:
invoke KeyExpansion
loop expandN
pop ecx
invoke AddRoundKey
invoke copyKey ,offset keyCopy ,key1
invoke MixColumns ,offset Inv_fixedMatrix_R1
invoke ShiftRows ,'D'
invoke SubstituteBytes ,textAdd ,offset Inv_SBOX_R0
loop DRound

invoke AddRoundKey

popAD
ret
Decrypt Endp

;(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))

KeyExpansion PROC uses eax ebx ecx edx esi edi
mov esi,keyAdd

mov edi,offset rorSubW3
mov ecx,lengthof rorSubW3
fillEW3:
mov eax,[esi]
rol eax,8
mov [edi],al
add esi,type dword
inc edi
loop fillEW3

mov edi,offset rorSubW3
mov eax,[edi]
ror eax,type qword
mov [edi],eax

mov ecx,lengthof rorSubW3
SubEW3:
invoke subsitute ,byte ptr[edi] ,edi ,offset SBOX_R0
inc edi
loop SubEW3

mov esi,keyAdd
mov edi,offset rorSubW3
mov ebx,RconAdd

mov ecx,16

Ekey:
mov eax,esi
sub eax,keyAdd
mov dl,4
div dl
cmp ah,0
jnz notW0

mov al,[esi]
xor al,[edi]
xor al,[ebx]
inc edi
add ebx,lengthof Rcon_R1
jmp nextKval

notW0:
mov al,[esi]
xor al,[esi-1]

nextKval:
mov [esi],al
inc esi
loop Ekey

mov ebx,RconAdd
inc ebx
cmp ebx,offset Rcon_R2
jne stayInAdd
mov ebx,offset Rcon_R1
stayInAdd:
mov RconAdd,ebx

ret
KeyExpansion endp
;******************************************************************

AddRoundKey proc uses eax ebx ecx edx esi edi
mov esi,textAdd
mov edi,keyAdd
mov ecx,16
xorKeyMsg:
mov al,[edi]
xor [esi],al
inc esi
inc edi
loop xorKeyMsg
ret
AddRoundKey endp
;******************************************************************

subsitute PROC uses eax ebx ecx edx esi edi ,val:byte, destination:ptr byte, SBOX:ptr byte
mov bl,val
mov esi,SBOX

mov dl,0
mov ecx,4
col:
shr bl,1
jnc contCol
push ecx
mov eax,1
mov cl,dl
shl al,cl
mov bh,type SBOX_R0
mul bh
add esi, eax
pop ecx
contCol:
inc dl
loop col

mov dl,0
mov ecx,4
row:
shr bl,1
jnc contRow
push ecx
mov eax,1
mov cl,dl
shl al,cl
mov bh,lengthof SBOX_R0
mul bh
add esi, eax
pop ecx
contRow:
inc dl
loop row

mov edi,destination
mov al,[esi]
mov [edi],al

ret
subsitute ENDP


SubstituteBytes proc uses eax ebx ecx edx esi edi ,source:ptr byte ,SBOX:ptr byte
mov esi,source
mov ecx,16

subsAll:
invoke subsitute ,[esi] ,esi ,SBOX
inc esi
loop subsAll

ret
SubstituteBytes endp
;******************************************************************

ShiftRows proc uses eax ebx ecx edx esi edi ,method:byte
mov esi,textAdd
mov ecx,4

RotateDir:
mov ebx,[esi]
mov eax,4
sub eax,ecx
mov edx,8
mul edx
push ecx
mov cl,al
mov al,method
cmp al,'E'
jne tryDec
ror ebx,cl
tryDec:
cmp al,'D'
jne NotValidMethod
rol ebx,cl
NotValidMethod:
pop ecx
mov [esi],ebx
add esi, type dword
loop RotateDir

ret
ShiftRows Endp
;******************************************************************
MixColumns proc uses eax ebx ecx edx esi edi ,fixedMatrixAdd:ptr byte

mov esi,textAdd
mov NextMsgAdd,offset NextMsg
mov ecx,4

txtCol:
;%% AFTER 1 %%
push ecx
mov ecx,4
mov edi,fixedMatrixAdd
;%%%%%% AFTER 1 %%%%%%
txtRow:
;$$$$$$ AFTER 2 $$$$$$
mov ebx,esi
mov edx,0
push ecx
mov ecx,4
;$$$$$$ AFTER 2 $$$$$$
fxdTable:
;%%%%%% BODY %%%%%%
push ecx
mov cl,[edi]
invoke AdvanecdMul ,[ebx]
pop ecx
xor edx,eax
add ebx,4
inc edi
;%%%%%% body %%%%%%
loop fxdTable
;$$$$$$ before 2 $$$$$$
pop ecx
mov eax,4
sub eax,ecx
shl eax,2

push ecx
mov ecx,NextMsgAdd
mov [ecx+eax],dl
pop ecx
;$$$$$$ before 2 $$$$$$
loop txtRow
;%%%%%% BEFORE 1 %%%%%%
mov ecx,NextMsgAdd
inc esi
inc ecx
mov NextMsgAdd,ecx
pop ecx
;%%%%%% BEFORE 1 %%%%%%
loop txtCol

cld
mov esi,offset NextMsg
mov edi,textAdd
mov ecx,16
rep movsb

ret
MixColumns Endp
;((((((((((((((((((((((((((((((()))))))))))))))))))))))))))))))

AdvanecdMul proc ,mulBy:byte
cmp cl,1
jne times2
invoke mul01 ,mulBy
jmp NextValMul

times2:
cmp cl,2
jne times3
invoke mul02 ,mulBy
jmp NextValMul

times3:
cmp cl,3
jne times09
invoke mul03 ,mulBy
jmp NextValMul

times09:
cmp cl,09
jne times0B
invoke mul09 ,mulBy
jmp NextValMul

times0B:
cmp cl,0Bh
jne times0D
invoke mul0B ,mulBy
jmp NextValMul

times0D:
cmp cl,0Dh
jne times0E
invoke mul0D ,mulBy
jmp NextValMul

times0E:
cmp cl,0Eh
jne NextValMul
invoke mul0E ,mulBy
NextValMul:

ret
AdvanecdMul endp
;((((((((((((((((((((((((((((((()))))))))))))))))))))))))))))))

mul01 proc ,mulTo:byte
mov al,mulTo
ret
mul01 Endp

mul02 proc ,mulTo:byte
mov al,mulTo
shl al,1
jnc Cnot1
xor al,1Bh
Cnot1:
ret
mul02 Endp

mul03 proc ,mulTo:byte
mov al,mulTo
invoke mul01 ,mulTo
mov X0,al
invoke mul02 ,X0
xor al,X0
ret
mul03 Endp

mul09 proc ,mulTo:byte
invoke set_X0to3 ,mulTo
mov al,X0
xor al,X3
ret
mul09 Endp

mul0B proc ,mulTo:byte
invoke set_X0to3 ,mulTo
mov al,X0
xor al,X1
xor al,X3
ret
mul0B Endp

mul0D proc ,mulTo:byte
invoke set_X0to3 ,mulTo
mov al,X0
xor al,X2
xor al,X3
ret
mul0D Endp

mul0E proc ,mulTo:byte
invoke set_X0to3 ,mulTo
mov al,X1
xor al,X2
xor al,X3
ret
mul0E Endp

set_X0to3 proc ,mulTo:byte
invoke mul01 ,mulTo
mov X0,al
invoke mul02 ,X0
mov X1,al
invoke mul02 ,X1
mov X2,al
invoke mul02 ,X2
mov X3,al
ret
set_X0to3 Endp

END main

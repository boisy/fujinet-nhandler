* FNBS - FujiNet Basic Support
* For Tandy Color Computer Disk Extended Color BASIC

OPENVEC equ $015E
CLOSEVEC equ $0176

 org $7000

OldOpenVec rmb 2
OldCloseVec rmb 2

start equ *
* Copy current Disk BASIC vectors
 ldx OPENVEC+1
 stx OldOpenVec
 ldx CLOSEVEC+1
 stx OldCloseVec
* Install new Disk BASIC vectors
 leax NewOpen,pcr
 stx  OPENVEC+1
 leax NewClose,pcr
 stx  CLOSEVEC+1
 rts
 
NewOpen:
 jmp [OldOpenVec]
NewClose: 
 jmp [OldCloseVec]

 end start
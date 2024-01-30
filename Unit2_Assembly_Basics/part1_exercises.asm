; 
; Base Author:  Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
; 	- comments
;	- dumping registers
;	- printing empty lines
;	- instructions: mov, add, sub, inc/dec

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

	;	dump_regs 1
         ;      call print_nl
     ;   dump_regs 2

;mov eax, 0
;mov ah, 18
;mov al, 0BAH 
;dump_regs 1
;call print_nl

;mov ax, 4
;dump_regs 2

;mov eax,3 ;eax=3
;mov ebx,4 ;eax =4 
;add eax, ebx ;eax+= ebx, eax =7
;dump_regs 1

;mov eax, 34
;sub eax, 19 ;immediate opperand
;dump_regs 1

;inc 23 ; Error

;mov eax 16
;call print_nl
;dump_regs 1

;sub eax 4
;call print_nl
;dump_regs 2

;mov ebx, eax
;inc ebx
;dump_regs 3

mov eax 4
mov ebx, 4

add ebx, eax ;2*4 = 8 (2a)
add ebx, ebx ;2*8 =16 = 4a

call print_nl

add eax 4*2

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



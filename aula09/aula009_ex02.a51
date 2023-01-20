;
; Aula 009 exemplo 02
;

        org             0000h
        clr             a

aux1:
        mov             p0,#0bbh        ;move o valor bbh para p0

inicio:

        jz              aux2            ;acc == 0? se sim, desvia para a label aux2
        jnz             aux1            ;acc != 0? se sim, desvia para a label aux1
        nop                             ; se, operação

aux2:

        mov             p0,#0aah        ;move o valor aah para o p0
        mov             a,p0            ;carrega o valor de p0 para acc
        jmp             inicio          ;desvia para label inicio

        end                             ;final do programa
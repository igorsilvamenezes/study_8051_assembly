;
; Aula 009 exemplo 01
;
;

        org             0000h
        mov             r0,#05d                 ;move a constante 5 para r0
start:
        mov             p1,r0                   ;move o conteudo de r0 para p1
        djnz            r0,start                ; r0 = r0-1 ou (r0--)
                                                ; r0 == 0:
                                                ; Não, desvia para label start
        ajmp            $                       ; Sim, segurar o código nesta linha

        end                                     ; final do programa
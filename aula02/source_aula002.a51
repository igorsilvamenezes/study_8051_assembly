; Projeto Aula 2
;
; Altera o n�vel l�gico do PORT0
;
; Autor: Igor Menezes
;
; MCU: AT89S51

        org             0000h                   ;Origem no endere�o 00h de mem�ria

inicio:

        mov             p0,#00h                 ;Todo PORT0 em n�vel l�gico baixo
        mov             p0,#0FFh                ;Todo PORT0 em n�vel l�gico alto
        jmp             inicio                  ;Pula para o inicio

        end                                     ;Final do programa
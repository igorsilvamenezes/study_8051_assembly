;
; Aula 003
;
; Demostra��o do ciclo de m�quina (ciclo de instru��o)
;
; Autor: Igor Menezes
;
; Data: Janeiro de 2023
; 12MHz / 12 = 1MHz = 1us

                org             0000h           ;Origem no endere�o 00h

inicio:

                mov             a,#01h          ;Move a constante 1h para o acumulador
                mov             p2,#00h         ;Move o valor 00h para o PORT2
                mov             p2,#0FFh        ;Move o valor FFh para o PORT2
                mov             a,#02h          ;Move a constante 2h para o acumulador
                jmp             inicio          ;Loop infinito
        
                end                             ;Final do programa
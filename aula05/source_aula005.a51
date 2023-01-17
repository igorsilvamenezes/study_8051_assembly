;
; Curso de 8051 em Assembly
;
; Exemplo de direcionamento direto
;
; Igor Menezes - Janeiro de 2023
;

                org                     0000h           ;Origem no endere�o 00h de mem�ria

inicio:
                mov             20h,#0bbh       ;Move o valor constante para o endere�o 20h de mem�ria
                mov             23h,20h         ;Move o conteudo do endere�o 20h de mem�ria p/ 23h
                mov             a,P2            ;Move o conteudo do port2 para o acumulador
                add             a,23h           ; a = a + Conte�do do endere�o 23h de mem�ria

                end                             ;Final do programa 

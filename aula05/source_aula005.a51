;
; Curso de 8051 em Assembly
;
; Exemplo de direcionamento direto
;
; Igor Menezes - Janeiro de 2023
;

                org                     0000h           ;Origem no endereço 00h de memória

inicio:
                mov             20h,#0bbh       ;Move o valor constante para o endereço 20h de memória
                mov             23h,20h         ;Move o conteudo do endereço 20h de memória p/ 23h
                mov             a,P2            ;Move o conteudo do port2 para o acumulador
                add             a,23h           ; a = a + Conteúdo do endereço 23h de memória

                end                             ;Final do programa 

; Aula 006
;
; Registradores de Uso Geral
;
; Igor Menezes
;
;

                org             0000h           ;Origem no endereço 0h

inicio:

                mov             r1,#0fh         ;Move a constate 0fh para R1
                mov             a,r1            ;Move o conteudo de r1 para o acc
                mov             r5,a            ;Move o conteúdo do acumulador para r5
                inc             r5              ;Incrementa r5 em 1. r5 = r5 + 1, r5++
                inc             r5
                inc             r5

                ajmp            $               ;Segura o código nesta linha

                end                             ;Fim do programa

        
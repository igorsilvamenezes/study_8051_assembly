;
; Curso de Assembly para 8051 Aula 008
;
; Instruções Lógicas e Booleanas
;
; Autor: Igor Menezes
;
; Data: Julho de 2015
;

        org             0000h           ;Origem no endereço 00h de memória

inicio:

        mov             a,#01010011b    ;Carrega o valor 01010011 binário para o acc
        mov             b,#00101001b    ;Carrega o valor 00101001 binário para o b

        anl             a,b             ; acc = acc AND b = 0000 0001
        cpl             a               ; acc = not(acc)  = 1111 1110

        orl             a,b,            ; acc = acc OR b  = 1111 1111

        xrl             a,b             ; acc = acc XOR b = 1101 0110

        rr              a               ; acc = 0110 1011
        rr              a
        rr              a

        rl              a
        rl              a
        rl              a

        swap            a               ; acc = 0110 1101 -> troca o nible mais significativo pelo nible menos significativo e vice versa 
        swap            a               ; acc = 1101 0110 

        ajmp            $               ;Segura o código nesta linha

        end                             ;Final do programa
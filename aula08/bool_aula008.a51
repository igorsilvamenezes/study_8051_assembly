;
; Curso de Assembly para 8051 Aula 008
;
; Instru��es L�gicas e Booleanas
;
; Autor: Igor Menezes
;
; Data: Julho de 2015
;

        org             0000h           ;Origem no endere�o 00h de mem�ria

inicio:

        mov             a,#01010011b    ;Carrega o valor 01010011 bin�rio para o acc
        mov             b,#00101001b    ;Carrega o valor 00101001 bin�rio para o b

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

        ajmp            $               ;Segura o c�digo nesta linha

        end                             ;Final do programa
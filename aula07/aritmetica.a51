; Aula 007 do curso 8051 - Aritim�tica com Registradores e mem�rias
;
; Autor: Igor Menezes - Janeiro de 2023
;
;

                org                     0000h                   ;Origem no endere�o 00h

inicio:

                mov                     a,#0ah                  ;Move a constante a hexa para o acc
                mov                     b,#03h                  ;Move a constante 3 hexa para b
                mov                     23h,#06h                ;Move a constante 6 hexa para o M[23]
                mov                     20h,#0fh                ;Move a constante f hexa para o M[20]

                add                     a,23h                   ;a = a + M[23]

                inc                     a                       ;a = a + 1 (a++)
                dec                     b                       ;b = b - 1 (b--)

                subb                    a,20h                   ;a = a - M[20]
                
                mov                     a,#0ch                  ;Move o valor c hexa para o acumulador
                mov                     b,#08h                  ;Move o valor 8 hexa para o b

                mul                     ab                     ;ab = a * b
                                                                ;b = byte mais significativo
                                                                ;c = byte menos significativo

                mov                     a,#45h                  ;
                mov                     b,#7                    ;

                div                     ab                      ;a = divis�o, b = resto

                ajmp                    $                       ;segura o c�digo

                end                                            ;final do programa
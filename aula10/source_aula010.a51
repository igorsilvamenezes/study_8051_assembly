;
; Curso de Assemply para 8051 WR Kits
;
; Aula 10: Acessando Dados de um Banco
;
; Igor Menezes
;
; Fevereiro de 2023
;

; --- Vetor de RESET ---
        org     0000h           ;Origem no endereço 00h de memória
        mov     r0,#0d          ;Move a constante 0 para r0
        mov     dptr,#banco     ;Endereço inicial do banco para dptr

; --- Rotina Principal ---
princ:
        mov     a,r0            ;Move o conteúdo de r0 para o acc
        movc    a,@a+dptr       ;Move o byte relativo de dptr somado
                                ;com o valo de acc para o acc
        mov     p0,a            ;Move o conteúdo de acc para Port0
        inc     r0              :Incrementa r0
        cjne    r0,#8d,princ    ;Compara r0 com 0 e pula se não for igual
        ajmp    $               ;Segura o código nesta linha

; --- Banco ---
banco:
        db      01h             ; 0000 0001b
        db      02h             ; 0000 0010b
        db      04h             ; 0000 0100b
        db      08h             ; 0000 1000b
        db      10h             ; 0001 0000b
        db      20h             ; 0010 0000b
        db      40h             ; 0100 0000b
        db      80h             ; 1000 0000b

        end                     ;Final do programa        
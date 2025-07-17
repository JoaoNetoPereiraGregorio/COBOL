       IDENTIFICATION DIVISION.
       PROGRAM-ID. TiposNumericos.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NUM-ENTRADA         PIC 9(5).              *> Entrada do 
                                                       *>usuário: 54321
       *> Tipos numéricos sem sinal
       77 NUM-9               PIC 9. *> Saida: 1
       77 NUM-99              PIC 99. *> Saida: 21
       77 NUM-999V99          PIC 999V99. *> Saida: 321.00

       *> Tipos numéricos com sinal
       77 NUM-S9              PIC S9      VALUE +5. *> Saida: +5
       77 NUM-S9-EDITADO      PIC +9      VALUE +5. *> Saida: +5
       77 NUM-S9V99           PIC S9V99   VALUE -2.35. *> Saida: -2.35 V e o separador deciaml
             
       *> Tipo com edição
       77 NUM-EDITADO         PIC Z(3).99. *> Saida: 321.00

       *> Atribuições diretas
       77 NUM-INICIALIZADO    PIC 9(3)     VALUE 123. *> Saida: 123
       77 NUM-DECIMAL-VALOR   PIC 9(3)V9(2) VALUE 456.78. *> Saida:  456.78

       PROCEDURE DIVISION.
           DISPLAY "Digite um número inteiro (até 5 dígitos):"
           ACCEPT NUM-ENTRADA

           MOVE NUM-ENTRADA TO NUM-9
           MOVE NUM-ENTRADA TO NUM-99
           MOVE NUM-ENTRADA TO NUM-999V99
           MOVE NUM-ENTRADA TO NUM-EDITADO

           DISPLAY "NUM-9 ...............: " NUM-9
           DISPLAY "NUM-99 ..............: " NUM-99
           DISPLAY "NUM-999V99 ..........: " NUM-999V99
           DISPLAY "NUM-EDITADO .........: " NUM-EDITADO
           DISPLAY "NUM-S9 ..............: " NUM-S9
           DISPLAY "NUM-S9V99 ...........: " NUM-S9V99
           DISPLAY "NUM-S9-EDITADO ......: " NUM-S9-EDITADO
           DISPLAY "NUM-INICIALIZADO ....: " NUM-INICIALIZADO
           DISPLAY "NUM-DECIMAL-VALOR ...: " NUM-DECIMAL-VALOR

           STOP RUN.

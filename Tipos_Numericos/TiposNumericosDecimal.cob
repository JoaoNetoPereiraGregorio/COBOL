       IDENTIFICATION DIVISION.
       PROGRAM-ID. TiposNumericosDecimal.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NUM-ENTRADA         PIC 9(5).              *> Número inteiro até 99999 Entrada 12345
       77 NUM-INT             PIC 9(5).              *> Inteiro Saida: 12345
       77 NUM-INT-COM-SINAL   PIC S9(5).             *> Inteiro com sinal Saida: +12345
       77 NUM-DECIMAL         PIC 9(3)V9(2).         *> Número com casas decimais Saida: 345.00
       77 NUM-DEC-COM-SINAL   PIC S9(3)V9(2).        *> Decimal com sinal Saida: +345.00
       77 NUM-COM-EDIT        PIC ZZ,ZZ9.99.         *> Número com máscara de exibição Saida: 12,345.00

       PROCEDURE DIVISION.
           DISPLAY "Digite um numero (ate 5 digitos e 2 casas decimais:" *> Entrada 12345.67
NUM-INT 
           ACCEPT NUM-ENTRADA

           *> Atribuições manuais
           MOVE NUM-ENTRADA TO NUM-INT
           MOVE NUM-ENTRADA TO NUM-INT-COM-SINAL
           MOVE NUM-ENTRADA TO NUM-DECIMAL
           MOVE NUM-ENTRADA TO NUM-DEC-COM-SINAL
           MOVE NUM-ENTRADA TO NUM-COM-EDIT

           DISPLAY "NUM-INT           : " NUM-INT
           DISPLAY "NUM-INT-COM-SINAL : " NUM-INT-COM-SINAL
           DISPLAY "NUM-DECIMAL       : " NUM-DECIMAL
           DISPLAY "NUM-DEC-COM-SINAL : " NUM-DEC-COM-SINAL
           DISPLAY "NUM-COM-EDIT      : " NUM-COM-EDIT

           STOP RUN.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exemplo-Evaluate.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 OPCODE PIC 9 VALUE ZEROS.
       
       PROCEDURE DIVISION.
           DISPLAY "Digite sua opcao 1 , 2 ou 3 ".
           ACCEPT OPCODE.

           EVALUATE OPCODE
               WHEN 1
                   DISPLAY "Opcao 1 selecionada."
               WHEN 2
                   DISPLAY "Opcao 2 selecionada."
               WHEN 3
                   DISPLAY "Opcao selecionada."
               WHEN OTHER
                   DISPLAY "Opção inválida."
           END-EVALUATE.
       
           STOP RUN.
       
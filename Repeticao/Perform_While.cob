       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLO-WHILE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 CONTADOR    PIC 9(2) VALUE 0.

       PROCEDURE DIVISION.
           PERFORM UNTIL CONTADOR > 5 *>continuo enquanto for falso
               DISPLAY "CONTADOR: " CONTADOR 
               ADD 1 TO CONTADOR *>adiciono um no contador se não fica infinito
           END-PERFORM.

           STOP RUN.

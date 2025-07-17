       IDENTIFICATION DIVISION.
       PROGRAM-ID. TiposBooleano.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STATUS-VAR   PIC X.
          88 ATIVO     VALUE 'S'.
          88 INATIVO   VALUE 'N'.

       PROCEDURE DIVISION.
           MOVE 'S' TO STATUS-VAR
           IF ATIVO
               DISPLAY "STATUS: ATIVO"
           ELSE
               DISPLAY "STATUS: INATIVO"
           END-IF

           MOVE 'N' TO STATUS-VAR
           IF INATIVO
               DISPLAY "STATUS: INATIVO"
           ELSE
               DISPLAY "STATUS: ATIVO"
           END-IF

           STOP RUN.

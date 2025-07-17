       IDENTIFICATION DIVISION.
       PROGRAM-ID. Manipulando_String.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WS-PARTE-1         PIC X(10) VALUE "COBOL ".
       77 WS-PARTE-2         PIC X(10) VALUE "LENGUA".
       77 WS-JUNTA           PIC X(20) VALUE SPACES.
       77 WS-FRASE           PIC X(50) VALUE "COBOL E LINGUAGEM ANTIGA".
       77 WS-PALAVRA-1       PIC X(20).
       77 WS-PALAVRA-2       PIC X(20).
       77 WS-PALAVRA-3       PIC X(20).
       77 WS-RESTO           PIC X(20).
       77 WS-QTDE-A          PIC 9(3) VALUE ZEROS.

       PROCEDURE DIVISION.

      * JUNTA DUAS STRINGS
           STRING WS-PARTE-1 DELIMITED BY SPACE
                  WS-PARTE-2 DELIMITED BY SPACE
                  INTO WS-JUNTA
           END-STRING.

           DISPLAY "STRING CONCATENADA: " WS-JUNTA.

      * SEPARA A FRASE EM PALAVRAS
           UNSTRING WS-FRASE DELIMITED BY SPACE
               INTO WS-PALAVRA-1
                    WS-PALAVRA-2
                    WS-PALAVRA-3
                    WS-RESTO
           END-UNSTRING.

           DISPLAY "PALAVRA 1: " WS-PALAVRA-1.
           DISPLAY "PALAVRA 2: " WS-PALAVRA-2.
           DISPLAY "PALAVRA 3: " WS-PALAVRA-3.
           DISPLAY "RESTO    : " WS-RESTO.

      * CONTA QUANTOS 'A' TEM NA FRASE
           INSPECT WS-FRASE TALLYING WS-QTDE-A FOR ALL "A".

           DISPLAY "QUANTIDADE DE 'A' NA FRASE: " WS-QTDE-A.

           STOP RUN.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. INSPECT-STRINGS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WS-NOME            PIC X(30) VALUE SPACES.  
       77 WS-NOME-EDITADO    PIC X(30) VALUE SPACES. 
       77 WS-LETRA-PROCURA   PIC X(1)  VALUE SPACES. 
       77 WS-LETRA-NOVA      PIC X(1)  VALUE SPACES.  
       77 WS-CONTADOR        PIC 9(3)  VALUE 0. 

       PROCEDURE DIVISION.
           DISPLAY "Digite seu nome: ".
           ACCEPT WS-NOME.

           MOVE WS-NOME TO WS-NOME-EDITADO.

           DISPLAY "Digite a letra para buscar: ".
           ACCEPT WS-LETRA-PROCURA.

           DISPLAY "Digite a letra para substituir: ".
           ACCEPT WS-LETRA-NOVA.
           
           INSPECT WS-NOME TALLYING WS-CONTADOR FOR ALL WS-LETRA-PROCURA.

           
           INSPECT WS-NOME-EDITADO REPLACING ALL WS-LETRA-PROCURA 
           BY WS-LETRA-NOVA.

           DISPLAY "Nome original     : " WS-NOME.
           DISPLAY "Letra buscada     : " WS-LETRA-PROCURA.
           DISPLAY "Quantidade de 'A' : " WS-CONTADOR.
           DISPLAY "Nome substituído  : " WS-NOME-EDITADO.

           STOP RUN.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. INSPECT-STRINGS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WS-NOME            PIC X(30) VALUE SPACES.  *>Entrada :JOAO | Value spaces inicializa com espaçoes vazios
       77 WS-NOME-EDITADO    PIC X(30) VALUE SPACES. *> Saida: JO*O
       77 WS-LETRA-PROCURA   PIC X(1)  VALUE "A". *> Saida:  A
       77 WS-LETRA-NOVA      PIC X(1)  VALUE "*". *> 
       77 WS-CONTADOR        PIC 9(3)  VALUE 0. *> Saida: 001

       PROCEDURE DIVISION.
           DISPLAY "Digite seu nome: ".
           ACCEPT WS-NOME.

           MOVE WS-NOME TO WS-NOME-EDITADO.

           

           *> CONTAR QUANTAS LETRAS "A" TEM
           INSPECT WS-NOME TALLYING WS-CONTADOR FOR ALL "A".

           *> SUBSTITUIR TODAS AS LETRAS "A" POR "*"
           INSPECT WS-NOME-EDITADO REPLACING ALL "A" BY "*".

           DISPLAY "Nome original     : " WS-NOME.
           DISPLAY "Letra buscada     : " WS-LETRA-PROCURA.
           DISPLAY "Quantidade de 'A' : " WS-CONTADOR.
           DISPLAY "Nome substituído  : " WS-NOME-EDITADO.

           STOP RUN.

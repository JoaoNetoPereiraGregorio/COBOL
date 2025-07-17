       IDENTIFICATION DIVISION.
       PROGRAM-ID. Operadores.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NUM1        PIC 9(4) VALUE ZEROS.
       77 NUM2        PIC 9(4) VALUE ZEROS.
       77 RESULTADO   PIC Z(6) VALUE ZEROS. *>O Z ignora os zeros a esquerda
       77 RESTO       PIC Z(4) VALUE ZEROS.

       PROCEDURE DIVISION.

           DISPLAY "Digite o primeiro numero: "
           ACCEPT NUM1.

           DISPLAY "Digite o segundo numero: "
           ACCEPT NUM2.

           DISPLAY "====== OPERACOES ARITMETICAS ======".

           ADD NUM1 TO NUM2 GIVING RESULTADO. *>o giving e igual a atribuir o valor para o Resultado
           DISPLAY "SOMA: " RESULTADO.

           SUBTRACT NUM2 FROM NUM1 GIVING RESULTADO.
           DISPLAY "SUBTRACAO: " RESULTADO.

           MULTIPLY NUM1 BY NUM2 GIVING RESULTADO.
           DISPLAY "MULTIPLICACAO: " RESULTADO.

           DIVIDE NUM1 BY NUM2 GIVING RESULTADO REMAINDER RESTO. *>REMAINDER pega o resto
           DISPLAY "DIVISAO: " RESULTADO.
           DISPLAY "RESTO DA DIVISAO: " RESTO.

           DISPLAY "====== OPERADORES LOGICOS ======".

           IF NUM1 > NUM2
               DISPLAY "NUM1 E MAIOR QUE NUM2"
           ELSE IF NUM1 < NUM2
               DISPLAY "NUM1 E MENOR QUE NUM2"
           ELSE
               DISPLAY "NUM1 E IGUAL A NUM2".

           IF NUM1 >= NUM2 AND NUM2 > 0
               DISPLAY "NUM1 E MAIOR OU IGUAL A NUM2 E NUM2 MAIOR"
      -        " QUE ZERO".

           IF NUM1 < 100 OR NUM2 < 100
               DISPLAY "PELO MENOS UM DOS NUMEROS E MENOR QUE 100".

           IF NOT NUM1 = 0
               DISPLAY "NUM1 NAO E ZERO".

           STOP RUN.

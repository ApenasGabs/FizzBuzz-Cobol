000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. FizzBuzz.
000300 DATA DIVISION.
000400 WORKING-STORAGE SECTION.
000500 01 indice                 PIC 9(3) VALUE 1.
000600 01 fizzFlag               PIC X VALUE 'N'.
000700 01 buzzFlag               PIC X VALUE 'N'.
000800
000900 PROCEDURE DIVISION.
001000     PERFORM VARYING indice FROM 1 BY 1 UNTIL indice > 100
001100         MOVE 'N' TO fizzFlag
001200         MOVE 'N' TO buzzFlag
001300         IF indice MOD 3 = 0 THEN
001400             MOVE 'Y' TO fizzFlag
001500         END-IF
001600         IF indice MOD 5 = 0 THEN
001700             MOVE 'Y' TO buzzFlag
001800         END-IF
001900         
002000         EVALUATE TRUE
002100             WHEN fizzFlag = 'Y' AND buzzFlag = 'Y'
002200                 DISPLAY "FizzBuzz"
002300             WHEN fizzFlag = 'Y'
002400                 DISPLAY "Fizz"
002500             WHEN buzzFlag = 'Y'
002600                 DISPLAY "Buzz"
002700             WHEN OTHER
002800                 DISPLAY indice
002900         END-EVALUATE
003000     END-PERFORM.
003100     STOP RUN.

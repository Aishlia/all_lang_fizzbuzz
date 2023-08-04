       IDENTIFICATION DIVISION.
       PROGRAM-ID. fizzbuzz.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CTR PIC 999 VALUE 1.
       01 DIV PIC 999 VALUE 1.
       01 RMNDR-FIZZ PIC 9 VALUE 1.
       01 RMNDR-BUZZ PIC 9 VALUE 1.

       PROCEDURE DIVISION.
       fizzbuzz-main SECTION.
            PERFORM 100 TIMES
                DIVIDE CTR BY 3 GIVING DIV REMAINDER RMNDR-FIZZ
                DIVIDE CTR BY 5 GIVING DIV REMAINDER RMNDR-BUZZ
                IF RMNDR-FIZZ = 0 THEN
                     IF RMNDR-BUZZ = 0 THEN
                          DISPLAY "FizzBuzz"
                          ELSE DISPLAY "Fizz"
                     END-IF
                ELSE IF RMNDR-BUZZ = 0 THEN
                     DISPLAY "Buzz"
                ELSE
                     DISPLAY CTR
                END-IF
            END-IF

                ADD 1 TO CTR
            END-PERFORM
       STOP RUN.

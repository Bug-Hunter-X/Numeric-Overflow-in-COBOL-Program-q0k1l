01  WS-AREA. 
    05  WS-CODE PIC 9(5) VALUE ZEROS. 
    05  WS-AMOUNT PIC 9(7)V99 VALUE ZEROS. 

PROCEDURE DIVISION. 
    ... 
    ADD 1 TO WS-CODE. 
    IF WS-CODE > 99999 THEN 
        DISPLAY "Warning: WS-CODE limit exceeded. Resetting to 0." 
        MOVE 0 TO WS-CODE 
    END-IF. 
    ... 
    COMPUTE WS-AMOUNT = WS-AMOUNT + 123.45. 
    IF WS-AMOUNT > 9999999.99 THEN 
        DISPLAY "Warning: WS-AMOUNT limit exceeded. Resetting to 9999999.99." 
        MOVE 9999999.99 TO WS-AMOUNT 
    END-IF. 
    ...
END PROGRAM.
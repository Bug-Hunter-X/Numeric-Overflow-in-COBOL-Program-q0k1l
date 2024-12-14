01  WS-AREA. 
    05  WS-CODE PIC 9(5) VALUE ZEROS. 
    05  WS-AMOUNT PIC 9(7)V99 VALUE ZEROS. 

PROCEDURE DIVISION. 
    ... 
    ADD 1 TO WS-CODE. 
    IF WS-CODE > 99999 THEN 
        DISPLAY "Error: WS-CODE exceeded limit." 
        STOP RUN. 
    END-IF. 
    ... 
    COMPUTE WS-AMOUNT = WS-AMOUNT + 123.45. 
    IF WS-AMOUNT > 9999999.99 THEN 
        DISPLAY "Error: WS-AMOUNT exceeded limit." 
        STOP RUN. 
    END-IF. 
    ...
END PROGRAM.
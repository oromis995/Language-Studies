IDENTIFICATION DIVISION.
PROGRAM-ID. TFile.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT myInFile ASSIGN TO "P2InBackUp.dat".
    SELECT myOutFile ASSIGN TO "P2Out.dat".
DATA DIVISION.
FILE SECTION.
FD myInFile.
    01 inRecord.
        02 NAME-IN PIC X(14).
        02 W-NUMBER-IN PIC X(10).
        02 SEASON-IN PIC X(7).
        02 YEAR-IN PIC 9(4)X.
        02 COURSE-ACR-IN PIC X(5).
        02 COURSE-NUM-IN PIC 9(3)X.
        02 COURSE-NAME-IN PIC X(24).
        02 RETURN-IN PIC X.
FD myOutFile.
    01 outRecord.
        02 NAME-OUT PIC X(14).
        02 W-NUMBER-OUT PIC X(10).
        02 SEASON-IN PIC X(7).
        02 YEAR-OUT PIC 9(4)X.
        02 COURSE-ACR-OUT PIC X(5).
        02 COURSE-NUM-OUT PIC 9(3)X.
        02 COURSE-NAME-OUT PIC X(24).
        02 RETURN-OUT PIC X.
    01 outRecord-two.
        02 SCHOOL-NAME-OUT PIC X(22).
WORKING-STORAGE SECTION.
    01 LOOP-CHK PIC X VALUE "F".
PROCEDURE DIVISION.
    OPEN INPUT myInFile.
    OPEN OUTPUT myOutFile.
    MOVE "HOKKAIDO NINJA ACADEMY" TO outRecord-two
    WRITE outRecord-two
    PERFORM subRead
        PERFORM UNTIL LOOP-CHK = "T"
        MOVE NAME-IN to NAME-OUT
        WRITE outRecord
        PERFORM subRead
    END-PERFORM.
    CLOSE myInFile.
    CLOSE myOutFile.
STOP RUN.
subRead.
    READ myInFile
    AT END
        MOVE "T" TO LOOP-CHK
    NOT AT END
        DISPLAY "NAME-IN = ", NAME-IN
    END-READ.
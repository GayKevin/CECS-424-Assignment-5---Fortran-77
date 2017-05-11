        PROGRAM ASSIGNEMENT5
        INTEGER X(100)
        INTEGER RANGE , START , FINISH, NOTFOUND, MAX

        PRINT *, 'Number of values ?'
        READ *, N
        DO I = 1, N
           PRINT *, 'Enter Value', I
           READ *, X(I)
        END DO

        NOTFOUND = 0
        START = 0
        DO I = 1, N - 1
           DO P = 1, N - 1
              IF ( X(P) .GT. X(P + 1) ) THEN
                 MAX = X(P)
                 X(P) = X(P + 1)
                 X(P + 1) = MAX
              END IF
            END DO
        END DO
        
        DO WHILE ( NOTFOUND .EQ. 0 )
           PRINT *, 'Enter Value That You Want To Find'
           READ *, VAL

           START =  1
           FINISH = N
           RANGE = FINISH - START
           MID = (START + FINISH) / 2

           DO WHILE( X(MID) .NE. VAL .AND. RANGE .NE. 0)
              IF (VAL .GT. X(MID))THEN
                 START = MID + 1
              ELSE
               FINISH = MID - 1
              END IF

              RANGE = FINISH - START
              MID = (START + FINISH) / 2
           END DO

           IF( X(MID) .NE. VAL) THEN
               PRINT *, VAL, 'NOT FOUND'
           ELSE
            PRINT *, 'VALUE AT' , MID
           END IF
        END DO
        END

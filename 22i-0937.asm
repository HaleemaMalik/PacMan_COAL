INCLUDE Irvine32.inc
includelib Winmm.lib

.data
    playerName   DB 20 Dup (?)  ; Buffer to store the player's name
    welcomeMsg1  BYTE "*******************************", 0
    welcomeMsg2  BYTE "*  Welcome to Pacman Game!    *", 0
    welcomeMsg3  BYTE "*                             *", 0
    welcomeMsg4  BYTE "*   Enter your name below:    *", 0
    welcomeMsg5  BYTE "*******************************", 0
    enterNameMsg BYTE ">> ", 0
    menuMsg      BYTE "1. Start Game", 0
    menuMsg2     BYTE "2. Instructions", 0
    menuMsg3     BYTE "3. Exit", 0
    selectionMsg BYTE "Enter your choice (1-3): ", 0

    InstructionMsg1  BYTE "Press A to move left <-", 0
    InstructionMsg2  BYTE "Press D to move right ->", 0
    InstructionMsg3  BYTE "Press W to move up ->", 0
    InstructionMsg4  BYTE "Press S to move down ->", 0
    InstructionMsg5  BYTE "Avoid Ghosts to save lives ", 0
    InstructionMsg6  BYTE "Colliding with a Ghost will reduce score by 10 points", 0
    InstructionMsg7  BYTE "Eat dots to increase score", 0
    InstructionMsg8  BYTE "YOU'RE ALL SET TO GO PACMAN!", 0
    InstructionMsg9  BYTE "Press M to go back to Menu", 0

    GameOverrr  BYTE "GAME OVER!!!", 0
    PauseMessage BYTE "GAME PAUSED. PRESS P TO CONTINUE",0
    Names BYTE "Name: ",0
    ground BYTE "------------------------------------------------------------------------------------------------------------------------",0
    ground1 BYTE "|",0
    ground2 BYTE "|",0
    namelength DD ?

    ;LEVEL1

    maze1        BYTE  "                                                            ___                      ",10, 0
    maze2        BYTE  "         ___                                                | |                      ",10, 0
    maze3        BYTE  "         | |                                                | |                      ",10, 0
    maze4        BYTE  "         | |                                                | |                      ",10, 0
    maze5        BYTE  "         | |___________________________________             |_|                      ",10, 0
    maze6        BYTE  "         |___________________________________ |                                      ",10, 0
    maze7        BYTE  "                                            | |                                      ",10, 0
    maze8        BYTE  "                                            | |                                      ",10, 0
    maze9        BYTE  "                                            | |                                      ",10, 0
    maze10       BYTE  "                                            | |                                      ",10, 0
    maze11       BYTE  "                                            | |                                      ",10, 0
    maze12       BYTE  "                                            | |__________________________            ",10, 0
    maze13       BYTE  " __________________                         |__________________________ |            ",10, 0
    maze14       BYTE  " __________________|                                                  | |            ",10, 0
    maze15       BYTE  "                                                                      | |            ",10, 0
    maze16       BYTE  "                     __________________                               |_|            ",10, 0
    maze17       BYTE  "                    |__________________|                                             ",10, 0
    maze18       BYTE  "                                                                                     ",10, 0
    maze19       BYTE  "                                                                           _         ",10, 0
    maze20       BYTE  "                                                                          | |        ",10, 0
    maze21       BYTE  "       _                                                                  | |        ",10, 0
    maze22       BYTE  "      | |       ________________________         _________________________| |        ",10, 0
    maze23       BYTE  "      | |       | ____________________ |         | _________________________|        ",10, 0
    maze24       BYTE  "      | |       | |                  | |         | |                                 ",10, 0
    maze25       BYTE  "      |_|       |_|                  |_|         |_|                                 ",10, 0
                 
    ;LEVEL2

    Level2_maze1        BYTE  "   ___                                                                               ",10, 0
    Level2_maze2        BYTE  "   | |                                                            _____________      ",10, 0
    Level2_maze3        BYTE  "   | |                                                            | _________ |      ",10, 0
    Level2_maze4        BYTE  "   | |______                                                      | |_|_|_|_| |      ",10, 0
    Level2_maze5        BYTE  "   |______ |          ___________________________________         | |_|_|_|_| |      ",10, 0
    Level2_maze6        BYTE  "         | |         |_________________________________ |         | |_|_|_|_| |      ",10, 0
    Level2_maze7        BYTE  "         | |                                          | |         |___________|      ",10, 0
    Level2_maze8        BYTE  "         | |                                          | |                            ",10, 0
    Level2_maze9        BYTE  "         | |                                          | |                            ",10, 0
    Level2_maze10       BYTE  "         | |_________________________________         | |                            ",10, 0
    Level2_maze11       BYTE  "         |__________________________________ |        | |                            ",10, 0
    Level2_maze12       BYTE  "                                           | |        | |                            ",10, 0
    Level2_maze13       BYTE  "   ___                                     | |        | |                            ",10, 0
    Level2_maze14       BYTE  "   | |                                     | |        | |_______________________     ",10, 0
    Level2_maze15       BYTE  "   | |                                     | |        |_________________________|    ",10, 0
    Level2_maze16       BYTE  "   | |_____________________________        | |                                       ",10, 0
    Level2_maze17       BYTE  "   |_____________________________ |        | |                                       ",10, 0
    Level2_maze18       BYTE  "                                | |        | |                                       ",10, 0
    Level2_maze19       BYTE  "      __________________________| |        | |                                       ",10, 0
    Level2_maze20       BYTE  "      | __________________________|        | |_______________________                ",10, 0
    Level2_maze21       BYTE  "      | |                                  |________________________|                ",10, 0
    Level2_maze22       BYTE  "      | |                                                                            ",10, 0
    Level2_maze23       BYTE  "      | |                                                                            ",10, 0
    Level2_maze24       BYTE  "      |_|                                                                            ",10, 0
    Level2_maze25       BYTE  "                                                                                     ",10, 0

    ;LEVEL3

    Level3_maze1        BYTE  "          | |                                                         ___| |         ",10, 0
    Level3_maze2        BYTE  "          | |                                                         |__| |         ",10, 0
    Level3_maze3        BYTE  "          | |                ____________________      ___               | |         ",10, 0
    Level3_maze4        BYTE  "          |_|                |______   _________|      | |               |_|         ",10, 0
    Level3_maze5        BYTE  "                   ___              | |                | |                           ",10, 0
    Level3_maze6        BYTE  "                   | |              | |                | |                           ",10, 0
    Level3_maze7        BYTE  " ___________       | |              | |                | |                           ",10, 0
    Level3_maze8        BYTE  " __________|       | |              | |      __________| |__________________         ",10, 0
    Level3_maze9        BYTE  "                   | |              | |      |_____________________________|         ",10, 0
    Level3_maze10       BYTE  "                   | |              |_|                                              ",10, 0
    Level3_maze11       BYTE  " __________________| |    ___                              ___    _______________    ",10, 0
    Level3_maze12       BYTE  " ____________________|    | |                              | |    | ____________|    ",10, 0
    Level3_maze13       BYTE  "                          | |      _________________       | |    | |                ",10, 0
    Level3_maze14       BYTE  " __________________       | |      |_|_|___|_|___|_|       | |    | |                ",10, 0
    Level3_maze15       BYTE  " ________________ |       | |      |_|___|__|__|___|       | |    | |      _         ",10, 0
    Level3_maze16       BYTE  "                | |       | |      |___|__|___|__|_|       | |    | |     | |        ",10, 0
    Level3_maze17       BYTE  "             ___| |       | |                              | |    | |     | |        ",10, 0
    Level3_maze18       BYTE  "             |__| |       | |                              | |    |_|     | |        ",10, 0
    Level3_maze19       BYTE  "       _        | |       | |______________________________| |            | |        ",10, 0
    Level3_maze20       BYTE  "      | |       |_|       |__________________________________|            | |        ",10, 0
    Level3_maze21       BYTE  "      | |                                                                 | |        ",10, 0
    Level3_maze22       BYTE  "      | |        _______________________       ___________________________| |        ",10, 0
    Level3_maze23       BYTE  "      | |        | ___________________ |       | ___________________________|        ",10, 0
    Level3_maze24       BYTE  "      | |        | |                 | |       | |                                   ",10, 0
    Level3_maze25       BYTE  "      | |        | |                 | |       | |                                   ",10, 0


    temp BYTE ?

    strScore BYTE "Score: ",0
    score BYTE 0

    strLives BYTE "Lives: ",0
    lives BYTE 5

    strLevel BYTE "Level: ",0
    level db 1

    xPos BYTE 20
    yPos BYTE 20

    xCoinPos BYTE ?
    yCoinPos BYTE ?

    xCoinPos_2 BYTE ?
    yCoinPos_2 BYTE ?

    xCoinPos_3 BYTE ?
    yCoinPos_3 BYTE ?

    xCoinPos_4 BYTE ?
    yCoinPos_4 BYTE ?

    xCoinPos_5 BYTE ?
    yCoinPos_5 BYTE ?

    inputChar BYTE ?
    choice BYTE ?

    screenWidth BYTE 80  ; Width of the screen
    screenHeight BYTE 25 ; Height of the screen
    check BYTE "S",0

    ghostXPos BYTE 10
    ghostYPos BYTE 10
    ghostChar BYTE "G"

    ghostXPos2 BYTE 78
    ghostYPos2 BYTE 3
   
   ghostXPos_level2 BYTE 13
   ghostYPos_level2 BYTE 10

   ghostXPos2_level2 BYTE 50
   ghostYPos2_level2 BYTE 8

   ghostXPos3_level2 BYTE 60
   ghostYPos3_level2 BYTE 2

   x_Fruit_Pos BYTE ?
   y_Fruit_Pos BYTE ?

   fruitExist BYTE 0
   fruitVal BYTE 0

   ghostXPos_level3 BYTE 15
   ghostYPos_level3 BYTE 3

   ghostXPos2_level3 BYTE 30
   ghostYPos2_level3 BYTE 13

   ghostXPos3_level3 BYTE 55
   ghostYPos3_level3 BYTE 19

   ghostXPos4_level3 BYTE 63
   ghostYPos4_level3 BYTE 11

   ghostXPos5_level3 BYTE 5
   ghostYPos5_level3 BYTE 25

   GhostDistanceFactor DWORD 5
   distance DWORD 0 

   FruitValue BYTE 0

   pacman_beginning db 'pacman_beginning.wav', 0

    PlaySound PROTO,
    pszSound: PTR BYTE,
    hmod: DWORD,
    fdwSound: DWORD

    ;File_handling
    filename BYTE "C:\Users\Haleema Tahir\source\repos\MASM-Irvine1\myScore.txt",0
    file_handle HANDLE ?
    levelsss db " ",0
    scoresss db "  ",0
    comma db ",",0
    bar db "|",0


.code
main PROC

INVOKE PlaySound, OFFSET pacman_beginning, NULL, 11

call Level1
cmp level, 3
jl finishGame

finishGame:
call File_handling

main ENDP

File_handling PROC
    create_File:
        push 0
        push FILE_ATTRIBUTE_NORMAL
        push OPEN_ALWAYS
        push 0
        push 0
        push FILE_SHARE_WRITE
        push offset filename
        call CreateFileA
        jc endFun
        mov file_handle, eax

    set_file_pointer:
        push FILE_END
        push 0
        push 0
        push file_handle
        call SetFilePointer

    write_text_to_file:

        push 0
        push 0
        push namelength
        push offset playername
        push file_handle
        call WriteFile

        push 0
        push 0
        push 1
        push offset comma
        push file_handle
        call WriteFile

        movzx eax, level
        add eax, 48
        mov esi, OFFSET levelsss
        mov [esi], eax

        push 0
        push 0
        push 1
        push offset levelsss
        push file_handle
        call WriteFile

        push 0
        push 0
        push 1
        push offset comma
        push file_handle
        call WriteFile

        movzx eax, score
        cmp score, 10
        jl L1
        jge L2

        L1:
            mov esi, OFFSET scoresss
            mov eax, 0
            add eax, 48
            mov [esi], eax
            inc esi
            movzx eax, score
            add eax, 48
            mov [esi], eax
            jmp L3
        L2:
            mov esi, OFFSET scoresss
            mov bl, 10
            div bl
            movzx ebx, al
            add ebx, 48
            mov [esi], ebx
            inc esi
            movzx ebx, ah
            add ebx, 48
            mov [esi], ebx
        L3:

        push 0
        push 0
        push 2
        push offset scoresss
        push file_handle
        call WriteFile

        push 0
        push 0
        push 1
        push offset bar
        push file_handle
        call WriteFile

        endFun:
    ret
File_handling ENDP


LEVEL1 PROC

   ; Set text color to cyan
    mov eax, cyan
    call SetTextColor

    mov dl,35
    mov dh,5
    call Gotoxy

    ; Display welcome message
    mov edx, OFFSET welcomeMsg1
    call WriteString
     call crlf 

    mov dl,35
    mov dh,6
    call Gotoxy

    mov edx, OFFSET welcomeMsg2
    call WriteString
     call crlf 

    mov dl,35
    mov dh,7
    call Gotoxy

    mov edx, OFFSET welcomeMsg3
    call WriteString
     call crlf 

    mov dl,35
    mov dh,8
    call Gotoxy

    mov edx, OFFSET welcomeMsg4
    call WriteString
     call crlf 

    mov dl,35
    mov dh,9
    call Gotoxy

    mov edx, OFFSET welcomeMsg5
    call WriteString
     call crlf 

    mov dl,35
    mov dh,10
    call Gotoxy

    ; Prompt for the player's name
    mov edx, OFFSET enterNameMsg
    call WriteString

    mov edx, OFFSET playerName
    mov ecx, 20  ; Maximum length of the name
    call ReadString

    mov esi, OFFSET playername
	mov ebx, 0
	L1__:
		inc ebx
		mov al, [esi]
		inc esi
		cmp al,0
		jne L1__

	dec ebx
    mov namelength, ebx

    ; Clear the screen after getting the name
    call Clrscr

    NEWLOOP:

    call Clrscr
    mov dl,32
    mov dh,10
    call Gotoxy

    ; Display game menu
    mov edx, OFFSET menuMsg
    call WriteString

    mov dl,32
    mov dh,11
    call Gotoxy

    mov edx, OFFSET menuMsg2
    call WriteString

    mov dl,32
    mov dh,12
    call Gotoxy

    mov edx, OFFSET menuMsg3
    call WriteString

    mov dl,32
    mov dh,13
    call Gotoxy

    mov edx, OFFSET selectionMsg
    call WriteString

    ; Read user's choice
    mov edx, OFFSET choice
    call ReadString
    movzx eax, byte ptr [choice]
    
    cmp eax, '1'
    je StartGame

    cmp eax, '2'
    je Instructions

    cmp eax, '3'
    je exitGame

    jmp main  ; If the input is not valid, return to the main menu


StartGame:
 call Clrscr
    
    
    mov ghostXPos, 10
    mov ghostYPos, 10

    call crlf
    Resume:
    call Maze_Generation_Level1

    ; draw ground at (0,25):
    mov eax,blue ;(black * 16)
    call SetTextColor
    mov dl,0
    mov dh,27
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    mov dl,0
    mov dh,1
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString

    mov ecx,27
    mov dh,2
    l1:
    mov dl,0
    call Gotoxy
    mov edx,OFFSET ground1
    call WriteString
    ;inc dh
    loop l1

    mov ecx,27
    mov dh,2
    mov temp,dh
    l2:
    mov dh,temp
    mov dl,80
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2
    
    call CreateRandomCoin
    call DrawCoin
    call CreateRandomCoin2
    call DrawCoin2
    call CreateRandomCoin3
    call DrawCoin3
    call CreateRandomCoin4
    call DrawCoin4
    call CreateRandomCoin5
    call DrawCoin5
    call Randomize
    call DrawPlayer

gameLoop:
   call DrawCoin
   call DrawCoin2
   call DrawCoin3
   call DrawCoin4
   call DrawCoin5
    call CheckCollisionsWithGhosts

    ;maze detection

        ; getting points:
        mov bl,xPos
        cmp bl,xCoinPos
        jne notCollecting
        mov bl,yPos
        cmp bl,yCoinPos
        jne notCollecting
     
        ; player is intersecting coin:
        inc score
        call CreateRandomCoin
        call DrawCoin

        notCollecting:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_2
        jne notCollecting2
        mov bl,yPos
        cmp bl,yCoinPos_2
        jne notCollecting2
        inc score
        call CreateRandomCoin2
        call DrawCoin2

        notCollecting2:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_3
        jne notCollecting3
        mov bl,yPos
        cmp bl,yCoinPos_3
        jne notCollecting3
        inc score
        call CreateRandomCoin3
        call DrawCoin3

        notCollecting3:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_4
        jne notCollecting4
        mov bl,yPos
        cmp bl,yCoinPos_4
        jne notCollecting4
        inc score
        call CreateRandomCoin4
        call DrawCoin4

        notCollecting4:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_5
        jne notCollecting5
        mov bl,yPos
        cmp bl,yCoinPos_5
        jne notCollecting5
        inc score
        call CreateRandomCoin5
        call DrawCoin4

        notCollecting5:
        cmp score, 10
        jl ScoreIsLess
        inc level
        call Level2

        ScoreIsLess:

        mov eax,white (black * 16)
        call SetTextColor

        ; draw score:
        mov dl,0
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov al,score
        call WriteDEC

        mov eax,red (black * 16)
        call SetTextColor
        ; draw lives:
        mov dl,11
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strLives
        call WriteString
        mov al,lives
        call WriteDEC

        mov eax,white (black * 16)
        call SetTextColor
        ; draw level:
        mov dl,21
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strLevel
        call WriteString
        mov al,level
        call WriteDEC
        call UpdateGhost1
        call UpdateGhost2
        call DrawGhost1
        call DrawGhost2

        push eax
        mov al, 80
        call Delay
        pop eax

        ; get user key input:
        call ReadKey
        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar,"p"
        je Pause_Label

        jmp gameLoop
        ; Handle screen wrapping

        moveUp:
        call Player_CheckCollision_Up
        cmp edx,1
        je not_up
        call UpdatePlayer

        dec yPos
        cmp yPos, 1
        je wrapDown
        call DrawPlayer

        not_up:
        jmp gameLoop
        

        moveDown:
        call Player_CheckCollision_Down
        cmp edx,1
        je not_down
        call UpdatePlayer

        inc yPos
        cmp yPos, 26
        je wrapUp
        not_down:
        call DrawPlayer

        jmp gameLoop      

        moveLeft:
        call Player_CheckCollision_Left
        cmp edx,1
        je not_left
        call UpdatePlayer

        dec xPos
        cmp xPos, 0
        je wrapRight
        not_left:
        call DrawPlayer

        jmp gameLoop


        moveRight:
        call Player_CheckCollision_Right
        cmp edx,1
        je not_right
        call UpdatePlayer

        inc xPos
        cmp xPos, 80
        je wrapLeft
        not_right:
        call DrawPlayer

        jmp gameLoop

     wrapRight:
        mov xPos, 79
        jmp gameLoop


    wrapLeft:
        mov xPos, 0
        jmp gameLoop

    wrapDown:
        mov yPos, 26
        jmp gameLoop

    wrapUp:  
        mov yPos, 2
        jmp gameLoop
  
  Pause_Label:
     call clrscr
     mov eax,white (black * 16)
     call SetTextColor

     mov edx, OFFSET PauseMessage
    call WriteString
     call crlf 

    call ReadChar
    mov inputChar,al
    call clrscr
    cmp inputChar,"p"
    je Resume
    jmp Pause_Label

    jmp gameLoop


Instructions:


    ; Display instructions and return to the main menu
    call Clrscr

    ; Set text color to cyan
    mov eax, cyan
    call SetTextColor

    mov dl,32
    mov dh,5
    call Gotoxy

    ; Display instructions (add your instructions here)
    mov edx, OFFSET InstructionMsg1  ; Reusing welcome message for simplicity
    call WriteString
    call crlf 

    mov dl,32
    mov dh,6
    call Gotoxy

    mov edx, OFFSET InstructionMsg2
    call WriteString
     call crlf 

    mov dl,32
    mov dh,7
    call Gotoxy

    mov edx, OFFSET InstructionMsg3
    call WriteString
    call crlf 

    mov dl,32
    mov dh,8
    call Gotoxy

    mov edx, OFFSET InstructionMsg4
    call WriteString
    call crlf 

    mov dl,32
    mov dh,9
    call Gotoxy

    mov edx, OFFSET InstructionMsg5
    call WriteString
    call crlf 

    mov dl,32
    mov dh,10
    call Gotoxy

    mov edx, OFFSET InstructionMsg6
    call WriteString
    call crlf 

    mov dl,32
    mov dh,11
    call Gotoxy

    mov edx, OFFSET InstructionMsg7
    call WriteString
    call crlf 

    mov dl,32
    mov dh,12
    call Gotoxy

    mov edx, OFFSET InstructionMsg8
    call WriteString
    call crlf 

    mov dl,32
    mov dh,20
    call Gotoxy

    mov edx, OFFSET InstructionMsg9
    call WriteString
    call crlf 

    ; Wait for user input before returning to the main menu
    call ReadChar
    jmp NEWLOOP

    

exitGame:
    call clrscr
    exit

ret
LEVEL1 ENDP

LEVEL2 PROC

mov xPos, 40
mov yPos, 25

StartGame:
 call Clrscr

  call crlf
    Resume:
    mov ghostXPos, 10
    mov ghostYPos, 10

    call Maze_Generation_Level2
  
    ; draw ground at (0,25):
    mov eax,blue ;(black * 16)
    call SetTextColor
    mov dl,0
    mov dh,27
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    mov dl,0
    mov dh,1
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString

    mov ecx,27
    mov dh,2
    l1:
    mov dl,0
    call Gotoxy
    mov edx,OFFSET ground1
    call WriteString
    ;inc dh
    loop l1


    mov ecx,27
    mov dh,2
    mov temp,dh
    l2:
    mov dh,temp
    mov dl,80
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2
    

 
;    call CreateRandomFruit
;    call DrawFruit


    call CreateRandomCoin_level2
    call DrawCoin
    call CreateRandomCoin2_level2
    call DrawCoin2
    call CreateRandomCoin3_level2
    call DrawCoin3
    call CreateRandomCoin4_level2
    call DrawCoin4
    call CreateRandomCoin5_level2
    call DrawCoin5
    call Randomize
    call DrawPlayer


gameLoop:

    call CheckCollisionsWithGhosts_level2
    call DrawCoin
   call DrawCoin2
   call DrawCoin3
   call DrawCoin4
   call DrawCoin5
    call DrawFruit

        inc fruitVal
        cmp fruitExist, 1
        je NoFruitGeneration
        cmp fruitVal, 120
        jl NoFruitGeneration

        call CreateRandomFruit
        call DrawFruit
        mov fruitExist, 1
        mov fruitVal, 1

        NoFruitGeneration:

        ; getting points:
        mov bl,xPos
        cmp bl,xCoinPos
        jne notCollecting
        mov bl,yPos
        cmp bl,yCoinPos
        jne notCollecting
     
        ; player is intersecting coin:
        inc score
        call CreateRandomCoin_level2
        call DrawCoin

        notCollecting:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_2
        jne notCollecting2
        mov bl,yPos
        cmp bl,yCoinPos_2
        jne notCollecting2
        inc score
        call CreateRandomCoin2_level2
        call DrawCoin2

        notCollecting2:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_3
        jne notCollecting3
        mov bl,yPos
        cmp bl,yCoinPos_3
        jne notCollecting3
        inc score
        call CreateRandomCoin3_level2
        call DrawCoin3

        notCollecting3:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_4
        jne notCollecting4
        mov bl,yPos
        cmp bl,yCoinPos_4
        jne notCollecting4
        inc score
        call CreateRandomCoin4_level2
        call DrawCoin4

        notCollecting4:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_5
        jne notCollecting5
        mov bl,yPos
        cmp bl,yCoinPos_5
        jne notCollecting5
        inc score
        call CreateRandomCoin5_level2
        call DrawCoin4

        notCollecting5:
        cmp score, 50
        jl Labelll
        inc level
        call LEVEL3

        mov bl,0
        Labelll:
        cmp fruitExist, 1
        jne FruitDoesnotExist

        ; getting points for fruit:
        mov bl,xPos
        cmp bl,x_Fruit_Pos
        jne notCollecting6
        mov bl,yPos
        cmp bl,y_Fruit_Pos
        jne notCollecting6
        ; player is intersecting fruit:
        add score,10
        mov fruitExist, 0
        mov fruitVal, 0
        mov x_Fruit_Pos,0
        mov y_Fruit_Pos,0
        ;call CreateRandomFruit
        ;call DrawFruit
        NoFruit:
        notCollecting6:
        FruitDoesnotExist:

        cmp score, 50
        jl ScoreIsLess
        inc level
        call LEVEL3
      ; jmp exitgame

        ScoreIsLess:


        mov eax,white (black * 16)
        call SetTextColor

        ; draw score:
        mov dl,0
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov al,score
        call WriteDEC

        mov eax,red (black * 16)
        call SetTextColor
        ; draw lives:
        mov dl,11
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strLives
        call WriteString
        mov al,lives
        call WriteDEC

        mov eax,white (black * 16)
        call SetTextColor
        ; draw level:
        mov dl,21
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strLevel
        call WriteString
        mov al,level
        call WriteDEC

        call UpdateGhost1_Level2
        call UpdateGhost2_Level2
        call UpdateGhost3_Level2
        call DrawGhost1
        call DrawGhost2
        call DrawGhost3


        ;ghost movement
        push eax
        mov al, 80
        call Delay
        pop eax

        ; get user key input:
        call ReadKey
        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar,"p"
        je Pause_label

        jmp gameLoop
        ; Handle screen wrapping

        moveUp:
        call Player_CheckCollision_Up2
        cmp edx,1
        je not_up
        call UpdatePlayer
        dec yPos
        cmp yPos, 2
        je wrapDown
        call DrawPlayer
        not_up:
        jmp gameLoop
        

        moveDown:
        call Player_CheckCollision_Down2
        cmp edx,1
        je not_down
        call UpdatePlayer
        inc yPos
        cmp yPos, 27
        je wrapUp
        not_down:
        call DrawPlayer
        jmp gameLoop

       

        moveLeft:
        call Player_CheckCollision_Left2
        cmp edx,1
        je not_left
        call UpdatePlayer
        dec xPos
        cmp xPos, 0
        je wrapRight
        not_left:
        call DrawPlayer
        jmp gameLoop


        moveRight:
        call Player_CheckCollision_Right2
        cmp edx,1
        je not_right
        call UpdatePlayer
        inc xPos
        cmp xPos, 80
        je wrapLeft
        not_right:
        call DrawPlayer
        jmp gameLoop

     wrapRight:
        mov xPos, 79
        jmp gameLoop


    wrapLeft:
        mov xPos, 0
        jmp gameLoop

    wrapDown:
        mov yPos, 26
        jmp gameLoop

    wrapUp:  
        mov yPos, 2
        jmp gameLoop

        
  Pause_Label:
     call clrscr
     mov eax,white (black * 16)
     call SetTextColor

     mov edx, OFFSET PauseMessage
    call WriteString
     call crlf 

    call ReadChar
    mov inputChar,al
    call clrscr
    cmp inputChar,"p"
    je Resume
    jmp Pause_Label 

    jmp gameLoop

    exitGame:
    call clrscr
    exit

ret
LEVEL2 ENDP

LEVEL3 PROC
mov xPos, 42
mov yPos, 25

StartGame:
 call Clrscr
 mov fruitVal, 0
 mov fruitExist, 0

  call crlf
    Resume:
    mov ghostXPos, 10
    mov ghostYPos, 10

    call Maze_Generation_Level3
  

    ; draw ground at (0,25):
    mov eax,blue ;(black * 16)
    call SetTextColor
    mov dl,0
    mov dh,27
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    mov dl,0
    mov dh,1
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString

    mov ecx,27
    mov dh,2
    l1:
    mov dl,0
    call Gotoxy
    mov edx,OFFSET ground1
    call WriteString
    ;inc dh
    loop l1


    mov ecx,27
    mov dh,2
    mov temp,dh
    l2:
    mov dh,temp
    mov dl,80
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2


;    call CreateRandomFruit
;    call DrawFruit

    call CreateRandomCoin_level3
    call DrawCoin
    call CreateRandomCoin2_level3
    call DrawCoin2
    call CreateRandomCoin3_level3
    call DrawCoin3
    call CreateRandomCoin4_level3
    call DrawCoin4
    call CreateRandomCoin5_level3
    call DrawCoin5

    call Randomize
    call DrawPlayer

gameLoop:

    call CheckCollisionsWithGhosts_level3

    call DrawCoin
   call DrawCoin2
   call DrawCoin3
   call DrawCoin4
   call DrawCoin5
    call DrawFruit
    call DrawPlayer


        inc fruitVal
        cmp fruitExist, 1
        je NoFruitGeneration
        cmp fruitVal, 120
        jl NoFruitGeneration

        call CreateRandomFruit
        call DrawFruit
        mov fruitExist, 1
        mov fruitVal, 1

        NoFruitGeneration:

        ; getting points:
        mov bl,xPos
        cmp bl,xCoinPos
        jne notCollecting
        mov bl,yPos
        cmp bl,yCoinPos
        jne notCollecting
     
        ; player is intersecting coin:
        inc score
        call CreateRandomCoin_level3
        call DrawCoin

        notCollecting:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_2
        jne notCollecting2
        mov bl,yPos
        cmp bl,yCoinPos_2
        jne notCollecting2
        inc score
        call CreateRandomCoin2_level3
        call DrawCoin2

        notCollecting2:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_3
        jne notCollecting3
        mov bl,yPos
        cmp bl,yCoinPos_3
        jne notCollecting3
        inc score
        call CreateRandomCoin3_level3
        call DrawCoin3

        notCollecting3:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_4
        jne notCollecting4
        mov bl,yPos
        cmp bl,yCoinPos_4
        jne notCollecting4
        inc score
        call CreateRandomCoin4_level3
        call DrawCoin4

        notCollecting4:
        mov bl,0
        mov bl,xPos
        cmp bl,xCoinPos_5
        jne notCollecting5
        mov bl,yPos
        cmp bl,yCoinPos_5
        jne notCollecting5
        inc score
        call CreateRandomCoin5_level3
        call DrawCoin4

        notCollecting5:


        mov bl,0
        Labelll:
        cmp fruitExist, 1
        jne FruitDoesnotExist

        ; getting points for fruit:
        mov bl,xPos
        cmp bl,x_Fruit_Pos
        jne notCollecting6
        mov bl,yPos
        cmp bl,y_Fruit_Pos
        jne notCollecting6
        ; player is intersecting fruit:
        add score,10
        mov fruitExist, 0
        mov fruitVal, 0
        mov x_Fruit_Pos,0
        mov y_Fruit_Pos,0
        ;call CreateRandomFruit
        ;call DrawFruit
        NoFruit:
        notCollecting6:
        FruitDoesnotExist:

        mov eax,white (black * 16)
        call SetTextColor

        ; draw score:
        mov dl,0
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov al,score
        call WriteDEC

        mov eax,red (black * 16)
        call SetTextColor
        ; draw lives:
        mov dl,10
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strLives
        call WriteString
        mov al,lives
        call WriteDEC

        mov eax,white (black * 16)
        call SetTextColor
        ; draw level:
        mov dl,21
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strLevel
        call WriteString
        mov al,level
        call WriteDEC

        call UpdateGhost1_Level3
        call UpdateGhost2_Level3
        call UpdateGhost3_Level3
        call UpdateGhost4_Level3
        
        call DrawGhost1_level3
        call DrawGhost2_level3
        call DrawGhost3_level3
        call DrawGhost4_level3
        
        push eax
        mov al, 80
        call Delay
        pop eax

        ; get user key input:
        call ReadKey
        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar,"p"
        je Pause_label

        jmp gameLoop
        ; Handle screen wrapping

        moveUp:
        call Player_CheckCollision_Up3
        cmp edx,1
        je not_up
        call UpdatePlayer
        call UpdateGhost5_Level3
        dec yPos
        cmp yPos, 1
        je wrapDown
        call DrawPlayer
        call DrawGhost5_level3
        not_up:
        jmp gameLoop
        

        moveDown:
        call Player_CheckCollision_Down3
        cmp edx,1
        je not_down
        call UpdatePlayer
        call UpdateGhost5_Level3
        inc yPos
        cmp yPos, 27
        je wrapUp
        not_down:
        call DrawPlayer
        call DrawGhost5_level3
        jmp gameLoop

       
        moveLeft:
        call Player_CheckCollision_Left3
        cmp edx,1
        je not_left
        call UpdatePlayer
        call UpdateGhost5_Level3
        dec xPos
        cmp xPos, 0
        je wrapRight
        not_left:
        call DrawPlayer
        call DrawGhost5_level3
        jmp gameLoop


        moveRight:
        call Player_CheckCollision_Right3
        cmp edx,1
        je not_right
        call UpdatePlayer
        call UpdateGhost5_Level3
        inc xPos
        cmp xPos, 80
        je wrapLeft
        cmp xPos,12
        je Secret_hole
        not_right:
        call DrawPlayer
        call DrawGhost5_level3
        jmp gameLoop

     wrapRight:
        mov xPos, 79
        jmp gameLoop


    wrapLeft:
        mov xPos, 0
        jmp gameLoop

    wrapDown:
        mov yPos, 26
        jmp gameLoop

    wrapUp:  
        mov yPos, 2
        jmp gameLoop

    Secret_hole:
        cmp yPos,9
        je Secret_hole2
        
    Secret_hole2:
        mov xPos,68
        mov yPos,3
        jmp gameLoop

  Pause_Label:
     call clrscr
     mov eax,white (black * 16)
     call SetTextColor

     mov edx, OFFSET PauseMessage
    call WriteString
     call crlf 

    call ReadChar
    mov inputChar,al
    call clrscr
    cmp inputChar,"p"
    je Resume
    jmp Pause_Label
 

    jmp gameLoop

    exitGame:
    call Clrscr

    mov dl,32
    mov dh,10
    call Gotoxy
    mov edx, OFFSET GameOverrr
    call WriteString
    call crlf
     mov dl,32
    mov dh,12
    call Gotoxy
    mov edx, OFFSET Names
    call WriteString
    mov edx, OFFSET playerName
    call writeString
    call crlf
     mov dl,32
    mov dh,14
    call Gotoxy
    mov edx,OFFSET strScore
    call WriteString
    mov al,score
    call WriteDEC
    call crlf
    call crlf

    call waitmsg
    exit

ret
LEVEL3 ENDP

;level1 procedures

DrawPlayer PROC

    ; draw player at (xPos,yPos):
    mov eax,yellow ;(blue*16)
    call SetTextColor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al,"X"
    call WriteChar
    ret
DrawPlayer ENDP


DrawGhost1 PROC
   
   cmp level,2
   je L2

    mov eax, magenta
    call SetTextColor
    mov dl, ghostXPos
    mov dh, ghostYPos
    call Gotoxy
    mov al, ghostChar
    call WriteChar
    jmp L3

    L2:
    mov eax, magenta
    call SetTextColor
    mov dl, ghostXPos_level2
    mov dh, ghostYPos_level2
    call Gotoxy
    mov al, ghostChar
    call WriteChar
    jmp L3
    
    L3:
    
    ret
DrawGhost1 ENDP


DrawGhost2 PROC

 cmp level,2
   je L2
    cmp level,3
   je L3

    mov eax, red 
    call SetTextColor
    mov dl, ghostXPos2
    mov dh, ghostYPos2
    call Gotoxy
    mov al, ghostChar
    call WriteChar
    jmp L4

     L2:
    mov eax, red
    call SetTextColor
    mov dl, ghostXPos_level2
    mov dh, ghostYPos_level2
    call Gotoxy
    mov al, ghostChar
    call WriteChar
    jmp L4

     L3:
    mov eax, red
    call SetTextColor
    mov dl, ghostXPos_level3
    mov dh, ghostYPos_level3
    call Gotoxy
    mov al, ghostChar
    call WriteChar
    jmp L4
    
    L4:

    ret
DrawGhost2 ENDP

DrawGhost3 PROC

    mov eax, lightred 
    call SetTextColor
    mov dl, ghostXPos3_level2
    mov dh, ghostYPos3_level2
    call Gotoxy
    mov al, ghostChar
    call WriteChar
    
ret
DrawGhost3 ENDP

UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP

UpdateGhost1 PROC
 ; Clear the previous ghost position
    mov eax, white ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos
    mov dh, ghostYPos
    call Gotoxy
    mov al, " "
    call WriteChar

   ; Move the ghost horizontally within a fixed range
    inc ghostXPos
    ; Check if the ghost reached the right boundary, if so, reset its position and move down
    cmp ghostXPos, 40
    jl noBoundaryCross
    mov ghostXPos, 10 ; Reset to the starting position
    ; Move the ghost downward by 10 units
    add ghostYPos, 10
    ; Check if the ghost reached the bottom boundary, if so, reset its position and move up
    cmp ghostYPos, 24 ; Adjust the bottom boundary as needed
    jl noBottomBoundaryCross
    mov ghostXPos, 13
    mov ghostYPos, 2 ; Reset to the original vertical position
    ; Move the ghost upward by 10 units
    ;sub ghostYPos, 10
    noBottomBoundaryCross:
    noBoundaryCross:

    ; Draw the ghost at its new position
    mov eax, magenta ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos
    mov dh, ghostYPos
    call Gotoxy
    mov al, ghostchar
    call WriteChar
    ret
UpdateGhost1 ENDP

UpdateGhost2 PROC
    ; Clear the previous position of the second ghost
    mov eax, white ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos2
    mov dh, ghostYPos2
    call Gotoxy
    mov al, " "
    call WriteChar

    ; Move the second ghost vertically within a fixed range
    inc ghostYPos2
    ; Check if the second ghost reached the bottom boundary, if so, reset its position and move up
    cmp ghostYPos2, 22 ; Adjust the bottom boundary as needed
    jl noBottomBoundaryCross
    mov ghostYPos2, 2 ; Reset to the starting position
    noBottomBoundaryCross:

    ; Draw the second ghost at its new position
    mov eax, cyan ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos2
    mov dh, ghostYPos2
    call Gotoxy
    mov al, "G"
    call WriteChar

    ret
UpdateGhost2 ENDP


DrawCoin PROC

    mov eax,yellow ;(red * 16)
    call SetTextColor
    mov dl,xCoinPos
    mov dh,yCoinPos
    call Gotoxy
    mov al,"o"
    call WriteChar

    ret
DrawCoin ENDP

DrawCoin2 PROC


    mov eax,yellow ;(red * 16)
    call SetTextColor
    mov dl,xCoinPos_2
    mov dh,yCoinPos_2
    call Gotoxy
    mov al,"o"
    call WriteChar
    ret
DrawCoin2 ENDP

DrawCoin3 PROC

    mov eax,yellow ;(red * 16)
    call SetTextColor
    mov dl,xCoinPos_3
    mov dh,yCoinPos_3
    call Gotoxy
    mov al,"o"
    call WriteChar
    ret
DrawCoin3 ENDP

DrawCoin4 PROC


    mov eax,yellow ;(red * 16)
    call SetTextColor
    mov dl,xCoinPos_4
    mov dh,yCoinPos_4
    call Gotoxy
    mov al,"o"
    call WriteChar
    ret
DrawCoin4 ENDP

DrawCoin5 PROC

    mov eax,yellow ;(red * 16)
    call SetTextColor
    mov dl,xCoinPos_5
    mov dh,yCoinPos_5
    call Gotoxy
    mov al,"o"
    call WriteChar
    ret
DrawCoin5 ENDP

CreateRandomCoin PROC
    labell:
    mov eax, 80
    call RandomRange
    mov xCoinPos, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos, al


    call Coin_CheckCollision_Above_Below
    cmp edx,1
    je labell
    call Coin_CheckCollision_Left_Right
    cmp edx,1
    je labell
    call Coin_CheckCollision_OnTop
    cmp edx,1
    je labell


    ret
CreateRandomCoin ENDP

CreateRandomCoin2 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_2, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_2, al

    call Coin2_CheckCollision_Above_Below
    cmp edx,1
    je labell
    call Coin2_CheckCollision_Left_Right
    cmp edx,1
    je labell
    call Coin2_CheckCollision_OnTop
    cmp edx,1
    je labell
    ret
CreateRandomCoin2 ENDP

CreateRandomCoin3 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_3, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_3, al

    call Coin3_CheckCollision_Above_Below
    cmp edx,1
    je labell
    call Coin3_CheckCollision_Left_Right
    cmp edx,1
    je labell
    call Coin3_CheckCollision_OnTop
    cmp edx,1
    je labell
    ret
CreateRandomCoin3 ENDP

CreateRandomCoin4 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_4, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_4, al

    call Coin4_CheckCollision_Above_Below
    cmp edx,1
    je labell
    call Coin4_CheckCollision_Left_Right
    cmp edx,1
    je labell
    call Coin4_CheckCollision_OnTop
    cmp edx,1
    je labell
    ret
CreateRandomCoin4 ENDP

CreateRandomCoin5 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_5, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_5, al

    call Coin5_CheckCollision_Above_Below
    cmp edx,1
    je labell
    call Coin5_CheckCollision_Left_Right
    cmp edx,1
    je labell
    call Coin5_CheckCollision_OnTop
    cmp edx,1
    je labell
    ret
CreateRandomCoin5 ENDP

Player_CheckCollision_Up PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET maze1
    sub eax,3
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Up ENDP 

Player_CheckCollision_Down PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET maze1
    sub eax,1
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Down ENDP 

Player_CheckCollision_Left PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET maze1
    sub eax,2
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    sub esi,1

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Left ENDP 

Player_CheckCollision_Right PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET maze1
    sub eax,2
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    add esi,1

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Right ENDP 

Maze_Generation_Level1 PROC

mov eax, yellow
    call SetTextColor
    ; Set up the maze
    mov dl,0
    mov dh,1
    call Gotoxy

    call crlf
 mov edx, OFFSET maze1
    call WriteString

    mov edx, OFFSET maze2
    call WriteString

    mov edx, OFFSET maze3
    call WriteString
 
    mov edx, OFFSET maze4
    call WriteString

    mov edx, OFFSET maze5
    call WriteString

    mov edx, OFFSET maze6
    call WriteString
 
    mov edx, OFFSET maze7
    call WriteString

    mov edx, OFFSET maze8
    call WriteString

    mov edx, OFFSET maze9
    call WriteString

    mov edx, OFFSET maze10
    call WriteString

    mov edx, OFFSET maze11
    call WriteString

    mov edx, OFFSET maze12
    call WriteString

    mov edx, OFFSET maze13
    call WriteString

    mov edx, OFFSET maze14
    call WriteString

    mov edx, OFFSET maze15
    call WriteString

    mov edx, OFFSET maze16
    call WriteString
     
    mov edx, OFFSET maze17
    call WriteString
    
    mov edx, OFFSET maze18
    call WriteString
    
    mov edx, OFFSET maze19
    call WriteString
     
    mov edx, OFFSET maze20
    call WriteString
     
    mov edx, OFFSET maze21
    call WriteString
    
    mov edx, OFFSET maze22
    call WriteString
    
    mov edx, OFFSET maze23
    call WriteString
    
    mov edx, OFFSET maze24
    call WriteString 
    
    mov edx, OFFSET maze25
    call WriteString

    ret
Maze_Generation_Level1 ENDP

CheckCollisionsWithGhosts PROC
    

    ; Calculate squared distance between player and first ghost
    mov al, ghostXPos
    sub al, xPos
    imul eax, eax
    mov bl, ghostYPos
    sub bl, yPos
    imul ebx, ebx
    add eax, ebx
    ; eax now contains the squared distance

    ; Compare squared distance with threshold 
    mov ebx, 1  ; threshold
    cmp eax, ebx
    je PlayerHitByGhost  ; Jump if the player is hit by the first ghost

    ; Repeat the process for the second ghost
    mov eax,0
    mov ebx,0
    ; Calculate squared distance between player and second ghost
    mov al, ghostXPos2
    sub al, xPos
    imul eax, eax
    mov bl, ghostYPos2
    sub bl, yPos
    imul ebx, ebx
    add eax, ebx

    mov ebx, 1 
    cmp eax, ebx
    je PlayerHitByGhost  ; Jump if the player is hit by the second ghost


    ; No collision with any ghosts
    jmp NoCollision
    

PlayerHitByGhost:
    ; Player hit by the first ghost
    dec lives
    cmp lives, 0
    je gameOver

    jmp NoCollision

    gameOver:
    call Clrscr

    mov dl,32
    mov dh,10
    call Gotoxy
    mov edx, OFFSET GameOverrr
    call WriteString
    call crlf
     mov dl,32
    mov dh,12
    call Gotoxy
    mov edx, OFFSET Names
    call WriteString
    mov edx, OFFSET playerName
    call writeString
    call crlf
     mov dl,32
    mov dh,14
    call Gotoxy
    mov edx,OFFSET strScore
    call WriteString
    mov al,score
    call WriteDEC
    call crlf
    call crlf 
    call File_handling
    call waitmsg
    exit
NoCollision:
    ret

CheckCollisionsWithGhosts ENDP

Coin_CheckCollision_Above_Below PROC
    movzx eax, yCoinPos
    movzx ecx, yCoinPos
    movzx ebx, xCoinPos

    mov esi, OFFSET maze1
    mov edi, OFFSET maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin_CheckCollision_Above_Below ENDP

Coin_CheckCollision_Left_Right PROC
  

    movzx eax, yCoinPos
    movzx ecx, yCoinPos
    movzx ebx, xCoinPos

    mov esi, OFFSET maze1
    mov edi, OFFSET maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin_CheckCollision_Left_Right ENDP

Coin_CheckCollision_OnTop PROC

    movzx eax, yCoinPos
    movzx ebx, xCoinPos

    mov esi, OFFSET maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, xCoinPos
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret

Coin_CheckCollision_OnTop ENDP

;coin2

Coin2_CheckCollision_Above_Below PROC
    movzx eax, yCoinPos_2
    movzx ecx, yCoinPos_2
    movzx ebx, xCoinPos_2

    mov esi, OFFSET maze1
    mov edi, OFFSET maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_2
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin2_CheckCollision_Above_Below ENDP

Coin2_CheckCollision_Left_Right PROC
  

    movzx eax, yCoinPos_2
    movzx ecx, yCoinPos_2
    movzx ebx, xCoinPos_2

    mov esi, OFFSET maze1
    mov edi, OFFSET maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,yCoinPos_2
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_2
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin2_CheckCollision_Left_Right ENDP

Coin2_CheckCollision_OnTop PROC

    movzx eax, yCoinPos_2
    movzx ebx, xCoinPos_2

    mov esi, OFFSET maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, xCoinPos_2
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret

Coin2_CheckCollision_OnTop ENDP

;coin3

Coin3_CheckCollision_Above_Below PROC
    movzx eax, yCoinPos_3
    movzx ecx, yCoinPos_3
    movzx ebx, xCoinPos_3

    mov esi, OFFSET maze1
    mov edi, OFFSET maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_3
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin3_CheckCollision_Above_Below ENDP

Coin3_CheckCollision_Left_Right PROC
  

    movzx eax, yCoinPos_3
    movzx ecx, yCoinPos_3
    movzx ebx, xCoinPos_3

    mov esi, OFFSET maze1
    mov edi, OFFSET maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,yCoinPos_3
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_3
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin3_CheckCollision_Left_Right ENDP

Coin3_CheckCollision_OnTop PROC

    movzx eax, yCoinPos_3
    movzx ebx, xCoinPos_3

    mov esi, OFFSET maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, xCoinPos_3
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret

Coin3_CheckCollision_OnTop ENDP

;coin4

Coin4_CheckCollision_Above_Below PROC
    movzx eax, yCoinPos_4
    movzx ecx, yCoinPos_4
    movzx ebx, xCoinPos_4

    mov esi, OFFSET maze1
    mov edi, OFFSET maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_4
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin4_CheckCollision_Above_Below ENDP

Coin4_CheckCollision_Left_Right PROC
  

    movzx eax, yCoinPos_4
    movzx ecx, yCoinPos_4
    movzx ebx, xCoinPos_4

    mov esi, OFFSET maze1
    mov edi, OFFSET maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,yCoinPos_4
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_4
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin4_CheckCollision_Left_Right ENDP

Coin4_CheckCollision_OnTop PROC

    movzx eax, yCoinPos_4
    movzx ebx, xCoinPos_4

    mov esi, OFFSET maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, xCoinPos_4
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret
Coin4_CheckCollision_OnTop ENDP

;coin5

Coin5_CheckCollision_Above_Below PROC
    movzx eax, yCoinPos_5
    movzx ecx, yCoinPos_5
    movzx ebx, xCoinPos_5

    mov esi, OFFSET maze1
    mov edi, OFFSET maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_5
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin5_CheckCollision_Above_Below ENDP

Coin5_CheckCollision_Left_Right PROC
  

    movzx eax, yCoinPos_5
    movzx ecx, yCoinPos_5
    movzx ebx, xCoinPos_5

    mov esi, OFFSET maze1
    mov edi, OFFSET maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,yCoinPos_5
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_5
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin5_CheckCollision_Left_Right ENDP

Coin5_CheckCollision_OnTop PROC

   movzx eax, yCoinPos_5
    movzx ebx, xCoinPos_5

    mov esi, OFFSET maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, xCoinPos_5
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret

Coin5_CheckCollision_OnTop ENDP

; LEVEL 2 PROCEDURES

CreateRandomCoin_level2 PROC
    labell:
    mov eax, 80
    call RandomRange
    mov xCoinPos, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos, al


    call Coin_CheckCollision_Above_Below_level2
    cmp edx,1
    je labell
    call Coin_CheckCollision_Left_Right_level2
    cmp edx,1
    je labell
    call Coin_CheckCollision_OnTop_level2
    cmp edx,1
    je labell


    ret
CreateRandomCoin_level2 ENDP

CreateRandomCoin2_level2 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_2, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_2, al

    call Coin2_CheckCollision_Above_Below_level2
    cmp edx,1
    je labell
    call Coin2_CheckCollision_Left_Right_level2
    cmp edx,1
    je labell
    call Coin2_CheckCollision_OnTop_level2
    cmp edx,1
    je labell
    ret
CreateRandomCoin2_level2 ENDP

CreateRandomCoin3_level2 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_3, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_3, al

    call Coin3_CheckCollision_Above_Below_level2
    cmp edx,1
    je labell
    call Coin3_CheckCollision_Left_Right_level2
    cmp edx,1
    je labell
    call Coin3_CheckCollision_OnTop_level2
    cmp edx,1
    je labell
    ret
CreateRandomCoin3_level2 ENDP

CreateRandomCoin4_level2 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_4, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_4, al

    call Coin4_CheckCollision_Above_Below_level2
    cmp edx,1
    je labell
    call Coin4_CheckCollision_Left_Right_level2
    cmp edx,1
    je labell
    call Coin4_CheckCollision_OnTop_level2
    cmp edx,1
    je labell
    ret
CreateRandomCoin4_level2 ENDP

CreateRandomCoin5_level2 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_5, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_5, al

    call Coin5_CheckCollision_Above_Below_level2
    cmp edx,1
    je labell
    call Coin5_CheckCollision_Left_Right_level2
    cmp edx,1
    je labell
    call Coin5_CheckCollision_OnTop_level2
    cmp edx,1
    je labell
    ret
CreateRandomCoin5_level2 ENDP

Coin_CheckCollision_Above_Below_level2 PROC
    movzx eax, yCoinPos
    movzx ecx, yCoinPos
    movzx ebx, xCoinPos

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin_CheckCollision_Above_Below_level2 ENDP

Coin_CheckCollision_Left_Right_level2 PROC
  

    movzx eax, yCoinPos
    movzx ecx, yCoinPos
    movzx ebx, xCoinPos

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx

    movzx ebx,xCoinPos
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin_CheckCollision_Left_Right_level2 ENDP

Coin_CheckCollision_OnTop_level2 PROC

    movzx eax, yCoinPos
    movzx ebx, xCoinPos

    mov esi, OFFSET Level2_maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, xCoinPos
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret


Coin_CheckCollision_OnTop_level2 ENDP

;coin2

Coin2_CheckCollision_Above_Below_level2 PROC
    movzx eax, yCoinPos_2
    movzx ecx, yCoinPos_2
    movzx ebx, xCoinPos_2

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_2
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin2_CheckCollision_Above_Below_level2 ENDP

Coin2_CheckCollision_Left_Right_level2 PROC
  

    movzx eax, yCoinPos_2
    movzx ecx, yCoinPos_2
    movzx ebx, xCoinPos_2

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_2
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_2
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin2_CheckCollision_Left_Right_level2 ENDP

Coin2_CheckCollision_OnTop_level2 PROC

     movzx eax, yCoinPos_2
    movzx ebx, xCoinPos_2

    mov esi, OFFSET Level2_maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, xCoinPos_2
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret

Coin2_CheckCollision_OnTop_level2 ENDP

;coin3

Coin3_CheckCollision_Above_Below_level2 PROC
    movzx eax, yCoinPos_3
    movzx ecx, yCoinPos_3
    movzx ebx, xCoinPos_3

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_3
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin3_CheckCollision_Above_Below_level2 ENDP

Coin3_CheckCollision_Left_Right_level2 PROC
  

    movzx eax, yCoinPos_3
    movzx ecx, yCoinPos_3
    movzx ebx, xCoinPos_3

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_3
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_3
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin3_CheckCollision_Left_Right_level2 ENDP

Coin3_CheckCollision_OnTop_level2 PROC

     movzx eax, yCoinPos_3
    movzx ebx, xCoinPos_3

    mov esi, OFFSET Level2_maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, xCoinPos
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret

Coin3_CheckCollision_OnTop_level2 ENDP

;coin4

Coin4_CheckCollision_Above_Below_level2 PROC
    movzx eax, yCoinPos_4
    movzx ecx, yCoinPos_4
    movzx ebx, xCoinPos_4

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_4
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin4_CheckCollision_Above_Below_level2 ENDP

Coin4_CheckCollision_Left_Right_level2 PROC
  

    movzx eax, yCoinPos_4
    movzx ecx, yCoinPos_4
    movzx ebx, xCoinPos_4

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_4
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_4
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin4_CheckCollision_Left_Right_level2 ENDP

Coin4_CheckCollision_OnTop_level2 PROC

     movzx eax, yCoinPos_4
    movzx ebx, xCoinPos_4

    mov esi, OFFSET Level2_maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, xCoinPos_4
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret

Coin4_CheckCollision_OnTop_level2 ENDP

;coin5

Coin5_CheckCollision_Above_Below_level2 PROC
    movzx eax, yCoinPos_5
    movzx ecx, yCoinPos_5
    movzx ebx, xCoinPos_5

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_5
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin5_CheckCollision_Above_Below_level2 ENDP

Coin5_CheckCollision_Left_Right_level2 PROC
  

    movzx eax, yCoinPos_5
    movzx ecx, yCoinPos_5
    movzx ebx, xCoinPos_5

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_5
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_5
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin5_CheckCollision_Left_Right_level2 ENDP

Coin5_CheckCollision_OnTop_level2 PROC

    movzx eax, yCoinPos_5
    movzx ebx, xCoinPos_5

    mov esi, OFFSET Level2_maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, xCoinPos_5
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret

Coin5_CheckCollision_OnTop_level2 ENDP


CheckCollisionsWithGhosts_level2 PROC
 ; Calculate squared distance between player and first ghost
    mov al, ghostXPos_level2
    sub al, xPos
    imul eax, eax
    mov bl, ghostYPos_level2
    sub bl, yPos
    imul ebx, ebx
    add eax, ebx
    ; eax now contains the squared distance

    ; Compare squared distance with threshold 
    mov ebx, 1  ; threshold
    cmp eax, ebx
    je PlayerHitByGhost  ; Jump if the player is hit by the first ghost

    ; Repeat the process for the second ghost
    mov eax,0
    mov ebx,0
    ; Calculate squared distance between player and second ghost
    mov al, ghostXPos2_level2
    sub al, xPos
    imul eax, eax
    mov bl, ghostYPos2_level2
    sub bl, yPos
    imul ebx, ebx
    add eax, ebx

    mov ebx, 1 
    cmp eax, ebx
    je PlayerHitByGhost  ; Jump if the player is hit by the second ghost

     ; Repeat the process for the third ghost
    mov eax,0
    mov ebx,0
    ; Calculate squared distance between player and second ghost
    mov al, ghostXPos3_level2
    sub al, xPos
    imul eax, eax
    mov bl, ghostYPos3_level2
    sub bl, yPos
    imul ebx, ebx
    add eax, ebx

    mov ebx, 1 
    cmp eax, ebx
    je PlayerHitByGhost  ; Jump if the player is hit by the third ghost

      ; No collision with any ghosts
    jmp NoCollision
    

PlayerHitByGhost:

      ; Player hit by the first ghost
    dec lives
    cmp lives, 0
    je gameOver

    jmp NoCollision

    gameOver:
    call Clrscr

    mov dl,32
    mov dh,10
    call Gotoxy
    mov edx, OFFSET GameOverrr
    call WriteString
    call crlf
     mov dl,32
    mov dh,12
    call Gotoxy
    mov edx, OFFSET Names
    call WriteString
    mov edx, OFFSET playerName
    call writeString
    call crlf
     mov dl,32
    mov dh,14
    call Gotoxy
    mov edx,OFFSET strScore
    call WriteString
    mov al,score
    call WriteDEC
    call crlf
    call crlf
    call File_handling
    call waitmsg
    exit
      
NoCollision:
    ret


CheckCollisionsWithGhosts_level2 ENDP

Player_CheckCollision_Up2 PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET Level2_maze1
    sub eax,3
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Up2 ENDP 

Player_CheckCollision_Down2 PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET Level2_maze1
    sub eax,1
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Down2 ENDP 

Player_CheckCollision_Left2 PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET Level2_maze1
    sub eax,2
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    sub esi,1

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Left2 ENDP 

Player_CheckCollision_Right2 PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET Level2_maze1
    sub eax,2
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    add esi,1

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Right2 ENDP 

Maze_Generation_Level2 PROC
    
    mov eax, yellow
    call SetTextColor
    ; Set up the maze
    mov dl,0
    mov dh,1
    call Gotoxy

    call crlf
    mov edx, OFFSET Level2_maze1
    call WriteString

    mov edx, OFFSET Level2_maze2
    call WriteString

    mov edx, OFFSET Level2_maze3
    call WriteString

    mov edx, OFFSET Level2_maze4
    call WriteString

    mov edx, OFFSET Level2_maze5
    call WriteString

    mov edx, OFFSET Level2_maze6
    call WriteString

    mov edx, OFFSET Level2_maze7
    call WriteString

    mov edx, OFFSET Level2_maze8
    call WriteString

    mov edx, OFFSET Level2_maze9
    call WriteString

    mov edx, OFFSET Level2_maze10
    call WriteString

    mov edx, OFFSET Level2_maze11
    call WriteString

    mov edx, OFFSET Level2_maze12
    call WriteString

    mov edx, OFFSET Level2_maze13
    call WriteString

    mov edx, OFFSET Level2_maze14
    call WriteString

    mov edx, OFFSET Level2_maze15
    call WriteString

    mov edx, OFFSET Level2_maze16
    call WriteString

    mov edx, OFFSET Level2_maze17
    call WriteString

    mov edx, OFFSET Level2_maze18
    call WriteString

    mov edx, OFFSET Level2_maze19
    call WriteString

    mov edx, OFFSET Level2_maze20
    call WriteString

    mov edx, OFFSET Level2_maze21
    call WriteString

    mov edx, OFFSET Level2_maze22
    call WriteString

    mov edx, OFFSET Level2_maze23
    call WriteString

    mov edx, OFFSET Level2_maze24
    call WriteString

    mov edx, OFFSET Level2_maze25
    call WriteString

    ret
Maze_Generation_Level2 ENDP

UpdateGhost1_Level2 PROC
 ; Clear the previous ghost position
    mov eax, white ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos_level2
    mov dh, ghostYPos_level2
    call Gotoxy
    mov al, " "
    call WriteChar

    ; Move the ghost horizontally within a fixed range
    inc ghostXPos_level2
    ; Check if the ghost reached the right boundary, if so, reset its position and move down
    cmp ghostXPos_level2, 40
    jl noBoundaryCross
    mov ghostXPos_level2, 10 ; Reset to the starting position
    ; Move the ghost downward by 10 units
    add ghostYPos_level2, 12
    ; Check if the ghost reached the bottom boundary, if so, reset its position and move up
    cmp ghostYPos_level2, 24 ; Adjust the bottom boundary as needed
    jl noBottomBoundaryCross
    mov ghostXPos_level2, 13
    mov ghostYPos_level2, 2 ; Reset to the original vertical position
    ; Move the ghost upward by 10 units
;    sub ghostYPos_level2, 10
    noBottomBoundaryCross:
    noBoundaryCross:

    ; Draw the ghost at its new position
    mov eax, magenta ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos_level2
    mov dh, ghostYPos_level2
    call Gotoxy
    mov al, ghostchar
    call WriteChar
    ret
UpdateGhost1_Level2 ENDP


UpdateGhost2_Level2 PROC
    ; Clear the previous position of the second ghost
    mov eax, white ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos2_level2
    mov dh, ghostYPos2_level2
    call Gotoxy
    mov al, " "
    call WriteChar

    ; Move the second ghost vertically within a fixed range
    inc ghostYPos2_level2
    ; Check if the second ghost reached the bottom boundary, if so, reset its position and move up
    cmp ghostYPos2_level2, 20 ; Adjust the bottom boundary as needed
    jl noBottomBoundaryCross
    mov ghostYPos2_level2, 8 ; Reset to the starting position
    noBottomBoundaryCross:

    ; Draw the second ghost at its new position
    mov eax, cyan ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos2_level2
    mov dh, ghostYPos2_level2
    call Gotoxy
    mov al, "G"
    call WriteChar

    ret
UpdateGhost2_Level2 ENDP

UpdateGhost3_Level2 PROC
 ; Clear the previous ghost position
    mov eax, lightred ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos3_level2
    mov dh, ghostYPos3_level2
    call Gotoxy
    mov al, " "
    call WriteChar

    ; Move the second ghost vertically within a fixed range
    inc ghostYPos3_level2
    ; Check if the second ghost reached the bottom boundary, if so, reset its position and move up
    cmp ghostYPos3_level2, 10 ; Adjust the bottom boundary as needed
    jl noBottomBoundaryCross
    mov ghostYPos3_level2, 2 ; Reset to the starting position
    noBottomBoundaryCross:

    ; Draw the ghost at its new position
    mov eax, lightred ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos3_level2
    mov dh, ghostYPos3_level2
    call Gotoxy
    mov al, ghostchar
    call WriteChar
    ret
UpdateGhost3_Level2 ENDP

DrawFruit PROC
    
    mov eax,yellow ;(red * 16)
    call SetTextColor
    mov dl,x_Fruit_Pos
    mov dh,y_Fruit_Pos
    call Gotoxy
    mov al,"F"
    call WriteChar
    ret
DrawFruit ENDP


CreateRandomFruit PROC
    labell:
    mov eax, 78
    call RandomRange
    mov x_Fruit_Pos, al
    add al, 1

    mov eax, 25
    call RandomRange
    add al,2
    mov y_Fruit_Pos, al

    call Fruit_CheckCollision_Above_Below
    cmp edx,1
    je labell
    call Fruit_CheckCollision_Left_Right

    cmp edx,1
    je labell
    call Fruit_CheckCollision_OnTop
    cmp edx,1
    je labell

    
    ret
CreateRandomFruit ENDP


Fruit_CheckCollision_Above_Below PROC

    movzx eax, y_Fruit_Pos
    movzx ecx, y_Fruit_Pos
    movzx ebx, x_Fruit_Pos

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,2
    sub eax, 0 
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,x_Fruit_Pos
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare 

    mov dl, "_"
    cmp [esi], dl
    je Compare 
    jmp NoCollision

    Compare:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected 
    jmp NoCollision

CollisionDetected:
    mov edx, 1 
    jmp EndCollisionCheck

NoCollision:
    mov edx, 0 

EndCollisionCheck:
    ret

Fruit_CheckCollision_Above_Below ENDP


Fruit_CheckCollision_Left_Right PROC
  

    movzx eax, y_Fruit_Pos
    movzx ecx, y_Fruit_Pos
    movzx ebx, x_Fruit_Pos

    mov esi, OFFSET Level2_maze1
    mov edi, OFFSET Level2_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,x_Fruit_Pos
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected 

    mov bl, x_Fruit_Pos
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected 
    jmp NoCollision

CollisionDetected:
    mov edx, 1 
    jmp EndCollisionCheck

NoCollision:
    mov edx, 0 

EndCollisionCheck:
    ret


Fruit_CheckCollision_Left_Right ENDP

Fruit_CheckCollision_OnTop PROC

    movzx eax, y_Fruit_Pos
    movzx ebx, x_Fruit_Pos

    mov esi, OFFSET Level2_maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, x_Fruit_Pos
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret
    
  
Fruit_CheckCollision_OnTop ENDP



;LEVEL3 PROCEDURES

CreateRandomCoin_level3 PROC
    labell:
    mov eax, 80
    call RandomRange
    mov xCoinPos, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos, al


    call Coin_CheckCollision_Above_Below_level3
    cmp edx,1
    je labell
    call Coin_CheckCollision_Left_Right_level3
    cmp edx,1
    je labell
    call Coin_CheckCollision_OnTop_level3
    cmp edx,1
    je labell


    ret
CreateRandomCoin_level3 ENDP

CreateRandomCoin2_level3 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_2, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_2, al

    call Coin2_CheckCollision_Above_Below_level3
    cmp edx,1
    je labell
    call Coin2_CheckCollision_Left_Right_level3
    cmp edx,1
    je labell
    call Coin2_CheckCollision_OnTop_level3
    cmp edx,1
    je labell
    ret
CreateRandomCoin2_level3 ENDP

CreateRandomCoin3_level3 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_3, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_3, al

    call Coin3_CheckCollision_Above_Below_level3
    cmp edx,1
    je labell
    call Coin3_CheckCollision_Left_Right_level3
    cmp edx,1
    je labell
    call Coin3_CheckCollision_OnTop_level3
    cmp edx,1
    je labell
    ret
CreateRandomCoin3_level3 ENDP

CreateRandomCoin4_level3 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_4, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_4, al

    call Coin4_CheckCollision_Above_Below_level3
    cmp edx,1
    je labell
    call Coin4_CheckCollision_Left_Right_level3
    cmp edx,1
    je labell
    call Coin4_CheckCollision_OnTop_level3
    cmp edx,1
    je labell
    ret
CreateRandomCoin4_level3 ENDP

CreateRandomCoin5_level3 PROC
    labell:

    mov eax, 80
    call RandomRange
    mov xCoinPos_5, al

    mov eax, 25
    call RandomRange
    add al,2
    mov yCoinPos_5, al

    call Coin5_CheckCollision_Above_Below_level3
    cmp edx,1
    je labell
    call Coin5_CheckCollision_Left_Right_level3
    cmp edx,1
    je labell
    call Coin5_CheckCollision_OnTop_level3
    cmp edx,1
    je labell
    ret
CreateRandomCoin5_level3 ENDP

Coin_CheckCollision_Above_Below_level3 PROC
    movzx eax, yCoinPos
    movzx ecx, yCoinPos
    movzx ebx, xCoinPos

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin_CheckCollision_Above_Below_level3 ENDP

Coin_CheckCollision_Left_Right_level3 PROC
  

    movzx eax, yCoinPos
    movzx ecx, yCoinPos
    movzx ebx, xCoinPos

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin_CheckCollision_Left_Right_level3 ENDP

Coin_CheckCollision_OnTop_level3 PROC

    movzx eax, yCoinPos
    movzx ebx, xCoinPos
    sub eax, 2
    mov esi, OFFSET Level3_maze1
    imul ecx, eax, 87
    add esi, ecx
    add esi, ebx

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret

Coin_CheckCollision_OnTop_level3 ENDP

;coin2

Coin2_CheckCollision_Above_Below_level3 PROC
    movzx eax, yCoinPos_2
    movzx ecx, yCoinPos_2
    movzx ebx, xCoinPos_2

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_2
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin2_CheckCollision_Above_Below_level3 ENDP

Coin2_CheckCollision_Left_Right_level3 PROC
  

    movzx eax, yCoinPos_2
    movzx ecx, yCoinPos_2
    movzx ebx, xCoinPos_2

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_2
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_2
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin2_CheckCollision_Left_Right_level3 ENDP

Coin2_CheckCollision_OnTop_level3 PROC

    movzx eax, yCoinPos_2
    movzx ebx, xCoinPos_2
    sub eax, 2
    mov esi, OFFSET Level3_maze1
    imul ecx, eax, 87
    add esi, ecx
    add esi, ebx

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret

Coin2_CheckCollision_OnTop_level3 ENDP

;coin3

Coin3_CheckCollision_Above_Below_level3 PROC
    movzx eax, yCoinPos_3
    movzx ecx, yCoinPos_3
    movzx ebx, xCoinPos_3

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_3
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin3_CheckCollision_Above_Below_level3 ENDP

Coin3_CheckCollision_Left_Right_level3 PROC
  

    movzx eax, yCoinPos_3
    movzx ecx, yCoinPos_3
    movzx ebx, xCoinPos_3

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_3
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_3
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin3_CheckCollision_Left_Right_level3 ENDP

Coin3_CheckCollision_OnTop_level3 PROC

    movzx eax, yCoinPos_3
    movzx ebx, xCoinPos_3
    sub eax, 2
    mov esi, OFFSET Level3_maze1
    imul ecx, eax, 87
    add esi, ecx
    add esi, ebx

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret

Coin3_CheckCollision_OnTop_level3 ENDP

;coin4

Coin4_CheckCollision_Above_Below_level3 PROC
    movzx eax, yCoinPos_4
    movzx ecx, yCoinPos_4
    movzx ebx, xCoinPos_4

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_4
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin4_CheckCollision_Above_Below_level3 ENDP

Coin4_CheckCollision_Left_Right_level3 PROC
  

    movzx eax, yCoinPos_4
    movzx ecx, yCoinPos_4
    movzx ebx, xCoinPos_4

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_4
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_4
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin4_CheckCollision_Left_Right_level3 ENDP

Coin4_CheckCollision_OnTop_level3 PROC

    movzx eax, yCoinPos_4
    movzx ebx, xCoinPos_4
    sub eax, 2
    mov esi, OFFSET Level3_maze1
    imul ecx, eax, 87
    add esi, ecx
    add esi, ebx

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret

Coin4_CheckCollision_OnTop_level3 ENDP

;coin5

Coin5_CheckCollision_Above_Below_level3 PROC
    movzx eax, yCoinPos_5
    movzx ecx, yCoinPos_5
    movzx ebx, xCoinPos_5

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_5
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin5_CheckCollision_Above_Below_level3 ENDP

Coin5_CheckCollision_Left_Right_level3 PROC
  

    movzx eax, yCoinPos_5
    movzx ecx, yCoinPos_5
    movzx ebx, xCoinPos_5

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,xCoinPos_5
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, xCoinPos_5
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Coin5_CheckCollision_Left_Right_level3 ENDP

Coin5_CheckCollision_OnTop_level3 PROC

    movzx eax, yCoinPos_5
    movzx ebx, xCoinPos_5
    sub eax, 2
    mov esi, OFFSET Level3_maze1
    imul ecx, eax, 87
    add esi, ecx
    add esi, ebx

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret

Coin5_CheckCollision_OnTop_level3 ENDP


Maze_Generation_Level3 PROC

 mov eax, yellow
    call SetTextColor
    ; Set up the maze
    mov dl,0
    mov dh,1
    call Gotoxy

    call crlf
    mov edx, OFFSET Level3_maze1
    call WriteString

    mov edx, OFFSET Level3_maze2
    call WriteString

    mov edx, OFFSET Level3_maze3
    call WriteString

    mov edx, OFFSET Level3_maze4
    call WriteString

    mov edx, OFFSET Level3_maze5
    call WriteString

    mov edx, OFFSET Level3_maze6
    call WriteString

    mov edx, OFFSET Level3_maze7
    call WriteString

    mov edx, OFFSET Level3_maze8
    call WriteString

    mov edx, OFFSET Level3_maze9
    call WriteString

    mov edx, OFFSET Level3_maze10
    call WriteString

    mov edx, OFFSET Level3_maze11
    call WriteString

    mov edx, OFFSET Level3_maze12
    call WriteString

    mov edx, OFFSET Level3_maze13
    call WriteString

    mov edx, OFFSET Level3_maze14
    call WriteString

    mov edx, OFFSET Level3_maze15
    call WriteString

    mov edx, OFFSET Level3_maze16
    call WriteString

    mov edx, OFFSET Level3_maze17
    call WriteString

    mov edx, OFFSET Level3_maze18
    call WriteString

    mov edx, OFFSET Level3_maze19
    call WriteString

    mov edx, OFFSET Level3_maze20
    call WriteString

    mov edx, OFFSET Level3_maze21
    call WriteString

    mov edx, OFFSET Level3_maze22
    call WriteString

    mov edx, OFFSET Level3_maze23
    call WriteString

    mov edx, OFFSET Level3_maze24
    call WriteString

    mov edx, OFFSET Level3_maze25
    call WriteString

    ret
Maze_Generation_Level3 ENDP

Player_CheckCollision_Up3 PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET Level3_maze1
    sub eax,3
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Up3 ENDP 

Player_CheckCollision_Down3 PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET Level3_maze1
    sub eax,1
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Down3 ENDP 

Player_CheckCollision_Left3 PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET Level3_maze1
    sub eax,2
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    sub esi,1

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Left3 ENDP 

Player_CheckCollision_Right3 PROC

    movzx eax,yPos
    movzx ebx,xPos

    mov esi, OFFSET Level3_maze1
    sub eax,2
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,xPos
    add esi,ebx

    add esi,1

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Player_CheckCollision_Right3 ENDP 

DrawGhost1_level3 PROC
   

    mov eax, magenta
    call SetTextColor
    mov dl, ghostXPos_level3
    mov dh, ghostYPos_level3
    call Gotoxy
    mov al, ghostChar
    call WriteChar

    
    ret
DrawGhost1_level3 ENDP

DrawGhost2_level3 PROC
   

    mov eax, brown
    call SetTextColor
    mov dl, ghostXPos2_level3
    mov dh, ghostYPos2_level3
    call Gotoxy
    mov al, ghostChar
    call WriteChar

    
    ret
DrawGhost2_level3 ENDP

DrawGhost3_level3 PROC
   

    mov eax, cyan
    call SetTextColor
    mov dl, ghostXPos3_level3
    mov dh, ghostYPos3_level3
    call Gotoxy
    mov al, ghostChar
    call WriteChar

    
    ret
DrawGhost3_level3 ENDP

DrawGhost4_level3 PROC
   

    mov eax, lightgreen
    call SetTextColor
    mov dl, ghostXPos4_level3
    mov dh, ghostYPos4_level3
    call Gotoxy
    mov al, ghostChar
    call WriteChar

    
    ret
DrawGhost4_level3 ENDP

DrawGhost5_level3 PROC
   

    mov eax, red
    call SetTextColor
    mov dl, ghostXPos5_level3
    mov dh, ghostYPos5_level3
    call Gotoxy
    mov al, ghostChar
    call WriteChar

    
    ret
DrawGhost5_level3 ENDP

UpdateGhost1_level3 PROC

    mov eax, white ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos_level3
    mov dh, ghostYPos_level3
    call Gotoxy
    mov al, " "
    call WriteChar

   ; Move the ghost horizontally within a fixed range
    inc ghostXPos_level3
    ; Check if the ghost reached the right boundary, if so, reset its position
    cmp ghostXPos_level3, 40 ; Adjust the boundary as needed
    jl noBoundaryCross
    mov ghostXPos_level3, 15 ; Adjust the starting position as needed
    noBoundaryCross:

    ; Draw the ghost at its new position
    mov eax, magenta ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos_level3
    mov dh, ghostYPos_level3
    call Gotoxy
    mov al, ghostchar
    call WriteChar
    ret
UpdateGhost1_level3 ENDP

UpdateGhost2_level3 PROC
 ; Clear the previous ghost position
    mov eax, white ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos2_level3
    mov dh, ghostYPos2_level3
    call Gotoxy
    mov al, " "
    call WriteChar

   ; Move the ghost horizontally within a fixed range
    inc ghostXPos2_level3
    ; Check if the ghost reached the right boundary, if so, reset its position
    cmp ghostXPos2_level3, 55 ; Adjust the boundary as needed
    jl noBoundaryCross
    mov ghostXPos2_level3, 30 ; Adjust the starting position as needed
    noBoundaryCross:

    ; Draw the ghost at its new position
    mov eax, magenta ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos2_level3
    mov dh, ghostYPos2_level3
    call Gotoxy
    mov al, ghostchar
    call WriteChar
    ret
UpdateGhost2_level3 ENDP

UpdateGhost3_level3 PROC
 ; Clear the previous ghost position
    mov eax, white ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos3_level3
    mov dh, ghostYPos3_level3
    call Gotoxy
    mov al, " "
    call WriteChar

   ; Move the ghost horizontally within a fixed range
    sub ghostXPos3_level3,1
    ; Check if the ghost reached the left boundary, if so, reset its position
    cmp ghostXPos3_level3, 30 ; Adjust the boundary as needed
    jg noBoundaryCross
    mov ghostXPos3_level3, 55 ; Adjust the starting position as needed
    noBoundaryCross:

    ; Draw the ghost at its new position
    mov eax, magenta ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos3_level3
    mov dh, ghostYPos3_level3
    call Gotoxy
    mov al, ghostchar
    call WriteChar
    ret
UpdateGhost3_level3 ENDP

UpdateGhost4_Level3 PROC
    ; Clear the previous position of the second ghost
    mov eax, lightgreen ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos4_level3
    mov dh, ghostYPos4_level3
    call Gotoxy
    mov al, " "
    call WriteChar

    ; Move the second ghost vertically within a fixed range
    inc ghostYPos4_level3
    ; Check if the second ghost reached the bottom boundary, if so, reset its position and move up
    cmp ghostYPos4_level3, 23 ; Adjust the bottom boundary as needed
    jl noBottomBoundaryCross
    mov ghostYPos4_level3, 12 ; Reset to the starting position
    noBottomBoundaryCross:

    ; Draw the second ghost at its new position
    mov eax, lightgreen ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos4_level3
    mov dh, ghostYPos4_level3
    call Gotoxy
    mov al, "G"
    call WriteChar

    ret
UpdateGhost4_Level3 ENDP

UpdateGhost5_Level3 PROC
     ; Clear the previous ghost position
    mov eax, red ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos5_level3
    mov dh, ghostYPos5_level3
    call Gotoxy
    mov al, " "
    call WriteChar

    ; Calculate direction towards the player
    mov al, xPos
    sub al, ghostXPos5_level3
    mov bl, yPos
    sub bl, ghostYPos5_level3
    
    ; Adjust the sign of the movement based on player's position
    cmp al, 0
    jl moveLeft
    jg moveRight

    cmp bl, 0
    jl moveUp
    jg moveDown

moveLeft:
    add al,1
    call Ghost_CheckCollision_Left3
    cmp edx,1
    je collisionDetected
    ; Move the ghost towards the player (left)
    sub ghostXPos5_level3, 1
    jmp updateAndDrawGhost

moveRight:
    sub al,1
    call Ghost_CheckCollision_Right3
    cmp edx,1
    je collisionDetected
    ; Move the ghost towards the player (right)
    add ghostXPos5_level3, 1
    jmp updateAndDrawGhost

moveUp:
    call Ghost_CheckCollision_Up3
    cmp edx,1
    je collisionDetected
    ; Move the ghost towards the player (up)
    sub ghostYPos5_level3, 1
    jmp updateAndDrawGhost

moveDown:
    call Ghost_CheckCollision_Down3
    cmp edx,1
    je collisionDetected
    ; Move the ghost towards the player (down)
    add ghostYPos5_level3, 1
 
 collisionDetected:
 call DrawGhost5_level3
 jmp updateAndDrawGhost

 updateAndDrawGhost:
    ; Draw the ghost at its new position
    mov eax, red ; Change color as needed
    call SetTextColor
    mov dl, ghostXPos5_level3
    mov dh, ghostYPos5_level3
    call Gotoxy
    mov al, ghostchar
    call WriteChar
    ret
UpdateGhost5_Level3 ENDP

CalculateDistance PROC
    ; Calculate squared distance between two points
    ; (x1, y1) and (x2, y2) without using square root
    ; Result is stored in EAX
    mov eax, ecx ; Copy the x-coordinate difference to EAX
    imul eax, eax ; Square the x-coordinate difference
    mov edx, ebx ; Copy the y-coordinate difference to EDX
    imul edx, edx ; Square the y-coordinate difference
    add eax, edx ; Add the squared x and y differences
    ret
CalculateDistance ENDP

Ghost_CheckCollision_Up3 PROC

    movzx eax,ghostYPos5_level3
    movzx ebx,ghostXPos5_level3

    mov esi, OFFSET Level3_maze1
    sub eax,3
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,ghostXPos5_level3
    add esi,ebx

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Ghost_CheckCollision_Up3 ENDP 

Ghost_CheckCollision_Down3 PROC

    movzx eax,ghostYPos5_level3
    movzx ebx,ghostXPos5_level3

    mov esi, OFFSET Level3_maze1
    sub eax,1
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,ghostXPos5_level3
    add esi,ebx

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Ghost_CheckCollision_Down3 ENDP 

Ghost_CheckCollision_Left3 PROC

    movzx eax,ghostYPos5_level3
    movzx ebx,ghostXPos5_level3

    mov esi, OFFSET Level3_maze1
    sub eax,2
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,ghostXPos5_level3
    add esi,ebx

    sub esi,1

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Ghost_CheckCollision_Left3 ENDP 

Ghost_CheckCollision_Right3 PROC

    movzx eax,ghostYPos5_level3
    movzx ebx,ghostXPos5_level3

    mov esi, OFFSET Level3_maze1
    sub eax,2
    mov ebx,87
    mul ebx
    add esi,eax

    movzx ebx,ghostXPos5_level3
    add esi,ebx

    add esi,1

    mov dl,"|"
    cmp[esi],dl
    je collision

    mov dl,"_"
    cmp[esi],dl
    je collision

    mov edx,0
    jmp endMaze

    collision:
    mov edx,1

    endMaze:

    ret
Ghost_CheckCollision_Right3 ENDP 

CheckCollisionsWithGhosts_level3 PROC
    

    ; Calculate squared distance between player and first ghost
    mov al, ghostXPos_level3
    sub al, xPos
    imul eax, eax
    mov bl, ghostYPos_level3
    sub bl, yPos
    imul ebx, ebx
    add eax, ebx
    ; eax now contains the squared distance

    ; Compare squared distance with threshold 
    mov ebx, 1  ; threshold
    cmp eax, ebx
    je PlayerHitByGhost  ; Jump if the player is hit by the first ghost

    ; Repeat the process for the second ghost
    mov eax,0
    mov ebx,0
    ; Calculate squared distance between player and second ghost
    mov al, ghostXPos2_level3
    sub al, xPos
    imul eax, eax
    mov bl, ghostYPos2_level3
    sub bl, yPos
    imul ebx, ebx
    add eax, ebx

    mov ebx, 1 
    cmp eax, ebx
    je PlayerHitByGhost  ; Jump if the player is hit by the second ghost

    ; Repeat the process for the third ghost
    mov eax,0
    mov ebx,0
    ; Calculate squared distance between player and second ghost
    mov al, ghostXPos3_level3
    sub al, xPos
    imul eax, eax
    mov bl, ghostYPos3_level3
    sub bl, yPos
    imul ebx, ebx
    add eax, ebx

    mov ebx, 1 
    cmp eax, ebx
    je PlayerHitByGhost  ; Jump if the player is hit by the second ghost

    ; Repeat the process for the fourth ghost
    mov eax,0
    mov ebx,0
    ; Calculate squared distance between player and second ghost
    mov al, ghostXPos4_level3
    sub al, xPos
    imul eax, eax
    mov bl, ghostYPos4_level3
    sub bl, yPos
    imul ebx, ebx
    add eax, ebx

    mov ebx, 1 
    cmp eax, ebx
    je PlayerHitByGhost  ; Jump if the player is hit by the second ghost


    ; No collision with any ghosts
    jmp NoCollision
    

PlayerHitByGhost:

    ; Player hit by the first ghost
    dec lives
    cmp lives, 0
    je gameOver

    jmp NoCollision

    gameOver:
    call Clrscr

    mov dl,32
    mov dh,10
    call Gotoxy
    mov edx, OFFSET GameOverrr
    call WriteString
    call crlf
     mov dl,32
    mov dh,12
    call Gotoxy
    mov edx, OFFSET Names
    call WriteString
    mov edx, OFFSET playerName
    call writeString
    call crlf
     mov dl,32
    mov dh,14
    call Gotoxy
    mov edx,OFFSET strScore
    call WriteString
    mov al,score
    call WriteDEC
    call crlf
    call crlf
    call File_handling
    call waitmsg
    exit
      
NoCollision:
    ret

CheckCollisionsWithGhosts_level3 ENDP

Fruit_CheckCollision_Above_Below_level3 PROC
    movzx eax, y_Fruit_Pos
    movzx ecx, y_Fruit_Pos
    movzx ebx, x_Fruit_Pos

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,3
    sub eax, 1
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,x_Fruit_Pos
    add esi,ebx
    add edi,ebx

    mov dl, "|"
    cmp [esi], dl
    je Compare2 

    mov dl, "_"
    cmp [esi], dl
    je Compare2 
    jmp NoCollision2

    Compare2:
     mov dl, "|"
    cmp [edi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [edi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Fruit_CheckCollision_Above_Below_level3 ENDP


Fruit_CheckCollision_Left_Right_level3 PROC
  

    movzx eax, y_Fruit_Pos
    movzx ecx, y_Fruit_Pos
    movzx ebx, x_Fruit_Pos

    mov esi, OFFSET Level3_maze1
    mov edi, OFFSET Level3_maze1

    sub ecx,2
    sub eax, 2
    mov ebx,87
    imul eax, ebx
    imul ecx,ebx
    add esi, eax
    add edi,ecx


    movzx ebx,x_Fruit_Pos
    add esi,ebx
    add edi,ebx
    dec esi
    inc edi

    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 

    mov bl, x_Fruit_Pos
    add esi, 4 
    mov dl, "|"
    cmp [esi], dl
    je CollisionDetected2 

    mov dl, "_"
    cmp [esi], dl
    je CollisionDetected2 
    jmp NoCollision2

CollisionDetected2:
    mov edx, 1 
    jmp EndCollisionCheck2

NoCollision2:
    mov edx, 0 

EndCollisionCheck2:
    ret
Fruit_CheckCollision_Left_Right_level3 ENDP

Fruit_CheckCollision_OnTop_level3 PROC

     movzx eax, y_Fruit_Pos
    movzx ebx, x_Fruit_Pos

    mov esi, OFFSET Level3_maze1

    sub eax, 2
    mov ebx, 87
    imul eax, ebx
    add esi, eax

    movzx ebx, x_Fruit_Pos
    add esi, ebx

    mov dl, "|"
    cmp [esi], dl
    je Maze
    mov dl, "_"
    cmp [esi], dl
    je Maze
    mov edx, 0
    jmp endMaze

    Maze:
    mov edx, 1
    
    endMaze:
    ret
    

Fruit_CheckCollision_OnTop_level3 ENDP


END main
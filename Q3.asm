;32 bit multiplication

.model tiny
.code

mov ax,04H
mov bx,02H

mul bl

DISP PROC

PUSH CX
MOV CL, 4
MOv CH, 4

D1:
  ROL AX, CL
  PUSH AX
  AND AL, 0FH
  ADD AL , 30H
  CMP AL, '9'

  JBE D2
  ADD AL , 7H

D2:
  MOV AH, 02H
  MOV DL, AL
  INT 21H
  POP AX
  DEC CH
  JNZ D1
  POP CX
  RET
  DISP ENDP
.EXIT
End
